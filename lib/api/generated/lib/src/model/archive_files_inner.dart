//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_files_inner.g.dart';

/// ArchiveFilesInner
///
/// Properties:
/// * [name]
/// * [sourceId]
/// * [tier]
/// * [fromSeq]
/// * [toSeq]
/// * [fromTime]
/// * [toTime]
/// * [rows]
/// * [bytes]
/// * [sha256]
/// * [location]
@BuiltValue()
abstract class ArchiveFilesInner
    implements Built<ArchiveFilesInner, ArchiveFilesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'tier')
  ArchiveFilesInnerTierEnum? get tier;
  // enum tierEnum {  standard,  track,  };

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'fromTime')
  DateTime? get fromTime;

  @BuiltValueField(wireName: r'toTime')
  DateTime? get toTime;

  @BuiltValueField(wireName: r'rows')
  int? get rows;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'sha256')
  String? get sha256;

  @BuiltValueField(wireName: r'location')
  String? get location;

  ArchiveFilesInner._();

  factory ArchiveFilesInner([void updates(ArchiveFilesInnerBuilder b)]) =
      _$ArchiveFilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveFilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveFilesInner> get serializer =>
      _$ArchiveFilesInnerSerializer();
}

class _$ArchiveFilesInnerSerializer
    implements PrimitiveSerializer<ArchiveFilesInner> {
  @override
  final Iterable<Type> types = const [ArchiveFilesInner, _$ArchiveFilesInner];

  @override
  final String wireName = r'ArchiveFilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveFilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.tier != null) {
      yield r'tier';
      yield serializers.serialize(
        object.tier,
        specifiedType: const FullType(ArchiveFilesInnerTierEnum),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.fromTime != null) {
      yield r'fromTime';
      yield serializers.serialize(
        object.fromTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.toTime != null) {
      yield r'toTime';
      yield serializers.serialize(
        object.toTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.sha256 != null) {
      yield r'sha256';
      yield serializers.serialize(
        object.sha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveFilesInner object, {
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
    required ArchiveFilesInnerBuilder result,
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
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'tier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ArchiveFilesInnerTierEnum,
                    ),
                  )
                  as ArchiveFilesInnerTierEnum?;
          if (valueDes == null) continue;
          result.tier = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'fromTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.fromTime = valueDes;
          break;
        case r'toTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.toTime = valueDes;
          break;
        case r'rows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rows = valueDes;
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
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sha256 = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveFilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveFilesInnerBuilder();
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

class ArchiveFilesInnerTierEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'standard')
  static const ArchiveFilesInnerTierEnum standard =
      _$archiveFilesInnerTierEnum_standard;
  @BuiltValueEnumConst(wireName: r'track')
  static const ArchiveFilesInnerTierEnum track =
      _$archiveFilesInnerTierEnum_track;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ArchiveFilesInnerTierEnum unknownDefaultOpenApi =
      _$archiveFilesInnerTierEnum_unknownDefaultOpenApi;

  static Serializer<ArchiveFilesInnerTierEnum> get serializer =>
      _$archiveFilesInnerTierEnumSerializer;

  const ArchiveFilesInnerTierEnum._(String name) : super(name);

  static BuiltSet<ArchiveFilesInnerTierEnum> get values =>
      _$archiveFilesInnerTierEnumValues;
  static ArchiveFilesInnerTierEnum valueOf(String name) =>
      _$archiveFilesInnerTierEnumValueOf(name);
}
