//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_changes_severity.g.dart';

/// Severity before and after
///
/// Properties:
/// * [before]
/// * [after]
/// * [changed]
@BuiltValue()
abstract class SituationChangesSeverity
    implements
        Built<SituationChangesSeverity, SituationChangesSeverityBuilder> {
  @BuiltValueField(wireName: r'before')
  Severity? get before;
  // enum beforeEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'after')
  Severity get after;
  // enum afterEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'changed')
  bool get changed;

  SituationChangesSeverity._();

  factory SituationChangesSeverity([
    void updates(SituationChangesSeverityBuilder b),
  ]) = _$SituationChangesSeverity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationChangesSeverityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationChangesSeverity> get serializer =>
      _$SituationChangesSeveritySerializer();
}

class _$SituationChangesSeveritySerializer
    implements PrimitiveSerializer<SituationChangesSeverity> {
  @override
  final Iterable<Type> types = const [
    SituationChangesSeverity,
    _$SituationChangesSeverity,
  ];

  @override
  final String wireName = r'SituationChangesSeverity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationChangesSeverity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    yield r'after';
    yield serializers.serialize(
      object.after,
      specifiedType: const FullType(Severity),
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
    SituationChangesSeverity object, {
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
    required SituationChangesSeverityBuilder result,
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
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'after':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
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
  SituationChangesSeverity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationChangesSeverityBuilder();
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
