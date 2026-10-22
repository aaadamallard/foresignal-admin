//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_document_item_author.g.dart';

/// EdpDocumentItemAuthor
///
/// Properties:
/// * [handle]
/// * [name]
/// * [accountId]
@BuiltValue()
abstract class EdpDocumentItemAuthor
    implements Built<EdpDocumentItemAuthor, EdpDocumentItemAuthorBuilder> {
  @BuiltValueField(wireName: r'handle')
  String? get handle;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  EdpDocumentItemAuthor._();

  factory EdpDocumentItemAuthor([
    void updates(EdpDocumentItemAuthorBuilder b),
  ]) = _$EdpDocumentItemAuthor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpDocumentItemAuthorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpDocumentItemAuthor> get serializer =>
      _$EdpDocumentItemAuthorSerializer();
}

class _$EdpDocumentItemAuthorSerializer
    implements PrimitiveSerializer<EdpDocumentItemAuthor> {
  @override
  final Iterable<Type> types = const [
    EdpDocumentItemAuthor,
    _$EdpDocumentItemAuthor,
  ];

  @override
  final String wireName = r'EdpDocumentItemAuthor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpDocumentItemAuthor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.handle != null) {
      yield r'handle';
      yield serializers.serialize(
        object.handle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpDocumentItemAuthor object, {
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
    required EdpDocumentItemAuthorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'handle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.handle = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'accountId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.accountId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpDocumentItemAuthor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpDocumentItemAuthorBuilder();
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
