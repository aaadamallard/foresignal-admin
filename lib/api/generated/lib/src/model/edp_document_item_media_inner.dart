//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_document_item_media_inner.g.dart';

/// EdpDocumentItemMediaInner
///
/// Properties:
/// * [type]
/// * [url]
/// * [thumbUrl]
@BuiltValue()
abstract class EdpDocumentItemMediaInner
    implements
        Built<EdpDocumentItemMediaInner, EdpDocumentItemMediaInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'thumbUrl')
  String? get thumbUrl;

  EdpDocumentItemMediaInner._();

  factory EdpDocumentItemMediaInner([
    void updates(EdpDocumentItemMediaInnerBuilder b),
  ]) = _$EdpDocumentItemMediaInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpDocumentItemMediaInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpDocumentItemMediaInner> get serializer =>
      _$EdpDocumentItemMediaInnerSerializer();
}

class _$EdpDocumentItemMediaInnerSerializer
    implements PrimitiveSerializer<EdpDocumentItemMediaInner> {
  @override
  final Iterable<Type> types = const [
    EdpDocumentItemMediaInner,
    _$EdpDocumentItemMediaInner,
  ];

  @override
  final String wireName = r'EdpDocumentItemMediaInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpDocumentItemMediaInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.thumbUrl != null) {
      yield r'thumbUrl';
      yield serializers.serialize(
        object.thumbUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpDocumentItemMediaInner object, {
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
    required EdpDocumentItemMediaInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        case r'thumbUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.thumbUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpDocumentItemMediaInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpDocumentItemMediaInnerBuilder();
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
