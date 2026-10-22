//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/reference_import.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_import_page.g.dart';

/// A page of reference imports, newest first
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class ReferenceImportPage
    implements Built<ReferenceImportPage, ReferenceImportPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ReferenceImport> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ReferenceImportPage._();

  factory ReferenceImportPage([void updates(ReferenceImportPageBuilder b)]) =
      _$ReferenceImportPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceImportPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceImportPage> get serializer =>
      _$ReferenceImportPageSerializer();
}

class _$ReferenceImportPageSerializer
    implements PrimitiveSerializer<ReferenceImportPage> {
  @override
  final Iterable<Type> types = const [
    ReferenceImportPage,
    _$ReferenceImportPage
  ];

  @override
  final String wireName = r'ReferenceImportPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceImportPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ReferenceImport)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceImportPage object, {
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
    required ReferenceImportPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ReferenceImport)]),
          ) as BuiltList<ReferenceImport>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceImportPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceImportPageBuilder();
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
