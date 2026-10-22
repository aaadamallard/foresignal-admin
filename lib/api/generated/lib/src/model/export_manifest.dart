//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/export_manifest_files_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/export_manifest_signature.dart';
import 'package:foresignal_api/src/model/export_licence_summary.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_manifest.g.dart';

/// SHA-256 manifest of an export, snapshot or pack; signed as manifest.json.jws with the instance key (111)
///
/// Properties:
/// * [manifestVersion]
/// * [id] - ULID identifier
/// * [kind]
/// * [format]
/// * [instanceId]
/// * [createdAt]
/// * [watermarkSeq]
/// * [atSeq]
/// * [spec]
/// * [rowCount]
/// * [files]
/// * [licence]
/// * [personalUse]
/// * [signature]
@BuiltValue()
abstract class ExportManifest
    implements Built<ExportManifest, ExportManifestBuilder> {
  @BuiltValueField(wireName: r'manifestVersion')
  ExportManifestManifestVersionEnum? get manifestVersion;
  // enum manifestVersionEnum {  1,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  ExportManifestKindEnum get kind;
  // enum kindEnum {  EXPORT,  SNAPSHOT,  PACK,  };

  @BuiltValueField(wireName: r'format')
  ExportManifestFormatEnum get format;
  // enum formatEnum {  geoparquet,  geopackage,  flatgeobuf,  gpx,  pmtiles,  };

  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  @BuiltValueField(wireName: r'atSeq')
  int? get atSeq;

  @BuiltValueField(wireName: r'spec')
  BuiltMap<String, JsonObject?>? get spec;

  @BuiltValueField(wireName: r'rowCount')
  int? get rowCount;

  @BuiltValueField(wireName: r'files')
  BuiltList<ExportManifestFilesInner> get files;

  @BuiltValueField(wireName: r'licence')
  ExportLicenceSummary get licence;

  @BuiltValueField(wireName: r'personalUse')
  bool? get personalUse;

  @BuiltValueField(wireName: r'signature')
  ExportManifestSignature? get signature;

  ExportManifest._();

  factory ExportManifest([void updates(ExportManifestBuilder b)]) =
      _$ExportManifest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportManifestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportManifest> get serializer =>
      _$ExportManifestSerializer();
}

class _$ExportManifestSerializer
    implements PrimitiveSerializer<ExportManifest> {
  @override
  final Iterable<Type> types = const [ExportManifest, _$ExportManifest];

  @override
  final String wireName = r'ExportManifest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.manifestVersion != null) {
      yield r'manifestVersion';
      yield serializers.serialize(
        object.manifestVersion,
        specifiedType: const FullType(ExportManifestManifestVersionEnum),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ExportManifestKindEnum),
    );
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ExportManifestFormatEnum),
    );
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.atSeq != null) {
      yield r'atSeq';
      yield serializers.serialize(
        object.atSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.rowCount != null) {
      yield r'rowCount';
      yield serializers.serialize(
        object.rowCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [
        FullType(ExportManifestFilesInner),
      ]),
    );
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(ExportLicenceSummary),
    );
    if (object.personalUse != null) {
      yield r'personalUse';
      yield serializers.serialize(
        object.personalUse,
        specifiedType: const FullType(bool),
      );
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType(ExportManifestSignature),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportManifest object, {
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
    required ExportManifestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'manifestVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportManifestManifestVersionEnum,
                    ),
                  )
                  as ExportManifestManifestVersionEnum?;
          if (valueDes == null) continue;
          result.manifestVersion = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportManifestKindEnum),
                  )
                  as ExportManifestKindEnum;
          result.kind = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportManifestFormatEnum),
                  )
                  as ExportManifestFormatEnum;
          result.format = valueDes;
          break;
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
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
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
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
        case r'spec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.spec.replace(valueDes);
          break;
        case r'rowCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rowCount = valueDes;
          break;
        case r'files':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ExportManifestFilesInner),
                    ]),
                  )
                  as BuiltList<ExportManifestFilesInner>;
          result.files.replace(valueDes);
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExportLicenceSummary),
                  )
                  as ExportLicenceSummary;
          result.licence.replace(valueDes);
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
        case r'signature':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportManifestSignature,
                    ),
                  )
                  as ExportManifestSignature?;
          if (valueDes == null) continue;
          result.signature.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportManifest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportManifestBuilder();
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

class ExportManifestManifestVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const ExportManifestManifestVersionEnum number1 =
      _$exportManifestManifestVersionEnum_number1;

  static Serializer<ExportManifestManifestVersionEnum> get serializer =>
      _$exportManifestManifestVersionEnumSerializer;

  const ExportManifestManifestVersionEnum._(String name) : super(name);

  static BuiltSet<ExportManifestManifestVersionEnum> get values =>
      _$exportManifestManifestVersionEnumValues;
  static ExportManifestManifestVersionEnum valueOf(String name) =>
      _$exportManifestManifestVersionEnumValueOf(name);
}

class ExportManifestKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EXPORT')
  static const ExportManifestKindEnum EXPORT = _$exportManifestKindEnum_EXPORT;
  @BuiltValueEnumConst(wireName: r'SNAPSHOT')
  static const ExportManifestKindEnum SNAPSHOT =
      _$exportManifestKindEnum_SNAPSHOT;
  @BuiltValueEnumConst(wireName: r'PACK')
  static const ExportManifestKindEnum PACK = _$exportManifestKindEnum_PACK;

  static Serializer<ExportManifestKindEnum> get serializer =>
      _$exportManifestKindEnumSerializer;

  const ExportManifestKindEnum._(String name) : super(name);

  static BuiltSet<ExportManifestKindEnum> get values =>
      _$exportManifestKindEnumValues;
  static ExportManifestKindEnum valueOf(String name) =>
      _$exportManifestKindEnumValueOf(name);
}

class ExportManifestFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geoparquet')
  static const ExportManifestFormatEnum geoparquet =
      _$exportManifestFormatEnum_geoparquet;
  @BuiltValueEnumConst(wireName: r'geopackage')
  static const ExportManifestFormatEnum geopackage =
      _$exportManifestFormatEnum_geopackage;
  @BuiltValueEnumConst(wireName: r'flatgeobuf')
  static const ExportManifestFormatEnum flatgeobuf =
      _$exportManifestFormatEnum_flatgeobuf;
  @BuiltValueEnumConst(wireName: r'gpx')
  static const ExportManifestFormatEnum gpx = _$exportManifestFormatEnum_gpx;
  @BuiltValueEnumConst(wireName: r'pmtiles')
  static const ExportManifestFormatEnum pmtiles =
      _$exportManifestFormatEnum_pmtiles;

  static Serializer<ExportManifestFormatEnum> get serializer =>
      _$exportManifestFormatEnumSerializer;

  const ExportManifestFormatEnum._(String name) : super(name);

  static BuiltSet<ExportManifestFormatEnum> get values =>
      _$exportManifestFormatEnumValues;
  static ExportManifestFormatEnum valueOf(String name) =>
      _$exportManifestFormatEnumValueOf(name);
}
