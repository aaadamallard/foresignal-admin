//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_latest_assessments_inner.g.dart';

/// Latest assessment of a cadence
///
/// Properties:
/// * [cadence]
/// * [assessmentId] - ULID identifier
/// * [headline]
/// * [createdAt]
@BuiltValue()
abstract class IntelBoardLatestAssessmentsInner
    implements
        Built<
          IntelBoardLatestAssessmentsInner,
          IntelBoardLatestAssessmentsInnerBuilder
        > {
  @BuiltValueField(wireName: r'cadence')
  IntelBoardLatestAssessmentsInnerCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'assessmentId')
  String get assessmentId;

  @BuiltValueField(wireName: r'headline')
  String? get headline;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  IntelBoardLatestAssessmentsInner._();

  factory IntelBoardLatestAssessmentsInner([
    void updates(IntelBoardLatestAssessmentsInnerBuilder b),
  ]) = _$IntelBoardLatestAssessmentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardLatestAssessmentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardLatestAssessmentsInner> get serializer =>
      _$IntelBoardLatestAssessmentsInnerSerializer();
}

class _$IntelBoardLatestAssessmentsInnerSerializer
    implements PrimitiveSerializer<IntelBoardLatestAssessmentsInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardLatestAssessmentsInner,
    _$IntelBoardLatestAssessmentsInner,
  ];

  @override
  final String wireName = r'IntelBoardLatestAssessmentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardLatestAssessmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(
        IntelBoardLatestAssessmentsInnerCadenceEnum,
      ),
    );
    yield r'assessmentId';
    yield serializers.serialize(
      object.assessmentId,
      specifiedType: const FullType(String),
    );
    if (object.headline != null) {
      yield r'headline';
      yield serializers.serialize(
        object.headline,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardLatestAssessmentsInner object, {
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
    required IntelBoardLatestAssessmentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelBoardLatestAssessmentsInnerCadenceEnum,
                    ),
                  )
                  as IntelBoardLatestAssessmentsInnerCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'assessmentId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.assessmentId = valueDes;
          break;
        case r'headline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.headline = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardLatestAssessmentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardLatestAssessmentsInnerBuilder();
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

class IntelBoardLatestAssessmentsInnerCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const IntelBoardLatestAssessmentsInnerCadenceEnum daily =
      _$intelBoardLatestAssessmentsInnerCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const IntelBoardLatestAssessmentsInnerCadenceEnum weekly =
      _$intelBoardLatestAssessmentsInnerCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const IntelBoardLatestAssessmentsInnerCadenceEnum monthly =
      _$intelBoardLatestAssessmentsInnerCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelBoardLatestAssessmentsInnerCadenceEnum
  unknownDefaultOpenApi =
      _$intelBoardLatestAssessmentsInnerCadenceEnum_unknownDefaultOpenApi;

  static Serializer<IntelBoardLatestAssessmentsInnerCadenceEnum>
  get serializer => _$intelBoardLatestAssessmentsInnerCadenceEnumSerializer;

  const IntelBoardLatestAssessmentsInnerCadenceEnum._(String name)
    : super(name);

  static BuiltSet<IntelBoardLatestAssessmentsInnerCadenceEnum> get values =>
      _$intelBoardLatestAssessmentsInnerCadenceEnumValues;
  static IntelBoardLatestAssessmentsInnerCadenceEnum valueOf(String name) =>
      _$intelBoardLatestAssessmentsInnerCadenceEnumValueOf(name);
}
