//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/pol_subject_input_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_subject_input.g.dart';

/// Opt a subject into pattern-of-life analysis (114). Private sources need admin
///
/// Properties:
/// * [subjectType]
/// * [ref] - record: `{sourceId}/{externalId}`; entity: 098 entity id; watchlist: 036 watchlist id (every member)
/// * [enabled]
/// * [params]
@BuiltValue()
abstract class PolSubjectInput
    implements Built<PolSubjectInput, PolSubjectInputBuilder> {
  @BuiltValueField(wireName: r'subjectType')
  PolSubjectInputSubjectTypeEnum get subjectType;
  // enum subjectTypeEnum {  record,  entity,  watchlist,  };

  /// record: `{sourceId}/{externalId}`; entity: 098 entity id; watchlist: 036 watchlist id (every member)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'params')
  PolSubjectInputParams? get params;

  PolSubjectInput._();

  factory PolSubjectInput([void updates(PolSubjectInputBuilder b)]) =
      _$PolSubjectInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolSubjectInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolSubjectInput> get serializer =>
      _$PolSubjectInputSerializer();
}

class _$PolSubjectInputSerializer
    implements PrimitiveSerializer<PolSubjectInput> {
  @override
  final Iterable<Type> types = const [PolSubjectInput, _$PolSubjectInput];

  @override
  final String wireName = r'PolSubjectInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolSubjectInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subjectType';
    yield serializers.serialize(
      object.subjectType,
      specifiedType: const FullType(PolSubjectInputSubjectTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(PolSubjectInputParams),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolSubjectInput object, {
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
    required PolSubjectInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subjectType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolSubjectInputSubjectTypeEnum),
          ) as PolSubjectInputSubjectTypeEnum;
          result.subjectType = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PolSubjectInputParams),
          ) as PolSubjectInputParams?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolSubjectInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolSubjectInputBuilder();
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

class PolSubjectInputSubjectTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const PolSubjectInputSubjectTypeEnum record =
      _$polSubjectInputSubjectTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'entity')
  static const PolSubjectInputSubjectTypeEnum entity =
      _$polSubjectInputSubjectTypeEnum_entity;
  @BuiltValueEnumConst(wireName: r'watchlist')
  static const PolSubjectInputSubjectTypeEnum watchlist =
      _$polSubjectInputSubjectTypeEnum_watchlist;

  static Serializer<PolSubjectInputSubjectTypeEnum> get serializer =>
      _$polSubjectInputSubjectTypeEnumSerializer;

  const PolSubjectInputSubjectTypeEnum._(String name) : super(name);

  static BuiltSet<PolSubjectInputSubjectTypeEnum> get values =>
      _$polSubjectInputSubjectTypeEnumValues;
  static PolSubjectInputSubjectTypeEnum valueOf(String name) =>
      _$polSubjectInputSubjectTypeEnumValueOf(name);
}
