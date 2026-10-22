//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spc_outlook_payload.g.dart';

/// Payload of `spc-outlook` records (externalId `day{d}:{type}:{LABEL}`)
///
/// Properties:
/// * [day]
/// * [type]
/// * [label]
/// * [label2]
/// * [dn] - Numeric rank for rules such as dn >= 5
/// * [issue]
/// * [valid]
/// * [expire]
/// * [title]
@BuiltValue()
abstract class SpcOutlookPayload
    implements Built<SpcOutlookPayload, SpcOutlookPayloadBuilder> {
  @BuiltValueField(wireName: r'day')
  int get day;

  @BuiltValueField(wireName: r'type')
  SpcOutlookPayloadTypeEnum get type;
  // enum typeEnum {  cat,  torn,  wind,  hail,  sigtorn,  sigwind,  sighail,  prob,  sigprob,  };

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'label2')
  String? get label2;

  /// Numeric rank for rules such as dn >= 5
  @BuiltValueField(wireName: r'dn')
  int get dn;

  @BuiltValueField(wireName: r'issue')
  DateTime? get issue;

  @BuiltValueField(wireName: r'valid')
  DateTime? get valid;

  @BuiltValueField(wireName: r'expire')
  DateTime? get expire;

  @BuiltValueField(wireName: r'title')
  String get title;

  SpcOutlookPayload._();

  factory SpcOutlookPayload([void updates(SpcOutlookPayloadBuilder b)]) =
      _$SpcOutlookPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpcOutlookPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpcOutlookPayload> get serializer =>
      _$SpcOutlookPayloadSerializer();
}

class _$SpcOutlookPayloadSerializer
    implements PrimitiveSerializer<SpcOutlookPayload> {
  @override
  final Iterable<Type> types = const [SpcOutlookPayload, _$SpcOutlookPayload];

  @override
  final String wireName = r'SpcOutlookPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpcOutlookPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'day';
    yield serializers.serialize(object.day, specifiedType: const FullType(int));
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SpcOutlookPayloadTypeEnum),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.label2 != null) {
      yield r'label2';
      yield serializers.serialize(
        object.label2,
        specifiedType: const FullType(String),
      );
    }
    yield r'dn';
    yield serializers.serialize(object.dn, specifiedType: const FullType(int));
    if (object.issue != null) {
      yield r'issue';
      yield serializers.serialize(
        object.issue,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.valid != null) {
      yield r'valid';
      yield serializers.serialize(
        object.valid,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expire != null) {
      yield r'expire';
      yield serializers.serialize(
        object.expire,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpcOutlookPayload object, {
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
    required SpcOutlookPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'day':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.day = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SpcOutlookPayloadTypeEnum),
                  )
                  as SpcOutlookPayloadTypeEnum;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'label2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label2 = valueDes;
          break;
        case r'dn':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.dn = valueDes;
          break;
        case r'issue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.issue = valueDes;
          break;
        case r'valid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.valid = valueDes;
          break;
        case r'expire':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expire = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpcOutlookPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpcOutlookPayloadBuilder();
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

class SpcOutlookPayloadTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cat')
  static const SpcOutlookPayloadTypeEnum cat = _$spcOutlookPayloadTypeEnum_cat;
  @BuiltValueEnumConst(wireName: r'torn')
  static const SpcOutlookPayloadTypeEnum torn =
      _$spcOutlookPayloadTypeEnum_torn;
  @BuiltValueEnumConst(wireName: r'wind')
  static const SpcOutlookPayloadTypeEnum wind =
      _$spcOutlookPayloadTypeEnum_wind;
  @BuiltValueEnumConst(wireName: r'hail')
  static const SpcOutlookPayloadTypeEnum hail =
      _$spcOutlookPayloadTypeEnum_hail;
  @BuiltValueEnumConst(wireName: r'sigtorn')
  static const SpcOutlookPayloadTypeEnum sigtorn =
      _$spcOutlookPayloadTypeEnum_sigtorn;
  @BuiltValueEnumConst(wireName: r'sigwind')
  static const SpcOutlookPayloadTypeEnum sigwind =
      _$spcOutlookPayloadTypeEnum_sigwind;
  @BuiltValueEnumConst(wireName: r'sighail')
  static const SpcOutlookPayloadTypeEnum sighail =
      _$spcOutlookPayloadTypeEnum_sighail;
  @BuiltValueEnumConst(wireName: r'prob')
  static const SpcOutlookPayloadTypeEnum prob =
      _$spcOutlookPayloadTypeEnum_prob;
  @BuiltValueEnumConst(wireName: r'sigprob')
  static const SpcOutlookPayloadTypeEnum sigprob =
      _$spcOutlookPayloadTypeEnum_sigprob;

  static Serializer<SpcOutlookPayloadTypeEnum> get serializer =>
      _$spcOutlookPayloadTypeEnumSerializer;

  const SpcOutlookPayloadTypeEnum._(String name) : super(name);

  static BuiltSet<SpcOutlookPayloadTypeEnum> get values =>
      _$spcOutlookPayloadTypeEnumValues;
  static SpcOutlookPayloadTypeEnum valueOf(String name) =>
      _$spcOutlookPayloadTypeEnumValueOf(name);
}
