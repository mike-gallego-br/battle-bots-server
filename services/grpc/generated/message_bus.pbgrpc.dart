///
//  Generated code. Do not modify.
//  source: message_bus.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'message_bus.pb.dart' as $0;
export 'message_bus.pb.dart';

class GameUpdatesClient extends $grpc.Client {
  static final _$updateHealth =
      $grpc.ClientMethod<$0.ClientUpdate, $0.GameUpdate>(
          '/GameUpdates/UpdateHealth',
          ($0.ClientUpdate value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GameUpdate.fromBuffer(value));

  GameUpdatesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GameUpdate> updateHealth($0.ClientUpdate request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateHealth, request, options: options);
  }
}

abstract class GameUpdatesServiceBase extends $grpc.Service {
  $core.String get $name => 'GameUpdates';

  GameUpdatesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClientUpdate, $0.GameUpdate>(
        'UpdateHealth',
        updateHealth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ClientUpdate.fromBuffer(value),
        ($0.GameUpdate value) => value.writeToBuffer()));
  }

  $async.Future<$0.GameUpdate> updateHealth_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ClientUpdate> request) async {
    return updateHealth(call, await request);
  }

  $async.Future<$0.GameUpdate> updateHealth(
      $grpc.ServiceCall call, $0.ClientUpdate request);
}
