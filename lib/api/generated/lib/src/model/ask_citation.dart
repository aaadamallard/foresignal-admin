//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_citation.g.dart';

/// AskCitation
///
/// Properties:
/// * [id] - <sourceId>:<externalId>, briefing:<id>, alert:<id>, or (056) wx:<productId>@<frameKey> for a weather frame and wx:<productId>@<run>/<step> for a forecast step (GFS and HRRR providers: wx:gfs@<run>/<step>, NWS: wx:nws@<updatedAt>/<hours>)
/// * [seq]
/// * [title]
/// * [type] - weather (056): a value a weather tool returned; productId, frameKey, run, step, validTime and ageMinutes are set only for this type
/// * [productId]
/// * [frameKey]
/// * [run]
/// * [step]
/// * [validTime]
/// * [ageMinutes]
@BuiltValue()
abstract class AskCitation implements Built<AskCitation, AskCitationBuilder> {
  /// <sourceId>:<externalId>, briefing:<id>, alert:<id>, or (056) wx:<productId>@<frameKey> for a weather frame and wx:<productId>@<run>/<step> for a forecast step (GFS and HRRR providers: wx:gfs@<run>/<step>, NWS: wx:nws@<updatedAt>/<hours>)
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// weather (056): a value a weather tool returned; productId, frameKey, run, step, validTime and ageMinutes are set only for this type
  @BuiltValueField(wireName: r'type')
  AskCitationTypeEnum? get type;
  // enum typeEnum {  record,  alert,  briefing,  weather,  };

  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'step')
  int? get step;

  @BuiltValueField(wireName: r'validTime')
  DateTime? get validTime;

  @BuiltValueField(wireName: r'ageMinutes')
  num? get ageMinutes;

  AskCitation._();

  factory AskCitation([void updates(AskCitationBuilder b)]) = _$AskCitation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskCitationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskCitation> get serializer => _$AskCitationSerializer();
}

class _$AskCitationSerializer implements PrimitiveSerializer<AskCitation> {
  @override
  final Iterable<Type> types = const [AskCitation, _$AskCitation];

  @override
  final String wireName = r'AskCitation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskCitation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AskCitationTypeEnum),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.validTime != null) {
      yield r'validTime';
      yield serializers.serialize(
        object.validTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.ageMinutes != null) {
      yield r'ageMinutes';
      yield serializers.serialize(
        object.ageMinutes,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskCitation object, {
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
    required AskCitationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AskCitationTypeEnum),
          ) as AskCitationTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'frameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'validTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.validTime = valueDes;
          break;
        case r'ageMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ageMinutes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskCitation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskCitationBuilder();
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

/// weather (056): a value a weather tool returned; productId, frameKey, run, step, validTime and ageMinutes are set only for this type
class AskCitationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const AskCitationTypeEnum record = _$askCitationTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const AskCitationTypeEnum alert = _$askCitationTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const AskCitationTypeEnum briefing = _$askCitationTypeEnum_briefing;
  @BuiltValueEnumConst(wireName: r'weather')
  static const AskCitationTypeEnum weather = _$askCitationTypeEnum_weather;

  static Serializer<AskCitationTypeEnum> get serializer =>
      _$askCitationTypeEnumSerializer;

  const AskCitationTypeEnum._(String name) : super(name);

  static BuiltSet<AskCitationTypeEnum> get values =>
      _$askCitationTypeEnumValues;
  static AskCitationTypeEnum valueOf(String name) =>
      _$askCitationTypeEnumValueOf(name);
}
