//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecaster_track_record.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecaster.g.dart';

/// A registered forecaster
///
/// Properties:
/// * [id] - Slug, e.g. `base-rate`, `ensemble`, `operator:jsmith`, `llm:daily-analyst`
/// * [type]
/// * [name]
/// * [config]
/// * [version]
/// * [active]
/// * [trackRecord]
/// * [createdAt]
@BuiltValue()
abstract class Forecaster implements Built<Forecaster, ForecasterBuilder> {
  /// Slug, e.g. `base-rate`, `ensemble`, `operator:jsmith`, `llm:daily-analyst`
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  ForecasterTypeEnum get type;
  // enum typeEnum {  base-rate,  climatology,  persistence,  statistical,  precursor,  analog,  threshold,  impact,  indicator-bayes,  llm,  operator,  external,  ensemble,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'active')
  bool get active;

  @BuiltValueField(wireName: r'trackRecord')
  ForecasterTrackRecord? get trackRecord;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  Forecaster._();

  factory Forecaster([void updates(ForecasterBuilder b)]) = _$Forecaster;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecasterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Forecaster> get serializer => _$ForecasterSerializer();
}

class _$ForecasterSerializer implements PrimitiveSerializer<Forecaster> {
  @override
  final Iterable<Type> types = const [Forecaster, _$Forecaster];

  @override
  final String wireName = r'Forecaster';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Forecaster object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecasterTypeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'active';
    yield serializers.serialize(
      object.active,
      specifiedType: const FullType(bool),
    );
    if (object.trackRecord != null) {
      yield r'trackRecord';
      yield serializers.serialize(
        object.trackRecord,
        specifiedType: const FullType.nullable(ForecasterTrackRecord),
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
    Forecaster object, {
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
    required ForecasterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecasterTypeEnum),
                  )
                  as ForecasterTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.active = valueDes;
          break;
        case r'trackRecord':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ForecasterTrackRecord,
                    ),
                  )
                  as ForecasterTrackRecord?;
          if (valueDes == null) continue;
          result.trackRecord.replace(valueDes);
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
  Forecaster deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecasterBuilder();
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

class ForecasterTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'base-rate')
  static const ForecasterTypeEnum baseRate = _$forecasterTypeEnum_baseRate;
  @BuiltValueEnumConst(wireName: r'climatology')
  static const ForecasterTypeEnum climatology =
      _$forecasterTypeEnum_climatology;
  @BuiltValueEnumConst(wireName: r'persistence')
  static const ForecasterTypeEnum persistence =
      _$forecasterTypeEnum_persistence;
  @BuiltValueEnumConst(wireName: r'statistical')
  static const ForecasterTypeEnum statistical =
      _$forecasterTypeEnum_statistical;
  @BuiltValueEnumConst(wireName: r'precursor')
  static const ForecasterTypeEnum precursor = _$forecasterTypeEnum_precursor;
  @BuiltValueEnumConst(wireName: r'analog')
  static const ForecasterTypeEnum analog = _$forecasterTypeEnum_analog;
  @BuiltValueEnumConst(wireName: r'threshold')
  static const ForecasterTypeEnum threshold = _$forecasterTypeEnum_threshold;
  @BuiltValueEnumConst(wireName: r'impact')
  static const ForecasterTypeEnum impact = _$forecasterTypeEnum_impact;
  @BuiltValueEnumConst(wireName: r'indicator-bayes')
  static const ForecasterTypeEnum indicatorBayes =
      _$forecasterTypeEnum_indicatorBayes;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ForecasterTypeEnum llm = _$forecasterTypeEnum_llm;
  @BuiltValueEnumConst(wireName: r'operator')
  static const ForecasterTypeEnum operator_ = _$forecasterTypeEnum_operator_;
  @BuiltValueEnumConst(wireName: r'external')
  static const ForecasterTypeEnum external_ = _$forecasterTypeEnum_external_;
  @BuiltValueEnumConst(wireName: r'ensemble')
  static const ForecasterTypeEnum ensemble = _$forecasterTypeEnum_ensemble;

  static Serializer<ForecasterTypeEnum> get serializer =>
      _$forecasterTypeEnumSerializer;

  const ForecasterTypeEnum._(String name) : super(name);

  static BuiltSet<ForecasterTypeEnum> get values => _$forecasterTypeEnumValues;
  static ForecasterTypeEnum valueOf(String name) =>
      _$forecasterTypeEnumValueOf(name);
}
