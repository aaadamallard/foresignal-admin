//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_reindex_state.g.dart';

/// Progress of a zero-downtime embedding reindex (027)
///
/// Properties:
/// * [state]
/// * [fromModel] - Outgoing model id `<providerId>:<model>:<dimensions>`
/// * [toModel]
/// * [total]
/// * [done]
/// * [percent]
/// * [ratePerMinute] - 10-minute moving average
/// * [etaSeconds]
/// * [startedAt]
@BuiltValue()
abstract class SearchReindexState
    implements Built<SearchReindexState, SearchReindexStateBuilder> {
  @BuiltValueField(wireName: r'state')
  SearchReindexStateStateEnum get state;
  // enum stateEnum {  idle,  backfilling,  indexing,  swapping,  };

  /// Outgoing model id `<providerId>:<model>:<dimensions>`
  @BuiltValueField(wireName: r'fromModel')
  String? get fromModel;

  @BuiltValueField(wireName: r'toModel')
  String? get toModel;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'done')
  int? get done;

  @BuiltValueField(wireName: r'percent')
  num? get percent;

  /// 10-minute moving average
  @BuiltValueField(wireName: r'ratePerMinute')
  num? get ratePerMinute;

  @BuiltValueField(wireName: r'etaSeconds')
  int? get etaSeconds;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  SearchReindexState._();

  factory SearchReindexState([void updates(SearchReindexStateBuilder b)]) =
      _$SearchReindexState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchReindexStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchReindexState> get serializer =>
      _$SearchReindexStateSerializer();
}

class _$SearchReindexStateSerializer
    implements PrimitiveSerializer<SearchReindexState> {
  @override
  final Iterable<Type> types = const [SearchReindexState, _$SearchReindexState];

  @override
  final String wireName = r'SearchReindexState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchReindexState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(SearchReindexStateStateEnum),
    );
    if (object.fromModel != null) {
      yield r'fromModel';
      yield serializers.serialize(
        object.fromModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.toModel != null) {
      yield r'toModel';
      yield serializers.serialize(
        object.toModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.done != null) {
      yield r'done';
      yield serializers.serialize(
        object.done,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.percent != null) {
      yield r'percent';
      yield serializers.serialize(
        object.percent,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.ratePerMinute != null) {
      yield r'ratePerMinute';
      yield serializers.serialize(
        object.ratePerMinute,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.etaSeconds != null) {
      yield r'etaSeconds';
      yield serializers.serialize(
        object.etaSeconds,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchReindexState object, {
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
    required SearchReindexStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SearchReindexStateStateEnum),
                  )
                  as SearchReindexStateStateEnum;
          result.state = valueDes;
          break;
        case r'fromModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fromModel = valueDes;
          break;
        case r'toModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.toModel = valueDes;
          break;
        case r'total':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
        case r'done':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.done = valueDes;
          break;
        case r'percent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.percent = valueDes;
          break;
        case r'ratePerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.ratePerMinute = valueDes;
          break;
        case r'etaSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.etaSeconds = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchReindexState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchReindexStateBuilder();
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

class SearchReindexStateStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'idle')
  static const SearchReindexStateStateEnum idle =
      _$searchReindexStateStateEnum_idle;
  @BuiltValueEnumConst(wireName: r'backfilling')
  static const SearchReindexStateStateEnum backfilling =
      _$searchReindexStateStateEnum_backfilling;
  @BuiltValueEnumConst(wireName: r'indexing')
  static const SearchReindexStateStateEnum indexing =
      _$searchReindexStateStateEnum_indexing;
  @BuiltValueEnumConst(wireName: r'swapping')
  static const SearchReindexStateStateEnum swapping =
      _$searchReindexStateStateEnum_swapping;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SearchReindexStateStateEnum unknownDefaultOpenApi =
      _$searchReindexStateStateEnum_unknownDefaultOpenApi;

  static Serializer<SearchReindexStateStateEnum> get serializer =>
      _$searchReindexStateStateEnumSerializer;

  const SearchReindexStateStateEnum._(String name) : super(name);

  static BuiltSet<SearchReindexStateStateEnum> get values =>
      _$searchReindexStateStateEnumValues;
  static SearchReindexStateStateEnum valueOf(String name) =>
      _$searchReindexStateStateEnumValueOf(name);
}
