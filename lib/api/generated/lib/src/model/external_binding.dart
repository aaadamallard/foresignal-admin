//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_binding.g.dart';

/// A binding with its state (138)
///
/// Properties:
/// * [streamId]
/// * [target]
/// * [config]
/// * [filter] - 017 conditions on item properties
/// * [enabled]
/// * [backfill]
/// * [id] - ULID identifier
/// * [sourceId]
/// * [manifestSha256]
/// * [state]
/// * [applied]
/// * [lastError]
/// * [createdBy]
/// * [createdAt]
/// * [targetRef] - What the binding set up once (the chronicle layer of a chronicle binding, chronicle:{id}/layers/{layerId})
/// * [updatedAt]
/// * [lastAppliedAt]
@BuiltValue()
abstract class ExternalBinding
    implements Built<ExternalBinding, ExternalBindingBuilder> {
  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  @BuiltValueField(wireName: r'target')
  ExternalBindingTargetEnum get target;
  // enum targetEnum {  series,  canonical-family,  social,  news,  evidence,  indicator,  forecast,  place,  situation,  chronicle,  };

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// 017 conditions on item properties
  @BuiltValueField(wireName: r'filter')
  BuiltList<BuiltMap<String, JsonObject?>>? get filter;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'backfill')
  bool? get backfill;

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'manifestSha256')
  String? get manifestSha256;

  @BuiltValueField(wireName: r'state')
  ExternalBindingStateEnum get state;
  // enum stateEnum {  active,  disabled,  backfilling,  error,  };

  @BuiltValueField(wireName: r'applied')
  int? get applied;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// What the binding set up once (the chronicle layer of a chronicle binding, chronicle:{id}/layers/{layerId})
  @BuiltValueField(wireName: r'targetRef')
  String? get targetRef;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'lastAppliedAt')
  DateTime? get lastAppliedAt;

  ExternalBinding._();

  factory ExternalBinding([void updates(ExternalBindingBuilder b)]) =
      _$ExternalBinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalBindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalBinding> get serializer =>
      _$ExternalBindingSerializer();
}

class _$ExternalBindingSerializer
    implements PrimitiveSerializer<ExternalBinding> {
  @override
  final Iterable<Type> types = const [ExternalBinding, _$ExternalBinding];

  @override
  final String wireName = r'ExternalBinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalBinding object, {
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
      specifiedType: const FullType(ExternalBindingTargetEnum),
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
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    if (object.manifestSha256 != null) {
      yield r'manifestSha256';
      yield serializers.serialize(
        object.manifestSha256,
        specifiedType: const FullType(String),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ExternalBindingStateEnum),
    );
    if (object.applied != null) {
      yield r'applied';
      yield serializers.serialize(
        object.applied,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.targetRef != null) {
      yield r'targetRef';
      yield serializers.serialize(
        object.targetRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastAppliedAt != null) {
      yield r'lastAppliedAt';
      yield serializers.serialize(
        object.lastAppliedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalBinding object, {
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
    required ExternalBindingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.streamId = valueDes;
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExternalBindingTargetEnum),
                  )
                  as ExternalBindingTargetEnum;
          result.target = valueDes;
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
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'backfill':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.backfill = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'manifestSha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestSha256 = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExternalBindingStateEnum),
                  )
                  as ExternalBindingStateEnum;
          result.state = valueDes;
          break;
        case r'applied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.applied = valueDes;
          break;
        case r'lastError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
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
        case r'targetRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.targetRef = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'lastAppliedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastAppliedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalBinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalBindingBuilder();
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

class ExternalBindingTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'series')
  static const ExternalBindingTargetEnum series =
      _$externalBindingTargetEnum_series;
  @BuiltValueEnumConst(wireName: r'canonical-family')
  static const ExternalBindingTargetEnum canonicalFamily =
      _$externalBindingTargetEnum_canonicalFamily;
  @BuiltValueEnumConst(wireName: r'social')
  static const ExternalBindingTargetEnum social =
      _$externalBindingTargetEnum_social;
  @BuiltValueEnumConst(wireName: r'news')
  static const ExternalBindingTargetEnum news =
      _$externalBindingTargetEnum_news;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ExternalBindingTargetEnum evidence =
      _$externalBindingTargetEnum_evidence;
  @BuiltValueEnumConst(wireName: r'indicator')
  static const ExternalBindingTargetEnum indicator =
      _$externalBindingTargetEnum_indicator;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const ExternalBindingTargetEnum forecast =
      _$externalBindingTargetEnum_forecast;
  @BuiltValueEnumConst(wireName: r'place')
  static const ExternalBindingTargetEnum place =
      _$externalBindingTargetEnum_place;
  @BuiltValueEnumConst(wireName: r'situation')
  static const ExternalBindingTargetEnum situation =
      _$externalBindingTargetEnum_situation;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const ExternalBindingTargetEnum chronicle =
      _$externalBindingTargetEnum_chronicle;

  static Serializer<ExternalBindingTargetEnum> get serializer =>
      _$externalBindingTargetEnumSerializer;

  const ExternalBindingTargetEnum._(String name) : super(name);

  static BuiltSet<ExternalBindingTargetEnum> get values =>
      _$externalBindingTargetEnumValues;
  static ExternalBindingTargetEnum valueOf(String name) =>
      _$externalBindingTargetEnumValueOf(name);
}

class ExternalBindingStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ExternalBindingStateEnum active =
      _$externalBindingStateEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const ExternalBindingStateEnum disabled =
      _$externalBindingStateEnum_disabled;
  @BuiltValueEnumConst(wireName: r'backfilling')
  static const ExternalBindingStateEnum backfilling =
      _$externalBindingStateEnum_backfilling;
  @BuiltValueEnumConst(wireName: r'error')
  static const ExternalBindingStateEnum error =
      _$externalBindingStateEnum_error;

  static Serializer<ExternalBindingStateEnum> get serializer =>
      _$externalBindingStateEnumSerializer;

  const ExternalBindingStateEnum._(String name) : super(name);

  static BuiltSet<ExternalBindingStateEnum> get values =>
      _$externalBindingStateEnumValues;
  static ExternalBindingStateEnum valueOf(String name) =>
      _$externalBindingStateEnumValueOf(name);
}
