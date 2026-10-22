//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_record_version.dart';
import 'package:foresignal_api/src/model/chronicle_state_layers_inner_rollups_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/capture_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_state_layers_inner.g.dart';

/// One layer's state page
///
/// Properties:
/// * [layerId] - ULID identifier
/// * [name]
/// * [capture]
/// * [count]
/// * [items]
/// * [rollups]
/// * [nextCursor]
@BuiltValue()
abstract class ChronicleStateLayersInner
    implements
        Built<ChronicleStateLayersInner, ChronicleStateLayersInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'layerId')
  String get layerId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'capture')
  CaptureMode? get capture;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'items')
  BuiltList<ChronicleRecordVersion> get items;

  @BuiltValueField(wireName: r'rollups')
  BuiltList<ChronicleStateLayersInnerRollupsInner>? get rollups;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ChronicleStateLayersInner._();

  factory ChronicleStateLayersInner(
          [void updates(ChronicleStateLayersInnerBuilder b)]) =
      _$ChronicleStateLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleStateLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleStateLayersInner> get serializer =>
      _$ChronicleStateLayersInnerSerializer();
}

class _$ChronicleStateLayersInnerSerializer
    implements PrimitiveSerializer<ChronicleStateLayersInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleStateLayersInner,
    _$ChronicleStateLayersInner
  ];

  @override
  final String wireName = r'ChronicleStateLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleStateLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'layerId';
    yield serializers.serialize(
      object.layerId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.capture != null) {
      yield r'capture';
      yield serializers.serialize(
        object.capture,
        specifiedType: const FullType(CaptureMode),
      );
    }
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleRecordVersion)]),
    );
    if (object.rollups != null) {
      yield r'rollups';
      yield serializers.serialize(
        object.rollups,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleStateLayersInnerRollupsInner)]),
      );
    }
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
    ChronicleStateLayersInner object, {
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
    required ChronicleStateLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'layerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.layerId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'capture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CaptureMode),
          ) as CaptureMode?;
          if (valueDes == null) continue;
          result.capture.replace(valueDes);
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ChronicleRecordVersion)]),
          ) as BuiltList<ChronicleRecordVersion>;
          result.items.replace(valueDes);
          break;
        case r'rollups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChronicleStateLayersInnerRollupsInner)]),
          ) as BuiltList<ChronicleStateLayersInnerRollupsInner>?;
          if (valueDes == null) continue;
          result.rollups.replace(valueDes);
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
  ChronicleStateLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleStateLayersInnerBuilder();
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
