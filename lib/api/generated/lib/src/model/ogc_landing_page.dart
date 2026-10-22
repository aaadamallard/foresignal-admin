//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_landing_page.g.dart';

/// OGC API – Features landing page (112)
///
/// Properties:
/// * [title]
/// * [description]
/// * [attribution]
/// * [links] - self, conformance, data (/v1/ogc/collections), service-desc (/v1/openapi.json)
@BuiltValue()
abstract class OgcLandingPage
    implements Built<OgcLandingPage, OgcLandingPageBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  /// self, conformance, data (/v1/ogc/collections), service-desc (/v1/openapi.json)
  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  OgcLandingPage._();

  factory OgcLandingPage([void updates(OgcLandingPageBuilder b)]) =
      _$OgcLandingPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcLandingPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcLandingPage> get serializer =>
      _$OgcLandingPageSerializer();
}

class _$OgcLandingPageSerializer
    implements PrimitiveSerializer<OgcLandingPage> {
  @override
  final Iterable<Type> types = const [OgcLandingPage, _$OgcLandingPage];

  @override
  final String wireName = r'OgcLandingPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcLandingPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcLandingPage object, {
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
    required OgcLandingPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcLink),
                    ]),
                  )
                  as BuiltList<OgcLink>;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcLandingPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcLandingPageBuilder();
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
