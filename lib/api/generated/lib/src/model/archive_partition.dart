//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/export_licence_summary.dart';
import 'package:foresignal_api/src/model/archive_partition_files_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_partition.g.dart';

/// One hive partition of the cold archive with its files (111)
///
/// Properties:
/// * [tier]
/// * [sourceId]
/// * [date] - yyyy-mm-dd of ingested_at (UTC)
/// * [path] - record_version/tier={tier}/source_id={id}/date={date}
/// * [files]
/// * [licence]
@BuiltValue()
abstract class ArchivePartition
    implements Built<ArchivePartition, ArchivePartitionBuilder> {
  @BuiltValueField(wireName: r'tier')
  ArchivePartitionTierEnum get tier;
  // enum tierEnum {  std,  trk,  };

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  /// yyyy-mm-dd of ingested_at (UTC)
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// record_version/tier={tier}/source_id={id}/date={date}
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'files')
  BuiltList<ArchivePartitionFilesInner> get files;

  @BuiltValueField(wireName: r'licence')
  ExportLicenceSummary? get licence;

  ArchivePartition._();

  factory ArchivePartition([void updates(ArchivePartitionBuilder b)]) =
      _$ArchivePartition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchivePartitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchivePartition> get serializer =>
      _$ArchivePartitionSerializer();
}

class _$ArchivePartitionSerializer
    implements PrimitiveSerializer<ArchivePartition> {
  @override
  final Iterable<Type> types = const [ArchivePartition, _$ArchivePartition];

  @override
  final String wireName = r'ArchivePartition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchivePartition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tier';
    yield serializers.serialize(
      object.tier,
      specifiedType: const FullType(ArchivePartitionTierEnum),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [
        FullType(ArchivePartitionFilesInner),
      ]),
    );
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(ExportLicenceSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchivePartition object, {
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
    required ArchivePartitionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ArchivePartitionTierEnum),
                  )
                  as ArchivePartitionTierEnum;
          result.tier = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'date':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.date = valueDes;
          break;
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.path = valueDes;
          break;
        case r'files':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ArchivePartitionFilesInner),
                    ]),
                  )
                  as BuiltList<ArchivePartitionFilesInner>;
          result.files.replace(valueDes);
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportLicenceSummary,
                    ),
                  )
                  as ExportLicenceSummary?;
          if (valueDes == null) continue;
          result.licence.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchivePartition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchivePartitionBuilder();
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

class ArchivePartitionTierEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'std')
  static const ArchivePartitionTierEnum std = _$archivePartitionTierEnum_std;
  @BuiltValueEnumConst(wireName: r'trk')
  static const ArchivePartitionTierEnum trk = _$archivePartitionTierEnum_trk;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ArchivePartitionTierEnum unknownDefaultOpenApi =
      _$archivePartitionTierEnum_unknownDefaultOpenApi;

  static Serializer<ArchivePartitionTierEnum> get serializer =>
      _$archivePartitionTierEnumSerializer;

  const ArchivePartitionTierEnum._(String name) : super(name);

  static BuiltSet<ArchivePartitionTierEnum> get values =>
      _$archivePartitionTierEnumValues;
  static ArchivePartitionTierEnum valueOf(String name) =>
      _$archivePartitionTierEnumValueOf(name);
}
