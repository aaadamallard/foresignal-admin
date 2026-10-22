//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_changes_area.g.dart';

/// Area of the situation geometry
///
/// Properties:
/// * [beforeKm2]
/// * [afterKm2]
/// * [deltaKm2]
@BuiltValue()
abstract class SituationChangesArea
    implements Built<SituationChangesArea, SituationChangesAreaBuilder> {
  @BuiltValueField(wireName: r'beforeKm2')
  num? get beforeKm2;

  @BuiltValueField(wireName: r'afterKm2')
  num? get afterKm2;

  @BuiltValueField(wireName: r'deltaKm2')
  num? get deltaKm2;

  SituationChangesArea._();

  factory SituationChangesArea([void updates(SituationChangesAreaBuilder b)]) =
      _$SituationChangesArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationChangesAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationChangesArea> get serializer =>
      _$SituationChangesAreaSerializer();
}

class _$SituationChangesAreaSerializer
    implements PrimitiveSerializer<SituationChangesArea> {
  @override
  final Iterable<Type> types = const [
    SituationChangesArea,
    _$SituationChangesArea,
  ];

  @override
  final String wireName = r'SituationChangesArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationChangesArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.beforeKm2 != null) {
      yield r'beforeKm2';
      yield serializers.serialize(
        object.beforeKm2,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.afterKm2 != null) {
      yield r'afterKm2';
      yield serializers.serialize(
        object.afterKm2,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.deltaKm2 != null) {
      yield r'deltaKm2';
      yield serializers.serialize(
        object.deltaKm2,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationChangesArea object, {
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
    required SituationChangesAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'beforeKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.beforeKm2 = valueDes;
          break;
        case r'afterKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.afterKm2 = valueDes;
          break;
        case r'deltaKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.deltaKm2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationChangesArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationChangesAreaBuilder();
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
