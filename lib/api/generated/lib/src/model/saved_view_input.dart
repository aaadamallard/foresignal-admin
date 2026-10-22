//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_view_input.g.dart';

/// Create or replace a saved view (036)
///
/// Properties:
/// * [slug]
/// * [name]
/// * [sources]
/// * [kinds]
/// * [placeIds]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [area]
/// * [conditions] - 017 grammar including in/notIn/exists/matches/startsWith and inWatchlist/notInWatchlist
/// * [timeField]
/// * [includeExpired]
/// * [fields] - Projection whitelist of top-level-rooted JSON paths
@BuiltValue()
abstract class SavedViewInput
    implements Built<SavedViewInput, SavedViewInputBuilder> {
  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// 017 grammar including in/notIn/exists/matches/startsWith and inWatchlist/notInWatchlist
  @BuiltValueField(wireName: r'conditions')
  BuiltList<Condition>? get conditions;

  @BuiltValueField(wireName: r'timeField')
  SavedViewInputTimeFieldEnum? get timeField;
  // enum timeFieldEnum {  effective,  observed,  event,  ingested,  };

  @BuiltValueField(wireName: r'includeExpired')
  bool? get includeExpired;

  /// Projection whitelist of top-level-rooted JSON paths
  @BuiltValueField(wireName: r'fields')
  BuiltList<String>? get fields;

  SavedViewInput._();

  factory SavedViewInput([void updates(SavedViewInputBuilder b)]) =
      _$SavedViewInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedViewInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedViewInput> get serializer =>
      _$SavedViewInputSerializer();
}

class _$SavedViewInputSerializer
    implements PrimitiveSerializer<SavedViewInput> {
  @override
  final Iterable<Type> types = const [SavedViewInput, _$SavedViewInput];

  @override
  final String wireName = r'SavedViewInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedViewInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(Condition)]),
      );
    }
    if (object.timeField != null) {
      yield r'timeField';
      yield serializers.serialize(
        object.timeField,
        specifiedType: const FullType(SavedViewInputTimeFieldEnum),
      );
    }
    if (object.includeExpired != null) {
      yield r'includeExpired';
      yield serializers.serialize(
        object.includeExpired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedViewInput object, {
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
    required SavedViewInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'placeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Condition)]),
          ) as BuiltList<Condition>?;
          if (valueDes == null) continue;
          result.conditions.replace(valueDes);
          break;
        case r'timeField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SavedViewInputTimeFieldEnum),
          ) as SavedViewInputTimeFieldEnum?;
          if (valueDes == null) continue;
          result.timeField = valueDes;
          break;
        case r'includeExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeExpired = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedViewInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedViewInputBuilder();
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

class SavedViewInputTimeFieldEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'effective')
  static const SavedViewInputTimeFieldEnum effective =
      _$savedViewInputTimeFieldEnum_effective;
  @BuiltValueEnumConst(wireName: r'observed')
  static const SavedViewInputTimeFieldEnum observed =
      _$savedViewInputTimeFieldEnum_observed;
  @BuiltValueEnumConst(wireName: r'event')
  static const SavedViewInputTimeFieldEnum event =
      _$savedViewInputTimeFieldEnum_event;
  @BuiltValueEnumConst(wireName: r'ingested')
  static const SavedViewInputTimeFieldEnum ingested =
      _$savedViewInputTimeFieldEnum_ingested;

  static Serializer<SavedViewInputTimeFieldEnum> get serializer =>
      _$savedViewInputTimeFieldEnumSerializer;

  const SavedViewInputTimeFieldEnum._(String name) : super(name);

  static BuiltSet<SavedViewInputTimeFieldEnum> get values =>
      _$savedViewInputTimeFieldEnumValues;
  static SavedViewInputTimeFieldEnum valueOf(String name) =>
      _$savedViewInputTimeFieldEnumValueOf(name);
}
