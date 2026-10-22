//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_cluster.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_cluster_page.g.dart';

/// One page of chronicle clusters
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class ChronicleClusterPage
    implements Built<ChronicleClusterPage, ChronicleClusterPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ChronicleCluster> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ChronicleClusterPage._();

  factory ChronicleClusterPage([void updates(ChronicleClusterPageBuilder b)]) =
      _$ChronicleClusterPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleClusterPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleClusterPage> get serializer =>
      _$ChronicleClusterPageSerializer();
}

class _$ChronicleClusterPageSerializer
    implements PrimitiveSerializer<ChronicleClusterPage> {
  @override
  final Iterable<Type> types = const [
    ChronicleClusterPage,
    _$ChronicleClusterPage,
  ];

  @override
  final String wireName = r'ChronicleClusterPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleClusterPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ChronicleCluster)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleClusterPage object, {
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
    required ChronicleClusterPageBuilder result,
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
                      FullType(ChronicleCluster),
                    ]),
                  )
                  as BuiltList<ChronicleCluster>;
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
  ChronicleClusterPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleClusterPageBuilder();
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
