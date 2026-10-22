//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info_publisher.g.dart';

/// EdpSourceInfoPublisher
///
/// Properties:
/// * [name]
/// * [url]
/// * [contact]
@BuiltValue()
abstract class EdpSourceInfoPublisher
    implements Built<EdpSourceInfoPublisher, EdpSourceInfoPublisherBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  EdpSourceInfoPublisher._();

  factory EdpSourceInfoPublisher(
          [void updates(EdpSourceInfoPublisherBuilder b)]) =
      _$EdpSourceInfoPublisher;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoPublisherBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfoPublisher> get serializer =>
      _$EdpSourceInfoPublisherSerializer();
}

class _$EdpSourceInfoPublisherSerializer
    implements PrimitiveSerializer<EdpSourceInfoPublisher> {
  @override
  final Iterable<Type> types = const [
    EdpSourceInfoPublisher,
    _$EdpSourceInfoPublisher
  ];

  @override
  final String wireName = r'EdpSourceInfoPublisher';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfoPublisher object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoPublisher object, {
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
    required EdpSourceInfoPublisherBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contact = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSourceInfoPublisher deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoPublisherBuilder();
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
