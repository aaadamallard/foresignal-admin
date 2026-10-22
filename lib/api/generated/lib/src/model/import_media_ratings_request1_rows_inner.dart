//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_media_ratings_request1_rows_inner.g.dart';

/// Operator rating row
///
/// Properties:
/// * [domain]
/// * [dimension] - Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
/// * [value]
/// * [label]
/// * [licence]
/// * [attribution]
@BuiltValue()
abstract class ImportMediaRatingsRequest1RowsInner
    implements
        Built<
          ImportMediaRatingsRequest1RowsInner,
          ImportMediaRatingsRequest1RowsInnerBuilder
        > {
  @BuiltValueField(wireName: r'domain')
  String get domain;

  /// Rating dimension; provider axes that are not left–right are recorded as `{provider}:{axis}`, never forced into lean
  @BuiltValueField(wireName: r'dimension')
  JsonObject? get dimension;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'attribution')
  String get attribution;

  ImportMediaRatingsRequest1RowsInner._();

  factory ImportMediaRatingsRequest1RowsInner([
    void updates(ImportMediaRatingsRequest1RowsInnerBuilder b),
  ]) = _$ImportMediaRatingsRequest1RowsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportMediaRatingsRequest1RowsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportMediaRatingsRequest1RowsInner> get serializer =>
      _$ImportMediaRatingsRequest1RowsInnerSerializer();
}

class _$ImportMediaRatingsRequest1RowsInnerSerializer
    implements PrimitiveSerializer<ImportMediaRatingsRequest1RowsInner> {
  @override
  final Iterable<Type> types = const [
    ImportMediaRatingsRequest1RowsInner,
    _$ImportMediaRatingsRequest1RowsInner,
  ];

  @override
  final String wireName = r'ImportMediaRatingsRequest1RowsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportMediaRatingsRequest1RowsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'dimension';
    yield object.dimension == null
        ? null
        : serializers.serialize(
            object.dimension,
            specifiedType: const FullType.nullable(JsonObject),
          );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportMediaRatingsRequest1RowsInner object, {
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
    required ImportMediaRatingsRequest1RowsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.domain = valueDes;
          break;
        case r'dimension':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.dimension = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.value = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.licence = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.attribution = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportMediaRatingsRequest1RowsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportMediaRatingsRequest1RowsInnerBuilder();
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
