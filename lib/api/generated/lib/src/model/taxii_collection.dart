//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxii_collection.g.dart';

/// TAXII 2.1 collection resource
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [canRead]
/// * [canWrite]
/// * [mediaTypes]
@BuiltValue()
abstract class TaxiiCollection
    implements Built<TaxiiCollection, TaxiiCollectionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'can_read')
  bool get canRead;

  @BuiltValueField(wireName: r'can_write')
  bool get canWrite;

  @BuiltValueField(wireName: r'media_types')
  BuiltList<String>? get mediaTypes;

  TaxiiCollection._();

  factory TaxiiCollection([void updates(TaxiiCollectionBuilder b)]) =
      _$TaxiiCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaxiiCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaxiiCollection> get serializer =>
      _$TaxiiCollectionSerializer();
}

class _$TaxiiCollectionSerializer
    implements PrimitiveSerializer<TaxiiCollection> {
  @override
  final Iterable<Type> types = const [TaxiiCollection, _$TaxiiCollection];

  @override
  final String wireName = r'TaxiiCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaxiiCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'can_read';
    yield serializers.serialize(
      object.canRead,
      specifiedType: const FullType(bool),
    );
    yield r'can_write';
    yield serializers.serialize(
      object.canWrite,
      specifiedType: const FullType(bool),
    );
    if (object.mediaTypes != null) {
      yield r'media_types';
      yield serializers.serialize(
        object.mediaTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaxiiCollection object, {
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
    required TaxiiCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
        case r'can_read':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.canRead = valueDes;
          break;
        case r'can_write':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.canWrite = valueDes;
          break;
        case r'media_types':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mediaTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaxiiCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaxiiCollectionBuilder();
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
