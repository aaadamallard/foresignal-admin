//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/federation_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_snapshot_page.g.dart';

/// Federation snapshot page of current heads at a pinned watermark (113)
///
/// Properties:
/// * [items]
/// * [atSeq] - Watermark the snapshot is pinned to; resume the change feed from here
/// * [nextCursor]
@BuiltValue()
abstract class FederationSnapshotPage
    implements Built<FederationSnapshotPage, FederationSnapshotPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<FederationItem> get items;

  /// Watermark the snapshot is pinned to; resume the change feed from here
  @BuiltValueField(wireName: r'atSeq')
  int get atSeq;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  FederationSnapshotPage._();

  factory FederationSnapshotPage([
    void updates(FederationSnapshotPageBuilder b),
  ]) = _$FederationSnapshotPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationSnapshotPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationSnapshotPage> get serializer =>
      _$FederationSnapshotPageSerializer();
}

class _$FederationSnapshotPageSerializer
    implements PrimitiveSerializer<FederationSnapshotPage> {
  @override
  final Iterable<Type> types = const [
    FederationSnapshotPage,
    _$FederationSnapshotPage,
  ];

  @override
  final String wireName = r'FederationSnapshotPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationSnapshotPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(FederationItem)]),
    );
    yield r'atSeq';
    yield serializers.serialize(
      object.atSeq,
      specifiedType: const FullType(int),
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
    FederationSnapshotPage object, {
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
    required FederationSnapshotPageBuilder result,
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
                      FullType(FederationItem),
                    ]),
                  )
                  as BuiltList<FederationItem>;
          result.items.replace(valueDes);
          break;
        case r'atSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.atSeq = valueDes;
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
  FederationSnapshotPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationSnapshotPageBuilder();
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
