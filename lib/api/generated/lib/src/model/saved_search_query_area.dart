//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_query_area.g.dart';

/// Search area
///
/// Properties:
/// * [bbox] - minLon,minLat,maxLon,maxLat
/// * [geometry]
/// * [placeId] - 036 place id
@BuiltValue()
abstract class SavedSearchQueryArea
    implements Built<SavedSearchQueryArea, SavedSearchQueryAreaBuilder> {
  /// minLon,minLat,maxLon,maxLat
  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// 036 place id
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  SavedSearchQueryArea._();

  factory SavedSearchQueryArea([void updates(SavedSearchQueryAreaBuilder b)]) =
      _$SavedSearchQueryArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchQueryAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchQueryArea> get serializer =>
      _$SavedSearchQueryAreaSerializer();
}

class _$SavedSearchQueryAreaSerializer
    implements PrimitiveSerializer<SavedSearchQueryArea> {
  @override
  final Iterable<Type> types = const [
    SavedSearchQueryArea,
    _$SavedSearchQueryArea,
  ];

  @override
  final String wireName = r'SavedSearchQueryArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchQueryArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
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
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchQueryArea object, {
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
    required SavedSearchQueryAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchQueryArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchQueryAreaBuilder();
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
