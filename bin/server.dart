import 'dart:convert';
import 'dart:io';

import 'package:shelf_plus/shelf_plus.dart';

void main() {
  var env = Platform.environment;

  int port = int.tryParse(env['PORT'] ?? '8080') ?? 8080;
  print(port);
  shelfRun(
    init,
    defaultBindAddress: '0.0.0.0',
    defaultBindPort: port,
  );
}

Handler init() {
  var app = Router().plus;

  // Track connected clients
  var users = <String, WebSocketSession>{};

  int counter = 1;

  var counterList = <int>[];

  // Handle websocket connections
  app.get(
      '/ws',
      () => WebSocketSession(
            onOpen: (ws) async {
              if (!users.entries.contains(ws)) {
                users[counter.toString()] = ws;
                final encodedString =
                    json.encode({'selected_client': counter.toString()});
                users[counter.toString()]!.send(encodedString.codeUnits);

                counterList.add(counter);
                counter++;
              }

              for (var user in users.entries) {
                final encodedString = json.encode({
                  'counter': users.length,
                  'clients': counterList,
                  'type': 'joined',
                });

                user.value.send(encodedString.codeUnits);
                print(counterList);
              }
            },
            onClose: (ws) {
              final deletedKey = users.entries
                  .firstWhere((element) => element.value == ws)
                  .key;
              counterList.removeWhere(
                  (counterId) => counterId.toString() == deletedKey);
              users.removeWhere((key, value) => value == ws);

              if (users.isEmpty) {
                print(counterList);
              }

              for (var user in users.entries) {
                print('closed');
                final encodedString = json.encode({
                  'counter': users.length,
                  'clients': counterList,
                  'type': 'closed',
                });

                user.value.send(encodedString.codeUnits);
              }
            },
            onMessage: (ws, message) {
              if (!(message is String)) {
                final json = jsonDecode(String.fromCharCodes(message));
                switch (json['type']) {
                  case 'deploy':
                    for (var user in users.entries) {
                      final encodedString = jsonEncode({
                        'type': json['type'],
                        'client': json['client'],
                        'values_x': json['values_x'],
                        'values_y': json['values_y'],
                      });

                      user.value.send(encodedString.codeUnits);
                    }
                    break;
                  case 'move':
                    for (var user in users.entries) {
                      final encodedString = jsonEncode({
                        'type': json['type'],
                        'client': json['client'],
                        'movement_x': json['movement_x'],
                        'movement_y': json['movement_y'],
                        'speed': json['speed'],
                        'delta': json['delta'],
                      });

                      user.value.send(encodedString.codeUnits);
                    }
                    break;
                  default:
                    break;
                }
              } else {
                for (var user in users.entries) {
                  final encodedString = json.encode({
                    'message': message,
                    'sender': users.entries
                        .where((user) => user.value == ws)
                        .first
                        .key,
                  });
                  user.value.send(encodedString);
                }
              }
            },
            onError: (ws, error) {
              print(error);
            },
          ));

  return app;
}
