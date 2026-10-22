//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/impact_rate_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precision_components_inner.g.dart';

/// Precision for one producer
///
/// Properties:
/// * [component]
/// * [key] - Detector, recipe or linker id and version
/// * [confirmed]
/// * [rejected]
/// * [duplicate]
/// * [needsReview] - Counted as unlabelled
/// * [labelled]
/// * [precision]
/// * [interval]
@BuiltValue()
abstract class PrecisionComponentsInner
    implements
        Built<PrecisionComponentsInner, PrecisionComponentsInnerBuilder> {
  @BuiltValueField(wireName: r'component')
  PrecisionComponentsInnerComponentEnum get component;
  // enum componentEnum {  finding,  intel-event,  situation,  precursor-active,  };

  /// Detector, recipe or linker id and version
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'confirmed')
  int get confirmed;

  @BuiltValueField(wireName: r'rejected')
  int get rejected;

  @BuiltValueField(wireName: r'duplicate')
  int? get duplicate;

  /// Counted as unlabelled
  @BuiltValueField(wireName: r'needsReview')
  int? get needsReview;

  @BuiltValueField(wireName: r'labelled')
  int get labelled;

  @BuiltValueField(wireName: r'precision')
  num? get precision;

  @BuiltValueField(wireName: r'interval')
  ImpactRateInterval? get interval;

  PrecisionComponentsInner._();

  factory PrecisionComponentsInner([
    void updates(PrecisionComponentsInnerBuilder b),
  ]) = _$PrecisionComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecisionComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecisionComponentsInner> get serializer =>
      _$PrecisionComponentsInnerSerializer();
}

class _$PrecisionComponentsInnerSerializer
    implements PrimitiveSerializer<PrecisionComponentsInner> {
  @override
  final Iterable<Type> types = const [
    PrecisionComponentsInner,
    _$PrecisionComponentsInner,
  ];

  @override
  final String wireName = r'PrecisionComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecisionComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'component';
    yield serializers.serialize(
      object.component,
      specifiedType: const FullType(PrecisionComponentsInnerComponentEnum),
    );
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'confirmed';
    yield serializers.serialize(
      object.confirmed,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(int),
    );
    if (object.duplicate != null) {
      yield r'duplicate';
      yield serializers.serialize(
        object.duplicate,
        specifiedType: const FullType(int),
      );
    }
    if (object.needsReview != null) {
      yield r'needsReview';
      yield serializers.serialize(
        object.needsReview,
        specifiedType: const FullType(int),
      );
    }
    yield r'labelled';
    yield serializers.serialize(
      object.labelled,
      specifiedType: const FullType(int),
    );
    if (object.precision != null) {
      yield r'precision';
      yield serializers.serialize(
        object.precision,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType.nullable(ImpactRateInterval),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecisionComponentsInner object, {
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
    required PrecisionComponentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'component':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PrecisionComponentsInnerComponentEnum,
                    ),
                  )
                  as PrecisionComponentsInnerComponentEnum;
          result.component = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'confirmed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.confirmed = valueDes;
          break;
        case r'rejected':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rejected = valueDes;
          break;
        case r'duplicate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.duplicate = valueDes;
          break;
        case r'needsReview':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.needsReview = valueDes;
          break;
        case r'labelled':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.labelled = valueDes;
          break;
        case r'precision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.precision = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImpactRateInterval),
                  )
                  as ImpactRateInterval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecisionComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecisionComponentsInnerBuilder();
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

class PrecisionComponentsInnerComponentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'finding')
  static const PrecisionComponentsInnerComponentEnum finding =
      _$precisionComponentsInnerComponentEnum_finding;
  @BuiltValueEnumConst(wireName: r'intel-event')
  static const PrecisionComponentsInnerComponentEnum intelEvent =
      _$precisionComponentsInnerComponentEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'situation')
  static const PrecisionComponentsInnerComponentEnum situation =
      _$precisionComponentsInnerComponentEnum_situation;
  @BuiltValueEnumConst(wireName: r'precursor-active')
  static const PrecisionComponentsInnerComponentEnum precursorActive =
      _$precisionComponentsInnerComponentEnum_precursorActive;

  static Serializer<PrecisionComponentsInnerComponentEnum> get serializer =>
      _$precisionComponentsInnerComponentEnumSerializer;

  const PrecisionComponentsInnerComponentEnum._(String name) : super(name);

  static BuiltSet<PrecisionComponentsInnerComponentEnum> get values =>
      _$precisionComponentsInnerComponentEnumValues;
  static PrecisionComponentsInnerComponentEnum valueOf(String name) =>
      _$precisionComponentsInnerComponentEnumValueOf(name);
}
