//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/situation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_changes_status.g.dart';

/// Status before and after
///
/// Properties:
/// * [before]
/// * [after]
/// * [changed]
@BuiltValue()
abstract class SituationChangesStatus
    implements Built<SituationChangesStatus, SituationChangesStatusBuilder> {
  @BuiltValueField(wireName: r'before')
  SituationStatus? get before;
  // enum beforeEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'after')
  SituationStatus get after;
  // enum afterEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'changed')
  bool get changed;

  SituationChangesStatus._();

  factory SituationChangesStatus([
    void updates(SituationChangesStatusBuilder b),
  ]) = _$SituationChangesStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationChangesStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationChangesStatus> get serializer =>
      _$SituationChangesStatusSerializer();
}

class _$SituationChangesStatusSerializer
    implements PrimitiveSerializer<SituationChangesStatus> {
  @override
  final Iterable<Type> types = const [
    SituationChangesStatus,
    _$SituationChangesStatus,
  ];

  @override
  final String wireName = r'SituationChangesStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationChangesStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType.nullable(SituationStatus),
      );
    }
    yield r'after';
    yield serializers.serialize(
      object.after,
      specifiedType: const FullType(SituationStatus),
    );
    yield r'changed';
    yield serializers.serialize(
      object.changed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationChangesStatus object, {
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
    required SituationChangesStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'before':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SituationStatus),
                  )
                  as SituationStatus?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'after':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationStatus),
                  )
                  as SituationStatus;
          result.after = valueDes;
          break;
        case r'changed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.changed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationChangesStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationChangesStatusBuilder();
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
