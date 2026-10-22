//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_import_request_params.g.dart';

/// Dataset parameters
///
/// Properties:
/// * [file] - ucdp-ged: CSV (or the downloaded ZIP holding it) path relative to `${FORESIGNAL_DATA_DIR}/imports`
/// * [useApi] - ucdp-ged: use the UCDP API instead of a file
/// * [yearFrom]
/// * [yearTo]
/// * [countries] - acled: ISO country codes
/// * [minMagnitude] - usgs-comcat: minimum magnitude
/// * [hazardTypes] - gdacs: hazard types (default all)
/// * [version] - ucdp-ged with useApi: the GED release to read, e.g. `26.1` (required with useApi)
@BuiltValue()
abstract class ReferenceImportRequestParams
    implements
        Built<ReferenceImportRequestParams,
            ReferenceImportRequestParamsBuilder> {
  /// ucdp-ged: CSV (or the downloaded ZIP holding it) path relative to `${FORESIGNAL_DATA_DIR}/imports`
  @BuiltValueField(wireName: r'file')
  String? get file;

  /// ucdp-ged: use the UCDP API instead of a file
  @BuiltValueField(wireName: r'useApi')
  bool? get useApi;

  @BuiltValueField(wireName: r'yearFrom')
  int? get yearFrom;

  @BuiltValueField(wireName: r'yearTo')
  int? get yearTo;

  /// acled: ISO country codes
  @BuiltValueField(wireName: r'countries')
  BuiltList<String>? get countries;

  /// usgs-comcat: minimum magnitude
  @BuiltValueField(wireName: r'minMagnitude')
  num? get minMagnitude;

  /// gdacs: hazard types (default all)
  @BuiltValueField(wireName: r'hazardTypes')
  BuiltList<String>? get hazardTypes;

  /// ucdp-ged with useApi: the GED release to read, e.g. `26.1` (required with useApi)
  @BuiltValueField(wireName: r'version')
  String? get version;

  ReferenceImportRequestParams._();

  factory ReferenceImportRequestParams(
          [void updates(ReferenceImportRequestParamsBuilder b)]) =
      _$ReferenceImportRequestParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceImportRequestParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceImportRequestParams> get serializer =>
      _$ReferenceImportRequestParamsSerializer();
}

class _$ReferenceImportRequestParamsSerializer
    implements PrimitiveSerializer<ReferenceImportRequestParams> {
  @override
  final Iterable<Type> types = const [
    ReferenceImportRequestParams,
    _$ReferenceImportRequestParams
  ];

  @override
  final String wireName = r'ReferenceImportRequestParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceImportRequestParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(String),
      );
    }
    if (object.useApi != null) {
      yield r'useApi';
      yield serializers.serialize(
        object.useApi,
        specifiedType: const FullType(bool),
      );
    }
    if (object.yearFrom != null) {
      yield r'yearFrom';
      yield serializers.serialize(
        object.yearFrom,
        specifiedType: const FullType(int),
      );
    }
    if (object.yearTo != null) {
      yield r'yearTo';
      yield serializers.serialize(
        object.yearTo,
        specifiedType: const FullType(int),
      );
    }
    if (object.countries != null) {
      yield r'countries';
      yield serializers.serialize(
        object.countries,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minMagnitude != null) {
      yield r'minMagnitude';
      yield serializers.serialize(
        object.minMagnitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.hazardTypes != null) {
      yield r'hazardTypes';
      yield serializers.serialize(
        object.hazardTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceImportRequestParams object, {
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
    required ReferenceImportRequestParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.file = valueDes;
          break;
        case r'useApi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.useApi = valueDes;
          break;
        case r'yearFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.yearFrom = valueDes;
          break;
        case r'yearTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.yearTo = valueDes;
          break;
        case r'countries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.countries.replace(valueDes);
          break;
        case r'minMagnitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minMagnitude = valueDes;
          break;
        case r'hazardTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hazardTypes.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceImportRequestParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceImportRequestParamsBuilder();
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
