//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_media_meta.g.dart';

/// Metadata part of a remote media upload
///
/// Properties:
/// * [passId] - satellite-pass externalId to attach to; else the 049 join rule applies
/// * [composite]
/// * [timestamp]
/// * [satellite]
@BuiltValue()
abstract class RemoteMediaMeta
    implements Built<RemoteMediaMeta, RemoteMediaMetaBuilder> {
  /// satellite-pass externalId to attach to; else the 049 join rule applies
  @BuiltValueField(wireName: r'passId')
  String? get passId;

  @BuiltValueField(wireName: r'composite')
  String get composite;

  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  @BuiltValueField(wireName: r'satellite')
  String get satellite;

  RemoteMediaMeta._();

  factory RemoteMediaMeta([void updates(RemoteMediaMetaBuilder b)]) =
      _$RemoteMediaMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemoteMediaMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemoteMediaMeta> get serializer =>
      _$RemoteMediaMetaSerializer();
}

class _$RemoteMediaMetaSerializer
    implements PrimitiveSerializer<RemoteMediaMeta> {
  @override
  final Iterable<Type> types = const [RemoteMediaMeta, _$RemoteMediaMeta];

  @override
  final String wireName = r'RemoteMediaMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemoteMediaMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passId != null) {
      yield r'passId';
      yield serializers.serialize(
        object.passId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'composite';
    yield serializers.serialize(
      object.composite,
      specifiedType: const FullType(String),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'satellite';
    yield serializers.serialize(
      object.satellite,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RemoteMediaMeta object, {
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
    required RemoteMediaMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.passId = valueDes;
          break;
        case r'composite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.composite = valueDes;
          break;
        case r'timestamp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.timestamp = valueDes;
          break;
        case r'satellite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.satellite = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemoteMediaMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoteMediaMetaBuilder();
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
