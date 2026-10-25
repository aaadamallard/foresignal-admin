//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'information_value_indicators_inner.g.dart';

/// One pending indicator
///
/// Properties:
/// * [indicatorId] - ULID identifier
/// * [description]
/// * [signalFamily]
/// * [state]
/// * [rank]
/// * [eig]
/// * [potentialEig] - EIG with p_detect = 1
/// * [pDetect]
/// * [pObserved]
/// * [collectionGap]
@BuiltValue()
abstract class InformationValueIndicatorsInner
    implements
        Built<
          InformationValueIndicatorsInner,
          InformationValueIndicatorsInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'indicatorId')
  String get indicatorId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'state')
  InformationValueIndicatorsInnerStateEnum? get state;
  // enum stateEnum {  pending,  emerging,  observed,  absent,  unknown-coverage,  retired,  reported,  };

  @BuiltValueField(wireName: r'rank')
  int get rank;

  @BuiltValueField(wireName: r'eig')
  num get eig;

  /// EIG with p_detect = 1
  @BuiltValueField(wireName: r'potentialEig')
  num get potentialEig;

  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  @BuiltValueField(wireName: r'pObserved')
  num? get pObserved;

  @BuiltValueField(wireName: r'collectionGap')
  bool? get collectionGap;

  InformationValueIndicatorsInner._();

  factory InformationValueIndicatorsInner([
    void updates(InformationValueIndicatorsInnerBuilder b),
  ]) = _$InformationValueIndicatorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InformationValueIndicatorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InformationValueIndicatorsInner> get serializer =>
      _$InformationValueIndicatorsInnerSerializer();
}

class _$InformationValueIndicatorsInnerSerializer
    implements PrimitiveSerializer<InformationValueIndicatorsInner> {
  @override
  final Iterable<Type> types = const [
    InformationValueIndicatorsInner,
    _$InformationValueIndicatorsInner,
  ];

  @override
  final String wireName = r'InformationValueIndicatorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InformationValueIndicatorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indicatorId';
    yield serializers.serialize(
      object.indicatorId,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(InformationValueIndicatorsInnerStateEnum),
      );
    }
    yield r'rank';
    yield serializers.serialize(
      object.rank,
      specifiedType: const FullType(int),
    );
    yield r'eig';
    yield serializers.serialize(object.eig, specifiedType: const FullType(num));
    yield r'potentialEig';
    yield serializers.serialize(
      object.potentialEig,
      specifiedType: const FullType(num),
    );
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pObserved != null) {
      yield r'pObserved';
      yield serializers.serialize(
        object.pObserved,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.collectionGap != null) {
      yield r'collectionGap';
      yield serializers.serialize(
        object.collectionGap,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InformationValueIndicatorsInner object, {
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
    required InformationValueIndicatorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indicatorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.indicatorId = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      InformationValueIndicatorsInnerStateEnum,
                    ),
                  )
                  as InformationValueIndicatorsInnerStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'rank':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rank = valueDes;
          break;
        case r'eig':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.eig = valueDes;
          break;
        case r'potentialEig':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.potentialEig = valueDes;
          break;
        case r'pDetect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        case r'pObserved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pObserved = valueDes;
          break;
        case r'collectionGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.collectionGap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InformationValueIndicatorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InformationValueIndicatorsInnerBuilder();
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

class InformationValueIndicatorsInnerStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const InformationValueIndicatorsInnerStateEnum pending =
      _$informationValueIndicatorsInnerStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'emerging')
  static const InformationValueIndicatorsInnerStateEnum emerging =
      _$informationValueIndicatorsInnerStateEnum_emerging;
  @BuiltValueEnumConst(wireName: r'observed')
  static const InformationValueIndicatorsInnerStateEnum observed =
      _$informationValueIndicatorsInnerStateEnum_observed;
  @BuiltValueEnumConst(wireName: r'absent')
  static const InformationValueIndicatorsInnerStateEnum absent =
      _$informationValueIndicatorsInnerStateEnum_absent;
  @BuiltValueEnumConst(wireName: r'unknown-coverage')
  static const InformationValueIndicatorsInnerStateEnum unknownCoverage =
      _$informationValueIndicatorsInnerStateEnum_unknownCoverage;
  @BuiltValueEnumConst(wireName: r'retired')
  static const InformationValueIndicatorsInnerStateEnum retired =
      _$informationValueIndicatorsInnerStateEnum_retired;
  @BuiltValueEnumConst(wireName: r'reported')
  static const InformationValueIndicatorsInnerStateEnum reported =
      _$informationValueIndicatorsInnerStateEnum_reported;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InformationValueIndicatorsInnerStateEnum unknownDefaultOpenApi =
      _$informationValueIndicatorsInnerStateEnum_unknownDefaultOpenApi;

  static Serializer<InformationValueIndicatorsInnerStateEnum> get serializer =>
      _$informationValueIndicatorsInnerStateEnumSerializer;

  const InformationValueIndicatorsInnerStateEnum._(String name) : super(name);

  static BuiltSet<InformationValueIndicatorsInnerStateEnum> get values =>
      _$informationValueIndicatorsInnerStateEnumValues;
  static InformationValueIndicatorsInnerStateEnum valueOf(String name) =>
      _$informationValueIndicatorsInnerStateEnumValueOf(name);
}
