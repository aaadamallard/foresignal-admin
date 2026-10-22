//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_result.g.dart';

/// SearchResult
///
/// Properties:
/// * [docType]
/// * [docId]
/// * [score]
/// * [title]
/// * [snippet]
/// * [observedAt]
/// * [source_]
/// * [kind]
/// * [geometry]
/// * [record]
/// * [seq] - Persisted version seq the document text came from (cite with it)
/// * [effectiveTime] - COALESCE(eventTime, observedAt) of that version
@BuiltValue()
abstract class SearchResult
    implements Built<SearchResult, SearchResultBuilder> {
  @BuiltValueField(wireName: r'docType')
  SearchResultDocTypeEnum get docType;
  // enum docTypeEnum {  record,  briefing,  alert,  };

  @BuiltValueField(wireName: r'docId')
  String get docId;

  @BuiltValueField(wireName: r'score')
  num get score;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'snippet')
  String? get snippet;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'record')
  Record? get record;

  /// Persisted version seq the document text came from (cite with it)
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  /// COALESCE(eventTime, observedAt) of that version
  @BuiltValueField(wireName: r'effectiveTime')
  DateTime? get effectiveTime;

  SearchResult._();

  factory SearchResult([void updates(SearchResultBuilder b)]) = _$SearchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchResult> get serializer => _$SearchResultSerializer();
}

class _$SearchResultSerializer implements PrimitiveSerializer<SearchResult> {
  @override
  final Iterable<Type> types = const [SearchResult, _$SearchResult];

  @override
  final String wireName = r'SearchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'docType';
    yield serializers.serialize(
      object.docType,
      specifiedType: const FullType(SearchResultDocTypeEnum),
    );
    yield r'docId';
    yield serializers.serialize(
      object.docId,
      specifiedType: const FullType(String),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.snippet != null) {
      yield r'snippet';
      yield serializers.serialize(
        object.snippet,
        specifiedType: const FullType(String),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType.nullable(Record),
      );
    }
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.effectiveTime != null) {
      yield r'effectiveTime';
      yield serializers.serialize(
        object.effectiveTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchResult object, {
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
    required SearchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'docType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SearchResultDocTypeEnum),
          ) as SearchResultDocTypeEnum;
          result.docType = valueDes;
          break;
        case r'docId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.docId = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.score = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'snippet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.snippet = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'record':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Record),
          ) as Record?;
          if (valueDes == null) continue;
          result.record.replace(valueDes);
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'effectiveTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.effectiveTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchResultBuilder();
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

class SearchResultDocTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const SearchResultDocTypeEnum record =
      _$searchResultDocTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const SearchResultDocTypeEnum briefing =
      _$searchResultDocTypeEnum_briefing;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SearchResultDocTypeEnum alert = _$searchResultDocTypeEnum_alert;

  static Serializer<SearchResultDocTypeEnum> get serializer =>
      _$searchResultDocTypeEnumSerializer;

  const SearchResultDocTypeEnum._(String name) : super(name);

  static BuiltSet<SearchResultDocTypeEnum> get values =>
      _$searchResultDocTypeEnumValues;
  static SearchResultDocTypeEnum valueOf(String name) =>
      _$searchResultDocTypeEnumValueOf(name);
}
