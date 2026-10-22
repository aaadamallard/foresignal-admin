//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_binding_input.g.dart';

/// Bind an atomic stream to a target (138)
///
/// Properties:
/// * [streamId]
/// * [target]
/// * [config] - Target configuration (docs/External-Data-Protocol.md §5)
/// * [filter] - 017 conditions on item properties
/// * [enabled]
/// * [backfill]
@BuiltValue()
abstract class ExternalBindingInput
    implements Built<ExternalBindingInput, ExternalBindingInputBuilder> {
  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  @BuiltValueField(wireName: r'target')
  ExternalBindingInputTargetEnum get target;
  // enum targetEnum {  series,  canonical-family,  social,  news,  evidence,  indicator,  forecast,  place,  situation,  chronicle,  };

  /// Target configuration (docs/External-Data-Protocol.md §5)
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// 017 conditions on item properties
  @BuiltValueField(wireName: r'filter')
  BuiltList<BuiltMap<String, JsonObject?>>? get filter;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'backfill')
  bool? get backfill;

  ExternalBindingInput._();

  factory ExternalBindingInput([void updates(ExternalBindingInputBuilder b)]) =
      _$ExternalBindingInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalBindingInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalBindingInput> get serializer =>
      _$ExternalBindingInputSerializer();
}

class _$ExternalBindingInputSerializer
    implements PrimitiveSerializer<ExternalBindingInput> {
  @override
  final Iterable<Type> types = const [
    ExternalBindingInput,
    _$ExternalBindingInput
  ];

  @override
  final String wireName = r'ExternalBindingInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalBindingInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'streamId';
    yield serializers.serialize(
      object.streamId,
      specifiedType: const FullType(String),
    );
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(ExternalBindingInputTargetEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
        ]),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.backfill != null) {
      yield r'backfill';
      yield serializers.serialize(
        object.backfill,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalBindingInput object, {
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
    required ExternalBindingInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streamId = valueDes;
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExternalBindingInputTargetEnum),
          ) as ExternalBindingInputTargetEnum;
          result.target = valueDes;
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'backfill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.backfill = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalBindingInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalBindingInputBuilder();
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

class ExternalBindingInputTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'series')
  static const ExternalBindingInputTargetEnum series =
      _$externalBindingInputTargetEnum_series;
  @BuiltValueEnumConst(wireName: r'canonical-family')
  static const ExternalBindingInputTargetEnum canonicalFamily =
      _$externalBindingInputTargetEnum_canonicalFamily;
  @BuiltValueEnumConst(wireName: r'social')
  static const ExternalBindingInputTargetEnum social =
      _$externalBindingInputTargetEnum_social;
  @BuiltValueEnumConst(wireName: r'news')
  static const ExternalBindingInputTargetEnum news =
      _$externalBindingInputTargetEnum_news;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ExternalBindingInputTargetEnum evidence =
      _$externalBindingInputTargetEnum_evidence;
  @BuiltValueEnumConst(wireName: r'indicator')
  static const ExternalBindingInputTargetEnum indicator =
      _$externalBindingInputTargetEnum_indicator;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const ExternalBindingInputTargetEnum forecast =
      _$externalBindingInputTargetEnum_forecast;
  @BuiltValueEnumConst(wireName: r'place')
  static const ExternalBindingInputTargetEnum place =
      _$externalBindingInputTargetEnum_place;
  @BuiltValueEnumConst(wireName: r'situation')
  static const ExternalBindingInputTargetEnum situation =
      _$externalBindingInputTargetEnum_situation;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const ExternalBindingInputTargetEnum chronicle =
      _$externalBindingInputTargetEnum_chronicle;

  static Serializer<ExternalBindingInputTargetEnum> get serializer =>
      _$externalBindingInputTargetEnumSerializer;

  const ExternalBindingInputTargetEnum._(String name) : super(name);

  static BuiltSet<ExternalBindingInputTargetEnum> get values =>
      _$externalBindingInputTargetEnumValues;
  static ExternalBindingInputTargetEnum valueOf(String name) =>
      _$externalBindingInputTargetEnumValueOf(name);
}
