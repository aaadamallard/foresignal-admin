//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_content_links.g.dart';

/// Sub-resources available for this target
///
/// Properties:
/// * [geojson]
/// * [tiles] - Tile URL template (views and tracks)
/// * [download] - Exports only
@BuiltValue()
abstract class SharedContentLinks
    implements Built<SharedContentLinks, SharedContentLinksBuilder> {
  @BuiltValueField(wireName: r'geojson')
  String? get geojson;

  /// Tile URL template (views and tracks)
  @BuiltValueField(wireName: r'tiles')
  String? get tiles;

  /// Exports only
  @BuiltValueField(wireName: r'download')
  String? get download;

  SharedContentLinks._();

  factory SharedContentLinks([void updates(SharedContentLinksBuilder b)]) =
      _$SharedContentLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SharedContentLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SharedContentLinks> get serializer =>
      _$SharedContentLinksSerializer();
}

class _$SharedContentLinksSerializer
    implements PrimitiveSerializer<SharedContentLinks> {
  @override
  final Iterable<Type> types = const [SharedContentLinks, _$SharedContentLinks];

  @override
  final String wireName = r'SharedContentLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SharedContentLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.geojson != null) {
      yield r'geojson';
      yield serializers.serialize(
        object.geojson,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tiles != null) {
      yield r'tiles';
      yield serializers.serialize(
        object.tiles,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.download != null) {
      yield r'download';
      yield serializers.serialize(
        object.download,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SharedContentLinks object, {
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
    required SharedContentLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'geojson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.geojson = valueDes;
          break;
        case r'tiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tiles = valueDes;
          break;
        case r'download':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.download = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SharedContentLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SharedContentLinksBuilder();
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
