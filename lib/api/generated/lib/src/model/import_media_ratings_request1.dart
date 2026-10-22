//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/import_media_ratings_request1_rows_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_media_ratings_request1.g.dart';

/// Operator rows
///
/// Properties:
/// * [rows]
@BuiltValue()
abstract class ImportMediaRatingsRequest1
    implements
        Built<ImportMediaRatingsRequest1, ImportMediaRatingsRequest1Builder> {
  @BuiltValueField(wireName: r'rows')
  BuiltList<ImportMediaRatingsRequest1RowsInner> get rows;

  ImportMediaRatingsRequest1._();

  factory ImportMediaRatingsRequest1(
          [void updates(ImportMediaRatingsRequest1Builder b)]) =
      _$ImportMediaRatingsRequest1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportMediaRatingsRequest1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportMediaRatingsRequest1> get serializer =>
      _$ImportMediaRatingsRequest1Serializer();
}

class _$ImportMediaRatingsRequest1Serializer
    implements PrimitiveSerializer<ImportMediaRatingsRequest1> {
  @override
  final Iterable<Type> types = const [
    ImportMediaRatingsRequest1,
    _$ImportMediaRatingsRequest1
  ];

  @override
  final String wireName = r'ImportMediaRatingsRequest1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportMediaRatingsRequest1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(
          BuiltList, [FullType(ImportMediaRatingsRequest1RowsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportMediaRatingsRequest1 object, {
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
    required ImportMediaRatingsRequest1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ImportMediaRatingsRequest1RowsInner)]),
          ) as BuiltList<ImportMediaRatingsRequest1RowsInner>;
          result.rows.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportMediaRatingsRequest1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportMediaRatingsRequest1Builder();
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
