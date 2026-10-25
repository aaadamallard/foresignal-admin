//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_subject.g.dart';

/// A pattern-of-life subject (114)
///
/// Properties:
/// * [id] - ULID identifier
/// * [subjectType]
/// * [ref]
/// * [enabled]
/// * [params]
/// * [private] - Outputs inherit private and the precision cap from a private source
/// * [createdBy]
/// * [createdAt]
/// * [lastSeq]
/// * [lastComputedAt]
/// * [placeCount]
/// * [stayCount]
@BuiltValue()
abstract class PolSubject implements Built<PolSubject, PolSubjectBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'subjectType')
  PolSubjectSubjectTypeEnum get subjectType;
  // enum subjectTypeEnum {  record,  entity,  watchlist,  };

  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  /// Outputs inherit private and the precision cap from a private source
  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastSeq')
  int? get lastSeq;

  @BuiltValueField(wireName: r'lastComputedAt')
  DateTime? get lastComputedAt;

  @BuiltValueField(wireName: r'placeCount')
  int? get placeCount;

  @BuiltValueField(wireName: r'stayCount')
  int? get stayCount;

  PolSubject._();

  factory PolSubject([void updates(PolSubjectBuilder b)]) = _$PolSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolSubject> get serializer => _$PolSubjectSerializer();
}

class _$PolSubjectSerializer implements PrimitiveSerializer<PolSubject> {
  @override
  final Iterable<Type> types = const [PolSubject, _$PolSubject];

  @override
  final String wireName = r'PolSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'subjectType';
    yield serializers.serialize(
      object.subjectType,
      specifiedType: const FullType(PolSubjectSubjectTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
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
    if (object.lastSeq != null) {
      yield r'lastSeq';
      yield serializers.serialize(
        object.lastSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastComputedAt != null) {
      yield r'lastComputedAt';
      yield serializers.serialize(
        object.lastComputedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.placeCount != null) {
      yield r'placeCount';
      yield serializers.serialize(
        object.placeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.stayCount != null) {
      yield r'stayCount';
      yield serializers.serialize(
        object.stayCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolSubject object, {
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
    required PolSubjectBuilder result,
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
        case r'subjectType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PolSubjectSubjectTypeEnum),
                  )
                  as PolSubjectSubjectTypeEnum;
          result.subjectType = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'params':
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
          result.params.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
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
        case r'lastSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastSeq = valueDes;
          break;
        case r'lastComputedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastComputedAt = valueDes;
          break;
        case r'placeCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.placeCount = valueDes;
          break;
        case r'stayCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.stayCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolSubjectBuilder();
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

class PolSubjectSubjectTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const PolSubjectSubjectTypeEnum record =
      _$polSubjectSubjectTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'entity')
  static const PolSubjectSubjectTypeEnum entity =
      _$polSubjectSubjectTypeEnum_entity;
  @BuiltValueEnumConst(wireName: r'watchlist')
  static const PolSubjectSubjectTypeEnum watchlist =
      _$polSubjectSubjectTypeEnum_watchlist;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PolSubjectSubjectTypeEnum unknownDefaultOpenApi =
      _$polSubjectSubjectTypeEnum_unknownDefaultOpenApi;

  static Serializer<PolSubjectSubjectTypeEnum> get serializer =>
      _$polSubjectSubjectTypeEnumSerializer;

  const PolSubjectSubjectTypeEnum._(String name) : super(name);

  static BuiltSet<PolSubjectSubjectTypeEnum> get values =>
      _$polSubjectSubjectTypeEnumValues;
  static PolSubjectSubjectTypeEnum valueOf(String name) =>
      _$polSubjectSubjectTypeEnumValueOf(name);
}
