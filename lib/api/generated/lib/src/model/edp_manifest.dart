//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_stream.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_source_info.dart';
import 'package:foresignal_api/src/model/edp_transport.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_manifest.g.dart';

/// Self-description of an EDP provider (docs/External-Data-Protocol.md §2). Stream ids must be unique and each layer stream must carry feature or event items (checked at registration). Unknown fields are ignored at every level (forward compatibility within 1.x).
///
/// Properties:
/// * [protocol] - foresignal-edp/1.N; N must not exceed the highest minor the instance supports (GET /v1/external/protocol), else PROTOCOL_UNSUPPORTED
/// * [source_]
/// * [transport]
/// * [streams]
@BuiltValue()
abstract class EdpManifest implements Built<EdpManifest, EdpManifestBuilder> {
  /// foresignal-edp/1.N; N must not exceed the highest minor the instance supports (GET /v1/external/protocol), else PROTOCOL_UNSUPPORTED
  @BuiltValueField(wireName: r'protocol')
  String get protocol;

  @BuiltValueField(wireName: r'source')
  EdpSourceInfo get source_;

  @BuiltValueField(wireName: r'transport')
  EdpTransport get transport;

  @BuiltValueField(wireName: r'streams')
  BuiltList<EdpStream> get streams;

  EdpManifest._();

  factory EdpManifest([void updates(EdpManifestBuilder b)]) = _$EdpManifest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpManifestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpManifest> get serializer => _$EdpManifestSerializer();
}

class _$EdpManifestSerializer implements PrimitiveSerializer<EdpManifest> {
  @override
  final Iterable<Type> types = const [EdpManifest, _$EdpManifest];

  @override
  final String wireName = r'EdpManifest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'protocol';
    yield serializers.serialize(
      object.protocol,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(EdpSourceInfo),
    );
    yield r'transport';
    yield serializers.serialize(
      object.transport,
      specifiedType: const FullType(EdpTransport),
    );
    yield r'streams';
    yield serializers.serialize(
      object.streams,
      specifiedType: const FullType(BuiltList, [FullType(EdpStream)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdpManifestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'protocol':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.protocol = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpSourceInfo),
                  )
                  as EdpSourceInfo;
          result.source_.replace(valueDes);
          break;
        case r'transport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpTransport),
                  )
                  as EdpTransport;
          result.transport.replace(valueDes);
          break;
        case r'streams':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(EdpStream),
                    ]),
                  )
                  as BuiltList<EdpStream>;
          result.streams.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpManifest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpManifestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
