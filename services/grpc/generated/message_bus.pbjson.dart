///
//  Generated code. Do not modify.
//  source: message_bus.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use clientUpdateDescriptor instead')
const ClientUpdate$json = const {
  '1': 'ClientUpdate',
  '2': const [
    const {'1': 'pressedKeys', '3': 1, '4': 1, '5': 5, '10': 'pressedKeys'},
  ],
};

/// Descriptor for `ClientUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientUpdateDescriptor = $convert.base64Decode(
    'CgxDbGllbnRVcGRhdGUSIAoLcHJlc3NlZEtleXMYASABKAVSC3ByZXNzZWRLZXlz');
@$core.Deprecated('Use gameUpdateDescriptor instead')
const GameUpdate$json = const {
  '1': 'GameUpdate',
  '2': const [
    const {'1': 'health', '3': 1, '4': 1, '5': 5, '10': 'health'},
  ],
};

/// Descriptor for `GameUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameUpdateDescriptor =
    $convert.base64Decode('CgpHYW1lVXBkYXRlEhYKBmhlYWx0aBgBIAEoBVIGaGVhbHRo');
