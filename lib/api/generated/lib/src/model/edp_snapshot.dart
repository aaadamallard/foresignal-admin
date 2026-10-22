//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_snapshot.g.dart';

/// Marks the batch as a page of a full snapshot of one scope of a snapshot stream. Absent ids are tombstoned only when the final page arrives, every page validated, within the snapshot window, and the absent share is within the safety limit.
///
/// Properties:
/// * [id]
/// * [stream]
/// * [scope] - Value of the stream's snapshotScope property this snapshot covers; null = the whole stream
/// * [page]
/// * [final_]
@BuiltValue()
abstract class EdpSnapshot implements Built<EdpSnapshot, EdpSnapshotBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'stream')
  String get stream;

  /// Value of the stream's snapshotScope property this snapshot covers; null = the whole stream
  @BuiltValueField(wireName: r'scope')
  String? get scope;

  @BuiltValueField(wireName: r'page')
  int get page;

  @BuiltValueField(wireName: r'final')
  bool get final_;

  EdpSnapshot._();

  factory EdpSnapshot([void updates(EdpSnapshotBuilder b)]) = _$EdpSnapshot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSnapshotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSnapshot> get serializer => _$EdpSnapshotSerializer();
}

class _$EdpSnapshotSerializer implements PrimitiveSerializer<EdpSnapshot> {
  @override
  final Iterable<Type> types = const [EdpSnapshot, _$EdpSnapshot];

  @override
  final String wireName = r'EdpSnapshot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSnapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'stream';
    yield serializers.serialize(
      object.stream,
      specifiedType: const FullType(String),
    );
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(int),
    );
    yield r'final';
    yield serializers.serialize(
      object.final_,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSnapshot object, {
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
    required EdpSnapshotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stream = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'final':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.final_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSnapshot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSnapshotBuilder();
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
