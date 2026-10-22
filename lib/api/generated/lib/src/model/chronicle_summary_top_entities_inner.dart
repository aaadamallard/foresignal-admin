//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_summary_top_entities_inner.g.dart';

/// Most frequent entity
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [count]
@BuiltValue()
abstract class ChronicleSummaryTopEntitiesInner
    implements
        Built<
          ChronicleSummaryTopEntitiesInner,
          ChronicleSummaryTopEntitiesInnerBuilder
        > {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'count')
  int get count;

  ChronicleSummaryTopEntitiesInner._();

  factory ChronicleSummaryTopEntitiesInner([
    void updates(ChronicleSummaryTopEntitiesInnerBuilder b),
  ]) = _$ChronicleSummaryTopEntitiesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSummaryTopEntitiesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSummaryTopEntitiesInner> get serializer =>
      _$ChronicleSummaryTopEntitiesInnerSerializer();
}

class _$ChronicleSummaryTopEntitiesInnerSerializer
    implements PrimitiveSerializer<ChronicleSummaryTopEntitiesInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSummaryTopEntitiesInner,
    _$ChronicleSummaryTopEntitiesInner,
  ];

  @override
  final String wireName = r'ChronicleSummaryTopEntitiesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSummaryTopEntitiesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSummaryTopEntitiesInner object, {
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
    required ChronicleSummaryTopEntitiesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSummaryTopEntitiesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSummaryTopEntitiesInnerBuilder();
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
