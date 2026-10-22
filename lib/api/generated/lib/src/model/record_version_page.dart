//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_version_page.g.dart';

/// Page of versions of one record, ordered by seq
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque seq cursor; null on the last page
@BuiltValue()
abstract class RecordVersionPage
    implements Built<RecordVersionPage, RecordVersionPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RecordVersion> get items;

  /// Opaque seq cursor; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  RecordVersionPage._();

  factory RecordVersionPage([void updates(RecordVersionPageBuilder b)]) =
      _$RecordVersionPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordVersionPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordVersionPage> get serializer =>
      _$RecordVersionPageSerializer();
}

class _$RecordVersionPageSerializer
    implements PrimitiveSerializer<RecordVersionPage> {
  @override
  final Iterable<Type> types = const [RecordVersionPage, _$RecordVersionPage];

  @override
  final String wireName = r'RecordVersionPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordVersionPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RecordVersion)]),
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
    RecordVersionPage object, {
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
    required RecordVersionPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RecordVersion),
                    ]),
                  )
                  as BuiltList<RecordVersion>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  RecordVersionPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordVersionPageBuilder();
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
