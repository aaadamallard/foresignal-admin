//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/saved_search_query_area.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/saved_search_query_time_window.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_query.g.dart';

/// A saved query over object envelopes: 027 hybrid search plus structured filters
///
/// Properties:
/// * [types] - Object types (Client-Contract §2); empty = all
/// * [text]
/// * [filters] - Structured filters (sources, kinds, severity, status…)
/// * [area]
/// * [timeWindow]
/// * [tags] - Tag ids the objects must carry
@BuiltValue()
abstract class SavedSearchQuery
    implements Built<SavedSearchQuery, SavedSearchQueryBuilder> {
  /// Object types (Client-Contract §2); empty = all
  @BuiltValueField(wireName: r'types')
  BuiltList<String>? get types;

  @BuiltValueField(wireName: r'text')
  String? get text;

  /// Structured filters (sources, kinds, severity, status…)
  @BuiltValueField(wireName: r'filters')
  BuiltMap<String, JsonObject?>? get filters;

  @BuiltValueField(wireName: r'area')
  SavedSearchQueryArea? get area;

  @BuiltValueField(wireName: r'timeWindow')
  SavedSearchQueryTimeWindow? get timeWindow;

  /// Tag ids the objects must carry
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  SavedSearchQuery._();

  factory SavedSearchQuery([void updates(SavedSearchQueryBuilder b)]) =
      _$SavedSearchQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchQuery> get serializer =>
      _$SavedSearchQuerySerializer();
}

class _$SavedSearchQuerySerializer
    implements PrimitiveSerializer<SavedSearchQuery> {
  @override
  final Iterable<Type> types = const [SavedSearchQuery, _$SavedSearchQuery];

  @override
  final String wireName = r'SavedSearchQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(SavedSearchQueryArea),
      );
    }
    if (object.timeWindow != null) {
      yield r'timeWindow';
      yield serializers.serialize(
        object.timeWindow,
        specifiedType: const FullType.nullable(SavedSearchQueryTimeWindow),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchQuery object, {
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
    required SavedSearchQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SavedSearchQueryArea),
          ) as SavedSearchQueryArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'timeWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SavedSearchQueryTimeWindow),
          ) as SavedSearchQueryTimeWindow?;
          if (valueDes == null) continue;
          result.timeWindow.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchQueryBuilder();
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
