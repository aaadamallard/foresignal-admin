//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/federation_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_change_page.g.dart';

/// Federation change feed page (113)
///
/// Properties:
/// * [items]
/// * [lastSeq] - Pass as `after` next time
/// * [hasMore]
/// * [watermarkSeq]
@BuiltValue()
abstract class FederationChangePage
    implements Built<FederationChangePage, FederationChangePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<FederationItem> get items;

  /// Pass as `after` next time
  @BuiltValueField(wireName: r'lastSeq')
  int get lastSeq;

  @BuiltValueField(wireName: r'hasMore')
  bool get hasMore;

  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  FederationChangePage._();

  factory FederationChangePage([void updates(FederationChangePageBuilder b)]) =
      _$FederationChangePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationChangePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationChangePage> get serializer =>
      _$FederationChangePageSerializer();
}

class _$FederationChangePageSerializer
    implements PrimitiveSerializer<FederationChangePage> {
  @override
  final Iterable<Type> types = const [
    FederationChangePage,
    _$FederationChangePage,
  ];

  @override
  final String wireName = r'FederationChangePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationChangePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(FederationItem)]),
    );
    yield r'lastSeq';
    yield serializers.serialize(
      object.lastSeq,
      specifiedType: const FullType(int),
    );
    yield r'hasMore';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationChangePage object, {
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
    required FederationChangePageBuilder result,
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
        case r'lastSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.lastSeq = valueDes;
          break;
        case r'hasMore':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.hasMore = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederationChangePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationChangePageBuilder();
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
