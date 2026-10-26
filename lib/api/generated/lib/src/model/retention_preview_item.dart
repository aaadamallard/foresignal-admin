//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_preview_item.g.dart';

/// What a retention policy would prune from one subsystem
///
/// Properties:
/// * [subsystem] - `records` (STANDARD history, per kind), `track` (TRACK history leaves), `frames`, `media` or `chronicles` (stopped or archived chronicles whose history would be removed)
/// * [kind] - The record kind of a `records` item; null for whole-source scopes and other subsystems
/// * [cutoff] - Oldest data kept (for a `records` kind, under its longest window); null when no single cutoff applies
/// * [affectedCount]
/// * [bytesEstimate] - Estimated bytes: records from the average row size of record_version, TRACK leaves and frames from their sizes, media from its rows, chronicles from their bytesUsed
@BuiltValue()
abstract class RetentionPreviewItem
    implements Built<RetentionPreviewItem, RetentionPreviewItemBuilder> {
  /// `records` (STANDARD history, per kind), `track` (TRACK history leaves), `frames`, `media` or `chronicles` (stopped or archived chronicles whose history would be removed)
  @BuiltValueField(wireName: r'subsystem')
  String get subsystem;

  /// The record kind of a `records` item; null for whole-source scopes and other subsystems
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Oldest data kept (for a `records` kind, under its longest window); null when no single cutoff applies
  @BuiltValueField(wireName: r'cutoff')
  DateTime? get cutoff;

  @BuiltValueField(wireName: r'affectedCount')
  int get affectedCount;

  /// Estimated bytes: records from the average row size of record_version, TRACK leaves and frames from their sizes, media from its rows, chronicles from their bytesUsed
  @BuiltValueField(wireName: r'bytesEstimate')
  int? get bytesEstimate;

  RetentionPreviewItem._();

  factory RetentionPreviewItem([void updates(RetentionPreviewItemBuilder b)]) =
      _$RetentionPreviewItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionPreviewItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionPreviewItem> get serializer =>
      _$RetentionPreviewItemSerializer();
}

class _$RetentionPreviewItemSerializer
    implements PrimitiveSerializer<RetentionPreviewItem> {
  @override
  final Iterable<Type> types = const [
    RetentionPreviewItem,
    _$RetentionPreviewItem,
  ];

  @override
  final String wireName = r'RetentionPreviewItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionPreviewItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subsystem';
    yield serializers.serialize(
      object.subsystem,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'affectedCount';
    yield serializers.serialize(
      object.affectedCount,
      specifiedType: const FullType(int),
    );
    if (object.bytesEstimate != null) {
      yield r'bytesEstimate';
      yield serializers.serialize(
        object.bytesEstimate,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionPreviewItem object, {
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
    required RetentionPreviewItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subsystem':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subsystem = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'cutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.cutoff = valueDes;
          break;
        case r'affectedCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.affectedCount = valueDes;
          break;
        case r'bytesEstimate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytesEstimate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionPreviewItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionPreviewItemBuilder();
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
