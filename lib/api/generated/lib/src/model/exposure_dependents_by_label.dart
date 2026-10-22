//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_dependents_by_label.g.dart';

/// Dependent counts by path label
///
/// Properties:
/// * [confirmed]
/// * [likely]
/// * [possible]
/// * [speculative]
@BuiltValue()
abstract class ExposureDependentsByLabel
    implements
        Built<ExposureDependentsByLabel, ExposureDependentsByLabelBuilder> {
  @BuiltValueField(wireName: r'confirmed')
  int? get confirmed;

  @BuiltValueField(wireName: r'likely')
  int? get likely;

  @BuiltValueField(wireName: r'possible')
  int? get possible;

  @BuiltValueField(wireName: r'speculative')
  int? get speculative;

  ExposureDependentsByLabel._();

  factory ExposureDependentsByLabel([
    void updates(ExposureDependentsByLabelBuilder b),
  ]) = _$ExposureDependentsByLabel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureDependentsByLabelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureDependentsByLabel> get serializer =>
      _$ExposureDependentsByLabelSerializer();
}

class _$ExposureDependentsByLabelSerializer
    implements PrimitiveSerializer<ExposureDependentsByLabel> {
  @override
  final Iterable<Type> types = const [
    ExposureDependentsByLabel,
    _$ExposureDependentsByLabel,
  ];

  @override
  final String wireName = r'ExposureDependentsByLabel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureDependentsByLabel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType(int),
      );
    }
    if (object.likely != null) {
      yield r'likely';
      yield serializers.serialize(
        object.likely,
        specifiedType: const FullType(int),
      );
    }
    if (object.possible != null) {
      yield r'possible';
      yield serializers.serialize(
        object.possible,
        specifiedType: const FullType(int),
      );
    }
    if (object.speculative != null) {
      yield r'speculative';
      yield serializers.serialize(
        object.speculative,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureDependentsByLabel object, {
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
    required ExposureDependentsByLabelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.confirmed = valueDes;
          break;
        case r'likely':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.likely = valueDes;
          break;
        case r'possible':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.possible = valueDes;
          break;
        case r'speculative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.speculative = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureDependentsByLabel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureDependentsByLabelBuilder();
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
