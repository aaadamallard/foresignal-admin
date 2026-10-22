//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/search_result.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_results.g.dart';

/// SearchResults
///
/// Properties:
/// * [mode]
/// * [items]
/// * [degraded] - True when semantic was requested but text was used
/// * [attributions]
/// * [licenceFiltered]
/// * [reason] - Why semantic results were not used, when `degraded` is true (027)
@BuiltValue()
abstract class SearchResults
    implements Built<SearchResults, SearchResultsBuilder> {
  @BuiltValueField(wireName: r'mode')
  SearchResultsModeEnum get mode;
  // enum modeEnum {  hybrid,  semantic,  text,  };

  @BuiltValueField(wireName: r'items')
  BuiltList<SearchResult> get items;

  /// True when semantic was requested but text was used
  @BuiltValueField(wireName: r'degraded')
  bool? get degraded;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  /// Why semantic results were not used, when `degraded` is true (027)
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  SearchResults._();

  factory SearchResults([void updates(SearchResultsBuilder b)]) =
      _$SearchResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchResults> get serializer =>
      _$SearchResultsSerializer();
}

class _$SearchResultsSerializer implements PrimitiveSerializer<SearchResults> {
  @override
  final Iterable<Type> types = const [SearchResults, _$SearchResults];

  @override
  final String wireName = r'SearchResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(SearchResultsModeEnum),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SearchResult)]),
    );
    if (object.degraded != null) {
      yield r'degraded';
      yield serializers.serialize(
        object.degraded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.licenceFiltered != null) {
      yield r'licenceFiltered';
      yield serializers.serialize(
        object.licenceFiltered,
        specifiedType: const FullType(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchResults object, {
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
    required SearchResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SearchResultsModeEnum),
                  )
                  as SearchResultsModeEnum;
          result.mode = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SearchResult),
                    ]),
                  )
                  as BuiltList<SearchResult>;
          result.items.replace(valueDes);
          break;
        case r'degraded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.degraded = valueDes;
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'licenceFiltered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.licenceFiltered = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchResultsBuilder();
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

class SearchResultsModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hybrid')
  static const SearchResultsModeEnum hybrid = _$searchResultsModeEnum_hybrid;
  @BuiltValueEnumConst(wireName: r'semantic')
  static const SearchResultsModeEnum semantic =
      _$searchResultsModeEnum_semantic;
  @BuiltValueEnumConst(wireName: r'text')
  static const SearchResultsModeEnum text = _$searchResultsModeEnum_text;

  static Serializer<SearchResultsModeEnum> get serializer =>
      _$searchResultsModeEnumSerializer;

  const SearchResultsModeEnum._(String name) : super(name);

  static BuiltSet<SearchResultsModeEnum> get values =>
      _$searchResultsModeEnumValues;
  static SearchResultsModeEnum valueOf(String name) =>
      _$searchResultsModeEnumValueOf(name);
}
