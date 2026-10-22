//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_spec.g.dart';

/// Bulk export request (111). FORBIDDEN and LOCAL_ONLY records are excluded unless personalUse=true
///
/// Properties:
/// * [name]
/// * [format] - gpx requires mode=history
/// * [sources]
/// * [kinds]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [placeId]
/// * [from]
/// * [to]
/// * [timeField] - 014 semantics for from/to
/// * [mode]
/// * [asOf]
/// * [atSeq]
/// * [fields] - Payload allowlist
/// * [flatten] - Promote fieldSpecs keys to columns
/// * [includePrivate] - Include private sources (039); admin only
/// * [personalUse] - Include FORBIDDEN and LOCAL_ONLY records; the sidecar then says personal use only — do not redistribute
@BuiltValue()
abstract class ExportSpec implements Built<ExportSpec, ExportSpecBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// gpx requires mode=history
  @BuiltValueField(wireName: r'format')
  ExportSpecFormatEnum? get format;
  // enum formatEnum {  geoparquet,  geopackage,  flatgeobuf,  gpx,  };

  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  /// 014 semantics for from/to
  @BuiltValueField(wireName: r'timeField')
  ExportSpecTimeFieldEnum? get timeField;
  // enum timeFieldEnum {  effective,  observed,  event,  ingested,  };

  @BuiltValueField(wireName: r'mode')
  ExportSpecModeEnum? get mode;
  // enum modeEnum {  current,  history,  asOf,  atSeq,  };

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'atSeq')
  int? get atSeq;

  /// Payload allowlist
  @BuiltValueField(wireName: r'fields')
  BuiltList<String>? get fields;

  /// Promote fieldSpecs keys to columns
  @BuiltValueField(wireName: r'flatten')
  bool? get flatten;

  /// Include private sources (039); admin only
  @BuiltValueField(wireName: r'includePrivate')
  bool? get includePrivate;

  /// Include FORBIDDEN and LOCAL_ONLY records; the sidecar then says personal use only — do not redistribute
  @BuiltValueField(wireName: r'personalUse')
  bool? get personalUse;

  ExportSpec._();

  factory ExportSpec([void updates(ExportSpecBuilder b)]) = _$ExportSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSpec> get serializer => _$ExportSpecSerializer();
}

class _$ExportSpecSerializer implements PrimitiveSerializer<ExportSpec> {
  @override
  final Iterable<Type> types = const [ExportSpec, _$ExportSpec];

  @override
  final String wireName = r'ExportSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(ExportSpecFormatEnum),
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
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.timeField != null) {
      yield r'timeField';
      yield serializers.serialize(
        object.timeField,
        specifiedType: const FullType(ExportSpecTimeFieldEnum),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(ExportSpecModeEnum),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.atSeq != null) {
      yield r'atSeq';
      yield serializers.serialize(
        object.atSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.flatten != null) {
      yield r'flatten';
      yield serializers.serialize(
        object.flatten,
        specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSpec object, {
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
    required ExportSpecBuilder result,
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
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportSpecFormatEnum,
                    ),
                  )
                  as ExportSpecFormatEnum?;
          if (valueDes == null) continue;
          result.format = valueDes;
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
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'timeField':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExportSpecTimeFieldEnum,
                    ),
                  )
                  as ExportSpecTimeFieldEnum?;
          if (valueDes == null) continue;
          result.timeField = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ExportSpecModeEnum),
                  )
                  as ExportSpecModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
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
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'flatten':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.flatten = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSpecBuilder();
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

/// gpx requires mode=history
class ExportSpecFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geoparquet')
  static const ExportSpecFormatEnum geoparquet =
      _$exportSpecFormatEnum_geoparquet;
  @BuiltValueEnumConst(wireName: r'geopackage')
  static const ExportSpecFormatEnum geopackage =
      _$exportSpecFormatEnum_geopackage;
  @BuiltValueEnumConst(wireName: r'flatgeobuf')
  static const ExportSpecFormatEnum flatgeobuf =
      _$exportSpecFormatEnum_flatgeobuf;
  @BuiltValueEnumConst(wireName: r'gpx')
  static const ExportSpecFormatEnum gpx = _$exportSpecFormatEnum_gpx;

  static Serializer<ExportSpecFormatEnum> get serializer =>
      _$exportSpecFormatEnumSerializer;

  const ExportSpecFormatEnum._(String name) : super(name);

  static BuiltSet<ExportSpecFormatEnum> get values =>
      _$exportSpecFormatEnumValues;
  static ExportSpecFormatEnum valueOf(String name) =>
      _$exportSpecFormatEnumValueOf(name);
}

/// 014 semantics for from/to
class ExportSpecTimeFieldEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'effective')
  static const ExportSpecTimeFieldEnum effective =
      _$exportSpecTimeFieldEnum_effective;
  @BuiltValueEnumConst(wireName: r'observed')
  static const ExportSpecTimeFieldEnum observed =
      _$exportSpecTimeFieldEnum_observed;
  @BuiltValueEnumConst(wireName: r'event')
  static const ExportSpecTimeFieldEnum event = _$exportSpecTimeFieldEnum_event;
  @BuiltValueEnumConst(wireName: r'ingested')
  static const ExportSpecTimeFieldEnum ingested =
      _$exportSpecTimeFieldEnum_ingested;

  static Serializer<ExportSpecTimeFieldEnum> get serializer =>
      _$exportSpecTimeFieldEnumSerializer;

  const ExportSpecTimeFieldEnum._(String name) : super(name);

  static BuiltSet<ExportSpecTimeFieldEnum> get values =>
      _$exportSpecTimeFieldEnumValues;
  static ExportSpecTimeFieldEnum valueOf(String name) =>
      _$exportSpecTimeFieldEnumValueOf(name);
}

class ExportSpecModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'current')
  static const ExportSpecModeEnum current = _$exportSpecModeEnum_current;
  @BuiltValueEnumConst(wireName: r'history')
  static const ExportSpecModeEnum history = _$exportSpecModeEnum_history;
  @BuiltValueEnumConst(wireName: r'asOf')
  static const ExportSpecModeEnum asOf = _$exportSpecModeEnum_asOf;
  @BuiltValueEnumConst(wireName: r'atSeq')
  static const ExportSpecModeEnum atSeq = _$exportSpecModeEnum_atSeq;

  static Serializer<ExportSpecModeEnum> get serializer =>
      _$exportSpecModeEnumSerializer;

  const ExportSpecModeEnum._(String name) : super(name);

  static BuiltSet<ExportSpecModeEnum> get values => _$exportSpecModeEnumValues;
  static ExportSpecModeEnum valueOf(String name) =>
      _$exportSpecModeEnumValueOf(name);
}
