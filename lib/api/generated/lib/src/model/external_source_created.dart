//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/external_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_created.g.dart';

/// A registered source and its ingest key (shown once)
///
/// Properties:
/// * [source_]
/// * [ingestKey] - eik_… (shown once)
@BuiltValue()
abstract class ExternalSourceCreated
    implements Built<ExternalSourceCreated, ExternalSourceCreatedBuilder> {
  @BuiltValueField(wireName: r'source')
  ExternalSource get source_;

  /// eik_… (shown once)
  @BuiltValueField(wireName: r'ingestKey')
  String get ingestKey;

  ExternalSourceCreated._();

  factory ExternalSourceCreated([
    void updates(ExternalSourceCreatedBuilder b),
  ]) = _$ExternalSourceCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourceCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourceCreated> get serializer =>
      _$ExternalSourceCreatedSerializer();
}

class _$ExternalSourceCreatedSerializer
    implements PrimitiveSerializer<ExternalSourceCreated> {
  @override
  final Iterable<Type> types = const [
    ExternalSourceCreated,
    _$ExternalSourceCreated,
  ];

  @override
  final String wireName = r'ExternalSourceCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourceCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ExternalSource),
    );
    yield r'ingestKey';
    yield serializers.serialize(
      object.ingestKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourceCreated object, {
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
    required ExternalSourceCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExternalSource),
                  )
                  as ExternalSource;
          result.source_.replace(valueDes);
          break;
        case r'ingestKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ingestKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSourceCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourceCreatedBuilder();
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
