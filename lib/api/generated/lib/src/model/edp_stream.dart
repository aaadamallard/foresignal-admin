//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_coverage.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_presentation.dart';
import 'package:foresignal_api/src/model/edp_suggested_binding.dart';
import 'package:foresignal_api/src/model/edp_stream_fields.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_stream.g.dart';

/// One typed stream of items
///
/// Properties:
/// * [id]
/// * [mode]
/// * [itemType]
/// * [kind]
/// * [title]
/// * [description]
/// * [geometry]
/// * [update_]
/// * [payloadSchema] - JSON Schema 2020-12 for item properties
/// * [fields]
/// * [ttl]
/// * [retentionClass]
/// * [unit]
/// * [documentType]
/// * [presentation]
/// * [coverage]
/// * [complete] - The stream is a complete record of its scope (social volume baselines may use it)
/// * [suggestedBindings]
/// * [snapshotScope] - For update: snapshot. Null = the whole stream is one scope; otherwise the item property whose value names the scope (e.g. a region code), so a snapshot only removes items of its own scope.
@BuiltValue()
abstract class EdpStream implements Built<EdpStream, EdpStreamBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'mode')
  EdpStreamModeEnum get mode;
  // enum modeEnum {  layer,  atomic,  };

  @BuiltValueField(wireName: r'itemType')
  EdpStreamItemTypeEnum get itemType;
  // enum itemTypeEnum {  feature,  event,  observation,  document,  forecast,  };

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'geometry')
  EdpStreamGeometryEnum? get geometry;
  // enum geometryEnum {  Point,  LineString,  Polygon,  MultiPolygon,  any,  none,  };

  @BuiltValueField(wireName: r'update')
  EdpStreamUpdate_Enum? get update_;
  // enum update_Enum {  incremental,  snapshot,  };

  /// JSON Schema 2020-12 for item properties
  @BuiltValueField(wireName: r'payloadSchema')
  BuiltMap<String, JsonObject?>? get payloadSchema;

  @BuiltValueField(wireName: r'fields')
  EdpStreamFields? get fields;

  @BuiltValueField(wireName: r'ttl')
  String? get ttl;

  @BuiltValueField(wireName: r'retentionClass')
  EdpStreamRetentionClassEnum? get retentionClass;
  // enum retentionClassEnum {  event,  bulk-event,  series,  state,  track,  reference,  social,  };

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'documentType')
  EdpStreamDocumentTypeEnum? get documentType;
  // enum documentTypeEnum {  social-post,  article,  report,  transcript,  note,  };

  @BuiltValueField(wireName: r'presentation')
  EdpPresentation? get presentation;

  @BuiltValueField(wireName: r'coverage')
  EdpCoverage? get coverage;

  /// The stream is a complete record of its scope (social volume baselines may use it)
  @BuiltValueField(wireName: r'complete')
  bool? get complete;

  @BuiltValueField(wireName: r'suggestedBindings')
  BuiltList<EdpSuggestedBinding>? get suggestedBindings;

  /// For update: snapshot. Null = the whole stream is one scope; otherwise the item property whose value names the scope (e.g. a region code), so a snapshot only removes items of its own scope.
  @BuiltValueField(wireName: r'snapshotScope')
  String? get snapshotScope;

  EdpStream._();

  factory EdpStream([void updates(EdpStreamBuilder b)]) = _$EdpStream;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpStreamBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpStream> get serializer => _$EdpStreamSerializer();
}

class _$EdpStreamSerializer implements PrimitiveSerializer<EdpStream> {
  @override
  final Iterable<Type> types = const [EdpStream, _$EdpStream];

  @override
  final String wireName = r'EdpStream';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpStream object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(EdpStreamModeEnum),
    );
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(EdpStreamItemTypeEnum),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType(EdpStreamGeometryEnum),
      );
    }
    if (object.update_ != null) {
      yield r'update';
      yield serializers.serialize(
        object.update_,
        specifiedType: const FullType(EdpStreamUpdate_Enum),
      );
    }
    if (object.payloadSchema != null) {
      yield r'payloadSchema';
      yield serializers.serialize(
        object.payloadSchema,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(EdpStreamFields),
      );
    }
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.retentionClass != null) {
      yield r'retentionClass';
      yield serializers.serialize(
        object.retentionClass,
        specifiedType: const FullType(EdpStreamRetentionClassEnum),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.documentType != null) {
      yield r'documentType';
      yield serializers.serialize(
        object.documentType,
        specifiedType: const FullType.nullable(EdpStreamDocumentTypeEnum),
      );
    }
    if (object.presentation != null) {
      yield r'presentation';
      yield serializers.serialize(
        object.presentation,
        specifiedType: const FullType(EdpPresentation),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType(EdpCoverage),
      );
    }
    if (object.complete != null) {
      yield r'complete';
      yield serializers.serialize(
        object.complete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.suggestedBindings != null) {
      yield r'suggestedBindings';
      yield serializers.serialize(
        object.suggestedBindings,
        specifiedType:
            const FullType(BuiltList, [FullType(EdpSuggestedBinding)]),
      );
    }
    if (object.snapshotScope != null) {
      yield r'snapshotScope';
      yield serializers.serialize(
        object.snapshotScope,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpStream object, {
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
    required EdpStreamBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EdpStreamModeEnum),
          ) as EdpStreamModeEnum;
          result.mode = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EdpStreamItemTypeEnum),
          ) as EdpStreamItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpStreamGeometryEnum),
          ) as EdpStreamGeometryEnum?;
          if (valueDes == null) continue;
          result.geometry = valueDes;
          break;
        case r'update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpStreamUpdate_Enum),
          ) as EdpStreamUpdate_Enum?;
          if (valueDes == null) continue;
          result.update_ = valueDes;
          break;
        case r'payloadSchema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.payloadSchema.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpStreamFields),
          ) as EdpStreamFields?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'ttl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        case r'retentionClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpStreamRetentionClassEnum),
          ) as EdpStreamRetentionClassEnum?;
          if (valueDes == null) continue;
          result.retentionClass = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'documentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpStreamDocumentTypeEnum),
          ) as EdpStreamDocumentTypeEnum?;
          if (valueDes == null) continue;
          result.documentType = valueDes;
          break;
        case r'presentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpPresentation),
          ) as EdpPresentation?;
          if (valueDes == null) continue;
          result.presentation.replace(valueDes);
          break;
        case r'coverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpCoverage),
          ) as EdpCoverage?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.complete = valueDes;
          break;
        case r'suggestedBindings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(EdpSuggestedBinding)]),
          ) as BuiltList<EdpSuggestedBinding>?;
          if (valueDes == null) continue;
          result.suggestedBindings.replace(valueDes);
          break;
        case r'snapshotScope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.snapshotScope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpStream deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpStreamBuilder();
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

class EdpStreamModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'layer')
  static const EdpStreamModeEnum layer = _$edpStreamModeEnum_layer;
  @BuiltValueEnumConst(wireName: r'atomic')
  static const EdpStreamModeEnum atomic = _$edpStreamModeEnum_atomic;

  static Serializer<EdpStreamModeEnum> get serializer =>
      _$edpStreamModeEnumSerializer;

  const EdpStreamModeEnum._(String name) : super(name);

  static BuiltSet<EdpStreamModeEnum> get values => _$edpStreamModeEnumValues;
  static EdpStreamModeEnum valueOf(String name) =>
      _$edpStreamModeEnumValueOf(name);
}

class EdpStreamItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'feature')
  static const EdpStreamItemTypeEnum feature = _$edpStreamItemTypeEnum_feature;
  @BuiltValueEnumConst(wireName: r'event')
  static const EdpStreamItemTypeEnum event = _$edpStreamItemTypeEnum_event;
  @BuiltValueEnumConst(wireName: r'observation')
  static const EdpStreamItemTypeEnum observation =
      _$edpStreamItemTypeEnum_observation;
  @BuiltValueEnumConst(wireName: r'document')
  static const EdpStreamItemTypeEnum document =
      _$edpStreamItemTypeEnum_document;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const EdpStreamItemTypeEnum forecast =
      _$edpStreamItemTypeEnum_forecast;

  static Serializer<EdpStreamItemTypeEnum> get serializer =>
      _$edpStreamItemTypeEnumSerializer;

  const EdpStreamItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpStreamItemTypeEnum> get values =>
      _$edpStreamItemTypeEnumValues;
  static EdpStreamItemTypeEnum valueOf(String name) =>
      _$edpStreamItemTypeEnumValueOf(name);
}

class EdpStreamGeometryEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Point')
  static const EdpStreamGeometryEnum point = _$edpStreamGeometryEnum_point;
  @BuiltValueEnumConst(wireName: r'LineString')
  static const EdpStreamGeometryEnum lineString =
      _$edpStreamGeometryEnum_lineString;
  @BuiltValueEnumConst(wireName: r'Polygon')
  static const EdpStreamGeometryEnum polygon = _$edpStreamGeometryEnum_polygon;
  @BuiltValueEnumConst(wireName: r'MultiPolygon')
  static const EdpStreamGeometryEnum multiPolygon =
      _$edpStreamGeometryEnum_multiPolygon;
  @BuiltValueEnumConst(wireName: r'any')
  static const EdpStreamGeometryEnum any = _$edpStreamGeometryEnum_any;
  @BuiltValueEnumConst(wireName: r'none')
  static const EdpStreamGeometryEnum none = _$edpStreamGeometryEnum_none;

  static Serializer<EdpStreamGeometryEnum> get serializer =>
      _$edpStreamGeometryEnumSerializer;

  const EdpStreamGeometryEnum._(String name) : super(name);

  static BuiltSet<EdpStreamGeometryEnum> get values =>
      _$edpStreamGeometryEnumValues;
  static EdpStreamGeometryEnum valueOf(String name) =>
      _$edpStreamGeometryEnumValueOf(name);
}

class EdpStreamUpdate_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'incremental')
  static const EdpStreamUpdate_Enum incremental =
      _$edpStreamUpdateEnum_incremental;
  @BuiltValueEnumConst(wireName: r'snapshot')
  static const EdpStreamUpdate_Enum snapshot = _$edpStreamUpdateEnum_snapshot;

  static Serializer<EdpStreamUpdate_Enum> get serializer =>
      _$edpStreamUpdateEnumSerializer;

  const EdpStreamUpdate_Enum._(String name) : super(name);

  static BuiltSet<EdpStreamUpdate_Enum> get values =>
      _$edpStreamUpdateEnumValues;
  static EdpStreamUpdate_Enum valueOf(String name) =>
      _$edpStreamUpdateEnumValueOf(name);
}

class EdpStreamRetentionClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const EdpStreamRetentionClassEnum event =
      _$edpStreamRetentionClassEnum_event;
  @BuiltValueEnumConst(wireName: r'bulk-event')
  static const EdpStreamRetentionClassEnum bulkEvent =
      _$edpStreamRetentionClassEnum_bulkEvent;
  @BuiltValueEnumConst(wireName: r'series')
  static const EdpStreamRetentionClassEnum series =
      _$edpStreamRetentionClassEnum_series;
  @BuiltValueEnumConst(wireName: r'state')
  static const EdpStreamRetentionClassEnum state =
      _$edpStreamRetentionClassEnum_state;
  @BuiltValueEnumConst(wireName: r'track')
  static const EdpStreamRetentionClassEnum track =
      _$edpStreamRetentionClassEnum_track;
  @BuiltValueEnumConst(wireName: r'reference')
  static const EdpStreamRetentionClassEnum reference =
      _$edpStreamRetentionClassEnum_reference;
  @BuiltValueEnumConst(wireName: r'social')
  static const EdpStreamRetentionClassEnum social =
      _$edpStreamRetentionClassEnum_social;

  static Serializer<EdpStreamRetentionClassEnum> get serializer =>
      _$edpStreamRetentionClassEnumSerializer;

  const EdpStreamRetentionClassEnum._(String name) : super(name);

  static BuiltSet<EdpStreamRetentionClassEnum> get values =>
      _$edpStreamRetentionClassEnumValues;
  static EdpStreamRetentionClassEnum valueOf(String name) =>
      _$edpStreamRetentionClassEnumValueOf(name);
}

class EdpStreamDocumentTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social-post')
  static const EdpStreamDocumentTypeEnum socialPost =
      _$edpStreamDocumentTypeEnum_socialPost;
  @BuiltValueEnumConst(wireName: r'article')
  static const EdpStreamDocumentTypeEnum article =
      _$edpStreamDocumentTypeEnum_article;
  @BuiltValueEnumConst(wireName: r'report')
  static const EdpStreamDocumentTypeEnum report =
      _$edpStreamDocumentTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'transcript')
  static const EdpStreamDocumentTypeEnum transcript =
      _$edpStreamDocumentTypeEnum_transcript;
  @BuiltValueEnumConst(wireName: r'note')
  static const EdpStreamDocumentTypeEnum note =
      _$edpStreamDocumentTypeEnum_note;

  static Serializer<EdpStreamDocumentTypeEnum> get serializer =>
      _$edpStreamDocumentTypeEnumSerializer;

  const EdpStreamDocumentTypeEnum._(String name) : super(name);

  static BuiltSet<EdpStreamDocumentTypeEnum> get values =>
      _$edpStreamDocumentTypeEnumValues;
  static EdpStreamDocumentTypeEnum valueOf(String name) =>
      _$edpStreamDocumentTypeEnumValueOf(name);
}
