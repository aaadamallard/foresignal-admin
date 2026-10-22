//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ratings_import_result_errors_inner.g.dart';

/// Row error
///
/// Properties:
/// * [row]
/// * [message]
@BuiltValue()
abstract class RatingsImportResultErrorsInner
    implements
        Built<RatingsImportResultErrorsInner,
            RatingsImportResultErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'row')
  int? get row;

  @BuiltValueField(wireName: r'message')
  String get message;

  RatingsImportResultErrorsInner._();

  factory RatingsImportResultErrorsInner(
          [void updates(RatingsImportResultErrorsInnerBuilder b)]) =
      _$RatingsImportResultErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingsImportResultErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingsImportResultErrorsInner> get serializer =>
      _$RatingsImportResultErrorsInnerSerializer();
}

class _$RatingsImportResultErrorsInnerSerializer
    implements PrimitiveSerializer<RatingsImportResultErrorsInner> {
  @override
  final Iterable<Type> types = const [
    RatingsImportResultErrorsInner,
    _$RatingsImportResultErrorsInner
  ];

  @override
  final String wireName = r'RatingsImportResultErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingsImportResultErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.row != null) {
      yield r'row';
      yield serializers.serialize(
        object.row,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingsImportResultErrorsInner object, {
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
    required RatingsImportResultErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'row':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.row = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatingsImportResultErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingsImportResultErrorsInnerBuilder();
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
