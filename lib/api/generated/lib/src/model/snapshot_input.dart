//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snapshot_input.g.dart';

/// Create an atSeq snapshot: state at seq S (default the current watermarkSeq, or asOf translated with S(T)) (111)
///
/// Properties:
/// * [name]
/// * [atSeq]
/// * [asOf]
/// * [sources]
/// * [kinds]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [includePrivate] - Include private sources (039); the endpoint is admin-only
/// * [personalUse] - Include FORBIDDEN and LOCAL_ONLY sources; the sidecar then says personal use only — do not redistribute
/// * [expiresAt] - Snapshots never expire unless set
@BuiltValue()
abstract class SnapshotInput
    implements Built<SnapshotInput, SnapshotInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'atSeq')
  int? get atSeq;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// Include private sources (039); the endpoint is admin-only
  @BuiltValueField(wireName: r'includePrivate')
  bool? get includePrivate;

  /// Include FORBIDDEN and LOCAL_ONLY sources; the sidecar then says personal use only — do not redistribute
  @BuiltValueField(wireName: r'personalUse')
  bool? get personalUse;

  /// Snapshots never expire unless set
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  SnapshotInput._();

  factory SnapshotInput([void updates(SnapshotInputBuilder b)]) =
      _$SnapshotInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnapshotInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SnapshotInput> get serializer =>
      _$SnapshotInputSerializer();
}

class _$SnapshotInputSerializer implements PrimitiveSerializer<SnapshotInput> {
  @override
  final Iterable<Type> types = const [SnapshotInput, _$SnapshotInput];

  @override
  final String wireName = r'SnapshotInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnapshotInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.atSeq != null) {
      yield r'atSeq';
      yield serializers.serialize(
        object.atSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.includePrivate != null) {
      yield r'includePrivate';
      yield serializers.serialize(
        object.includePrivate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.personalUse != null) {
      yield r'personalUse';
      yield serializers.serialize(
        object.personalUse,
        specifiedType: const FullType(bool),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SnapshotInput object, {
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
    required SnapshotInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'atSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.atSeq = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'includePrivate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.includePrivate = valueDes;
          break;
        case r'personalUse':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.personalUse = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SnapshotInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotInputBuilder();
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
