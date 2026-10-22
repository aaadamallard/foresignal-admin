//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_link.g.dart';

/// OGC API link
///
/// Properties:
/// * [href]
/// * [rel]
/// * [type]
/// * [title]
/// * [templated]
@BuiltValue()
abstract class OgcLink implements Built<OgcLink, OgcLinkBuilder> {
  @BuiltValueField(wireName: r'href')
  String get href;

  @BuiltValueField(wireName: r'rel')
  String get rel;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'templated')
  bool? get templated;

  OgcLink._();

  factory OgcLink([void updates(OgcLinkBuilder b)]) = _$OgcLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcLink> get serializer => _$OgcLinkSerializer();
}

class _$OgcLinkSerializer implements PrimitiveSerializer<OgcLink> {
  @override
  final Iterable<Type> types = const [OgcLink, _$OgcLink];

  @override
  final String wireName = r'OgcLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'href';
    yield serializers.serialize(
      object.href,
      specifiedType: const FullType(String),
    );
    yield r'rel';
    yield serializers.serialize(
      object.rel,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.templated != null) {
      yield r'templated';
      yield serializers.serialize(
        object.templated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcLink object, {
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
    required OgcLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'href':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.href = valueDes;
          break;
        case r'rel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rel = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
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
        case r'templated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.templated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcLinkBuilder();
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
