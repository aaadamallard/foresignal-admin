//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_archive.g.dart';

/// Cold-archive state (111)
///
/// Properties:
/// * [state]
/// * [exportId] - ULID identifier
/// * [archivedAt]
/// * [bytes]
/// * [error]
@BuiltValue()
abstract class ChronicleArchive
    implements Built<ChronicleArchive, ChronicleArchiveBuilder> {
  @BuiltValueField(wireName: r'state')
  ChronicleArchiveStateEnum get state;
  // enum stateEnum {  pending,  archived,  restoring,  failed,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'exportId')
  String? get exportId;

  @BuiltValueField(wireName: r'archivedAt')
  DateTime? get archivedAt;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'error')
  String? get error;

  ChronicleArchive._();

  factory ChronicleArchive([void updates(ChronicleArchiveBuilder b)]) =
      _$ChronicleArchive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleArchiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleArchive> get serializer =>
      _$ChronicleArchiveSerializer();
}

class _$ChronicleArchiveSerializer
    implements PrimitiveSerializer<ChronicleArchive> {
  @override
  final Iterable<Type> types = const [ChronicleArchive, _$ChronicleArchive];

  @override
  final String wireName = r'ChronicleArchive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleArchive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ChronicleArchiveStateEnum),
    );
    if (object.exportId != null) {
      yield r'exportId';
      yield serializers.serialize(
        object.exportId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.archivedAt != null) {
      yield r'archivedAt';
      yield serializers.serialize(
        object.archivedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleArchive object, {
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
    required ChronicleArchiveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChronicleArchiveStateEnum),
                  )
                  as ChronicleArchiveStateEnum;
          result.state = valueDes;
          break;
        case r'exportId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exportId = valueDes;
          break;
        case r'archivedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.archivedAt = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleArchive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleArchiveBuilder();
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

class ChronicleArchiveStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const ChronicleArchiveStateEnum pending =
      _$chronicleArchiveStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'archived')
  static const ChronicleArchiveStateEnum archived =
      _$chronicleArchiveStateEnum_archived;
  @BuiltValueEnumConst(wireName: r'restoring')
  static const ChronicleArchiveStateEnum restoring =
      _$chronicleArchiveStateEnum_restoring;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ChronicleArchiveStateEnum failed =
      _$chronicleArchiveStateEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleArchiveStateEnum unknownDefaultOpenApi =
      _$chronicleArchiveStateEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleArchiveStateEnum> get serializer =>
      _$chronicleArchiveStateEnumSerializer;

  const ChronicleArchiveStateEnum._(String name) : super(name);

  static BuiltSet<ChronicleArchiveStateEnum> get values =>
      _$chronicleArchiveStateEnumValues;
  static ChronicleArchiveStateEnum valueOf(String name) =>
      _$chronicleArchiveStateEnumValueOf(name);
}
