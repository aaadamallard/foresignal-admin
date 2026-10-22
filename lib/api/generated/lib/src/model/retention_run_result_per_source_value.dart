//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_run_result_per_source_value.g.dart';

/// RetentionRunResultPerSourceValue
///
/// Properties:
/// * [versionsDeleted]
/// * [floorSeq]
@BuiltValue()
abstract class RetentionRunResultPerSourceValue
    implements
        Built<RetentionRunResultPerSourceValue,
            RetentionRunResultPerSourceValueBuilder> {
  @BuiltValueField(wireName: r'versionsDeleted')
  int? get versionsDeleted;

  @BuiltValueField(wireName: r'floorSeq')
  int? get floorSeq;

  RetentionRunResultPerSourceValue._();

  factory RetentionRunResultPerSourceValue(
          [void updates(RetentionRunResultPerSourceValueBuilder b)]) =
      _$RetentionRunResultPerSourceValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionRunResultPerSourceValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionRunResultPerSourceValue> get serializer =>
      _$RetentionRunResultPerSourceValueSerializer();
}

class _$RetentionRunResultPerSourceValueSerializer
    implements PrimitiveSerializer<RetentionRunResultPerSourceValue> {
  @override
  final Iterable<Type> types = const [
    RetentionRunResultPerSourceValue,
    _$RetentionRunResultPerSourceValue
  ];

  @override
  final String wireName = r'RetentionRunResultPerSourceValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionRunResultPerSourceValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.versionsDeleted != null) {
      yield r'versionsDeleted';
      yield serializers.serialize(
        object.versionsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.floorSeq != null) {
      yield r'floorSeq';
      yield serializers.serialize(
        object.floorSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionRunResultPerSourceValue object, {
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
    required RetentionRunResultPerSourceValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'versionsDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versionsDeleted = valueDes;
          break;
        case r'floorSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.floorSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionRunResultPerSourceValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionRunResultPerSourceValueBuilder();
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
