//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/fetch_log_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_page.g.dart';

/// Keyset page of fetch-log entries, newest first
///
/// Properties:
/// * [items]
/// * [nextAfter] - Pass as `after` for the next page; null on the last page
@BuiltValue()
abstract class FetchPage implements Built<FetchPage, FetchPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<FetchLogEntry> get items;

  /// Pass as `after` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextAfter')
  int? get nextAfter;

  FetchPage._();

  factory FetchPage([void updates(FetchPageBuilder b)]) = _$FetchPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FetchPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FetchPage> get serializer => _$FetchPageSerializer();
}

class _$FetchPageSerializer implements PrimitiveSerializer<FetchPage> {
  @override
  final Iterable<Type> types = const [FetchPage, _$FetchPage];

  @override
  final String wireName = r'FetchPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FetchPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(FetchLogEntry)]),
    );
    if (object.nextAfter != null) {
      yield r'nextAfter';
      yield serializers.serialize(
        object.nextAfter,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FetchPage object, {
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
    required FetchPageBuilder result,
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
                      FullType(FetchLogEntry),
                    ]),
                  )
                  as BuiltList<FetchLogEntry>;
          result.items.replace(valueDes);
          break;
        case r'nextAfter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nextAfter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FetchPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FetchPageBuilder();
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
