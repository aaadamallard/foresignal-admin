//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_thread_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_thread_page.g.dart';

/// One page of a chronicle thread
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
/// * [unreadCount]
/// * [readUpTo] - Caller's read cursor
@BuiltValue()
abstract class ChronicleThreadPage
    implements Built<ChronicleThreadPage, ChronicleThreadPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ChronicleThreadItem> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'unreadCount')
  int? get unreadCount;

  /// Caller's read cursor
  @BuiltValueField(wireName: r'readUpTo')
  int? get readUpTo;

  ChronicleThreadPage._();

  factory ChronicleThreadPage([void updates(ChronicleThreadPageBuilder b)]) =
      _$ChronicleThreadPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleThreadPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleThreadPage> get serializer =>
      _$ChronicleThreadPageSerializer();
}

class _$ChronicleThreadPageSerializer
    implements PrimitiveSerializer<ChronicleThreadPage> {
  @override
  final Iterable<Type> types = const [
    ChronicleThreadPage,
    _$ChronicleThreadPage,
  ];

  @override
  final String wireName = r'ChronicleThreadPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleThreadPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ChronicleThreadItem)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
    if (object.unreadCount != null) {
      yield r'unreadCount';
      yield serializers.serialize(
        object.unreadCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.readUpTo != null) {
      yield r'readUpTo';
      yield serializers.serialize(
        object.readUpTo,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleThreadPage object, {
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
    required ChronicleThreadPageBuilder result,
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
                      FullType(ChronicleThreadItem),
                    ]),
                  )
                  as BuiltList<ChronicleThreadItem>;
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
        case r'unreadCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.unreadCount = valueDes;
          break;
        case r'readUpTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.readUpTo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleThreadPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleThreadPageBuilder();
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
