//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_cluster_members_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_cluster.g.dart';

/// Connected component of medium-or-stronger chronicle links, shown as far as the caller's disclosure allows
///
/// Properties:
/// * [id] - ULID identifier
/// * [members]
/// * [visibleMembers]
/// * [opaqueMembers]
/// * [updatedAt]
@BuiltValue()
abstract class ChronicleCluster
    implements Built<ChronicleCluster, ChronicleClusterBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'members')
  BuiltList<ChronicleClusterMembersInner> get members;

  @BuiltValueField(wireName: r'visibleMembers')
  int get visibleMembers;

  @BuiltValueField(wireName: r'opaqueMembers')
  int get opaqueMembers;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  ChronicleCluster._();

  factory ChronicleCluster([void updates(ChronicleClusterBuilder b)]) =
      _$ChronicleCluster;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleClusterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleCluster> get serializer =>
      _$ChronicleClusterSerializer();
}

class _$ChronicleClusterSerializer
    implements PrimitiveSerializer<ChronicleCluster> {
  @override
  final Iterable<Type> types = const [ChronicleCluster, _$ChronicleCluster];

  @override
  final String wireName = r'ChronicleCluster';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleCluster object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [
        FullType(ChronicleClusterMembersInner),
      ]),
    );
    yield r'visibleMembers';
    yield serializers.serialize(
      object.visibleMembers,
      specifiedType: const FullType(int),
    );
    yield r'opaqueMembers';
    yield serializers.serialize(
      object.opaqueMembers,
      specifiedType: const FullType(int),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleCluster object, {
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
    required ChronicleClusterBuilder result,
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
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ChronicleClusterMembersInner),
                    ]),
                  )
                  as BuiltList<ChronicleClusterMembersInner>;
          result.members.replace(valueDes);
          break;
        case r'visibleMembers':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.visibleMembers = valueDes;
          break;
        case r'opaqueMembers':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.opaqueMembers = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleCluster deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleClusterBuilder();
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
