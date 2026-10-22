//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_suggest_request_hints.g.dart';

/// MappingSuggestRequestHints
///
/// Properties:
/// * [kind]
/// * [description]
/// * [sourceId]
@BuiltValue()
abstract class MappingSuggestRequestHints
    implements
        Built<MappingSuggestRequestHints, MappingSuggestRequestHintsBuilder> {
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  MappingSuggestRequestHints._();

  factory MappingSuggestRequestHints(
          [void updates(MappingSuggestRequestHintsBuilder b)]) =
      _$MappingSuggestRequestHints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingSuggestRequestHintsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingSuggestRequestHints> get serializer =>
      _$MappingSuggestRequestHintsSerializer();
}

class _$MappingSuggestRequestHintsSerializer
    implements PrimitiveSerializer<MappingSuggestRequestHints> {
  @override
  final Iterable<Type> types = const [
    MappingSuggestRequestHints,
    _$MappingSuggestRequestHints
  ];

  @override
  final String wireName = r'MappingSuggestRequestHints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingSuggestRequestHints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingSuggestRequestHints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MappingSuggestRequestHintsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingSuggestRequestHints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingSuggestRequestHintsBuilder();
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
