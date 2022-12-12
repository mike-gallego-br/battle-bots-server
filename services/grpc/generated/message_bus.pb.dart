///
//  Generated code. Do not modify.
//  source: message_bus.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ClientUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ClientUpdate',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pressedKeys',
        $pb.PbFieldType.O3,
        protoName: 'pressedKeys')
    ..hasRequiredFields = false;

  ClientUpdate._() : super();
  factory ClientUpdate({
    $core.int? pressedKeys,
  }) {
    final _result = create();
    if (pressedKeys != null) {
      _result.pressedKeys = pressedKeys;
    }
    return _result;
  }
  factory ClientUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientUpdate clone() => ClientUpdate()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientUpdate copyWith(void Function(ClientUpdate) updates) =>
      super.copyWith((message) => updates(message as ClientUpdate))
          as ClientUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientUpdate create() => ClientUpdate._();
  ClientUpdate createEmptyInstance() => create();
  static $pb.PbList<ClientUpdate> createRepeated() =>
      $pb.PbList<ClientUpdate>();
  @$core.pragma('dart2js:noInline')
  static ClientUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientUpdate>(create);
  static ClientUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pressedKeys => $_getIZ(0);
  @$pb.TagNumber(1)
  set pressedKeys($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPressedKeys() => $_has(0);
  @$pb.TagNumber(1)
  void clearPressedKeys() => clearField(1);
}

class GameUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GameUpdate',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'health',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GameUpdate._() : super();
  factory GameUpdate({
    $core.int? health,
  }) {
    final _result = create();
    if (health != null) {
      _result.health = health;
    }
    return _result;
  }
  factory GameUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GameUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GameUpdate clone() => GameUpdate()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GameUpdate copyWith(void Function(GameUpdate) updates) =>
      super.copyWith((message) => updates(message as GameUpdate))
          as GameUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameUpdate create() => GameUpdate._();
  GameUpdate createEmptyInstance() => create();
  static $pb.PbList<GameUpdate> createRepeated() => $pb.PbList<GameUpdate>();
  @$core.pragma('dart2js:noInline')
  static GameUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GameUpdate>(create);
  static GameUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get health => $_getIZ(0);
  @$pb.TagNumber(1)
  set health($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHealth() => $_has(0);
  @$pb.TagNumber(1)
  void clearHealth() => clearField(1);
}
