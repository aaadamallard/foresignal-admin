//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive.g.dart';

/// A cold-storage archive segment: data phased out of the hot DB, verified, then purged locally (B3/179)
///
/// Properties:
/// * [id]
/// * [status]
/// * [createdAt]
/// * [cutoff] - Data older than this was archived
/// * [target] - Archive tier target
/// * [location] - Path or object key of the archive
/// * [sizeBytes]
/// * [itemCount]
/// * [checksum] - Verification checksum of the archived export
/// * [purgedFromHot] - True once the archived data was purged from the hot store
/// * [restoredAt]
@BuiltValue()
abstract class Archive implements Built<Archive, ArchiveBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Data older than this was archived
  @BuiltValueField(wireName: r'cutoff')
  DateTime? get cutoff;

  /// Archive tier target
  @BuiltValueField(wireName: r'target')
  String get target;

  /// Path or object key of the archive
  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'itemCount')
  int? get itemCount;

  /// Verification checksum of the archived export
  @BuiltValueField(wireName: r'checksum')
  String? get checksum;

  /// True once the archived data was purged from the hot store
  @BuiltValueField(wireName: r'purgedFromHot')
  bool? get purgedFromHot;

  @BuiltValueField(wireName: r'restoredAt')
  DateTime? get restoredAt;

  Archive._();

  factory Archive([void updates(ArchiveBuilder b)]) = _$Archive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Archive> get serializer => _$ArchiveSerializer();
}

class _$ArchiveSerializer implements PrimitiveSerializer<Archive> {
  @override
  final Iterable<Type> types = const [Archive, _$Archive];

  @override
  final String wireName = r'Archive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Archive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.itemCount != null) {
      yield r'itemCount';
      yield serializers.serialize(
        object.itemCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.checksum != null) {
      yield r'checksum';
      yield serializers.serialize(
        object.checksum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.purgedFromHot != null) {
      yield r'purgedFromHot';
      yield serializers.serialize(
        object.purgedFromHot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restoredAt != null) {
      yield r'restoredAt';
      yield serializers.serialize(
        object.restoredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Archive object, {
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
    required ArchiveBuilder result,
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
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
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.target = valueDes;
          break;
        case r'location':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'itemCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.itemCount = valueDes;
          break;
        case r'checksum':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.checksum = valueDes;
          break;
        case r'purgedFromHot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.purgedFromHot = valueDes;
          break;
        case r'restoredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.restoredAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Archive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveBuilder();
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
