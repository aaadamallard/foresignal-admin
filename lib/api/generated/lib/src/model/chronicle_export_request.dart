//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_export_request.g.dart';

/// Export chronicle storage through 111 (respects TLP and LOCAL_ONLY)
///
/// Properties:
/// * [format]
/// * [layers] - Empty = all layers
/// * [from]
/// * [to]
@BuiltValue()
abstract class ChronicleExportRequest
    implements Built<ChronicleExportRequest, ChronicleExportRequestBuilder> {
  @BuiltValueField(wireName: r'format')
  ChronicleExportRequestFormatEnum get format;
  // enum formatEnum {  geoparquet,  gpkg,  json-bundle,  };

  /// Empty = all layers
  @BuiltValueField(wireName: r'layers')
  BuiltList<String>? get layers;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  ChronicleExportRequest._();

  factory ChronicleExportRequest([
    void updates(ChronicleExportRequestBuilder b),
  ]) = _$ChronicleExportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleExportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleExportRequest> get serializer =>
      _$ChronicleExportRequestSerializer();
}

class _$ChronicleExportRequestSerializer
    implements PrimitiveSerializer<ChronicleExportRequest> {
  @override
  final Iterable<Type> types = const [
    ChronicleExportRequest,
    _$ChronicleExportRequest,
  ];

  @override
  final String wireName = r'ChronicleExportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleExportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(ChronicleExportRequestFormatEnum),
    );
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleExportRequest object, {
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
    required ChronicleExportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleExportRequestFormatEnum,
                    ),
                  )
                  as ChronicleExportRequestFormatEnum;
          result.format = valueDes;
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleExportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleExportRequestBuilder();
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

class ChronicleExportRequestFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'geoparquet')
  static const ChronicleExportRequestFormatEnum geoparquet =
      _$chronicleExportRequestFormatEnum_geoparquet;
  @BuiltValueEnumConst(wireName: r'gpkg')
  static const ChronicleExportRequestFormatEnum gpkg =
      _$chronicleExportRequestFormatEnum_gpkg;
  @BuiltValueEnumConst(wireName: r'json-bundle')
  static const ChronicleExportRequestFormatEnum jsonBundle =
      _$chronicleExportRequestFormatEnum_jsonBundle;

  static Serializer<ChronicleExportRequestFormatEnum> get serializer =>
      _$chronicleExportRequestFormatEnumSerializer;

  const ChronicleExportRequestFormatEnum._(String name) : super(name);

  static BuiltSet<ChronicleExportRequestFormatEnum> get values =>
      _$chronicleExportRequestFormatEnumValues;
  static ChronicleExportRequestFormatEnum valueOf(String name) =>
      _$chronicleExportRequestFormatEnumValueOf(name);
}
