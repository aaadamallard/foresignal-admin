//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_search.g.dart';

/// Semantic search state (027)
///
/// Properties:
/// * [semanticEnabled]
/// * [reason]
/// * [documents]
/// * [backlog]
/// * [activeModel]
/// * [reindexState]
@BuiltValue()
abstract class SystemInfoSearch
    implements Built<SystemInfoSearch, SystemInfoSearchBuilder> {
  @BuiltValueField(wireName: r'semanticEnabled')
  bool? get semanticEnabled;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'documents')
  int? get documents;

  @BuiltValueField(wireName: r'backlog')
  int? get backlog;

  @BuiltValueField(wireName: r'activeModel')
  String? get activeModel;

  @BuiltValueField(wireName: r'reindexState')
  SystemInfoSearchReindexStateEnum? get reindexState;
  // enum reindexStateEnum {  idle,  backfilling,  indexing,  swapping,  };

  SystemInfoSearch._();

  factory SystemInfoSearch([void updates(SystemInfoSearchBuilder b)]) =
      _$SystemInfoSearch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoSearchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoSearch> get serializer =>
      _$SystemInfoSearchSerializer();
}

class _$SystemInfoSearchSerializer
    implements PrimitiveSerializer<SystemInfoSearch> {
  @override
  final Iterable<Type> types = const [SystemInfoSearch, _$SystemInfoSearch];

  @override
  final String wireName = r'SystemInfoSearch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoSearch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.semanticEnabled != null) {
      yield r'semanticEnabled';
      yield serializers.serialize(
        object.semanticEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.documents != null) {
      yield r'documents';
      yield serializers.serialize(
        object.documents,
        specifiedType: const FullType(int),
      );
    }
    if (object.backlog != null) {
      yield r'backlog';
      yield serializers.serialize(
        object.backlog,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeModel != null) {
      yield r'activeModel';
      yield serializers.serialize(
        object.activeModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reindexState != null) {
      yield r'reindexState';
      yield serializers.serialize(
        object.reindexState,
        specifiedType: const FullType(SystemInfoSearchReindexStateEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoSearch object, {
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
    required SystemInfoSearchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'semanticEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.semanticEnabled = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'documents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.documents = valueDes;
          break;
        case r'backlog':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.backlog = valueDes;
          break;
        case r'activeModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.activeModel = valueDes;
          break;
        case r'reindexState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoSearchReindexStateEnum,
                    ),
                  )
                  as SystemInfoSearchReindexStateEnum?;
          if (valueDes == null) continue;
          result.reindexState = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoSearch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoSearchBuilder();
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

class SystemInfoSearchReindexStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'idle')
  static const SystemInfoSearchReindexStateEnum idle =
      _$systemInfoSearchReindexStateEnum_idle;
  @BuiltValueEnumConst(wireName: r'backfilling')
  static const SystemInfoSearchReindexStateEnum backfilling =
      _$systemInfoSearchReindexStateEnum_backfilling;
  @BuiltValueEnumConst(wireName: r'indexing')
  static const SystemInfoSearchReindexStateEnum indexing =
      _$systemInfoSearchReindexStateEnum_indexing;
  @BuiltValueEnumConst(wireName: r'swapping')
  static const SystemInfoSearchReindexStateEnum swapping =
      _$systemInfoSearchReindexStateEnum_swapping;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemInfoSearchReindexStateEnum unknownDefaultOpenApi =
      _$systemInfoSearchReindexStateEnum_unknownDefaultOpenApi;

  static Serializer<SystemInfoSearchReindexStateEnum> get serializer =>
      _$systemInfoSearchReindexStateEnumSerializer;

  const SystemInfoSearchReindexStateEnum._(String name) : super(name);

  static BuiltSet<SystemInfoSearchReindexStateEnum> get values =>
      _$systemInfoSearchReindexStateEnumValues;
  static SystemInfoSearchReindexStateEnum valueOf(String name) =>
      _$systemInfoSearchReindexStateEnumValueOf(name);
}
