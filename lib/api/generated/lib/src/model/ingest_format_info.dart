//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_format_option.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_format_info.g.dart';

/// A registered ingest format (024)
///
/// Properties:
/// * [id]
/// * [description]
/// * [mediaTypes]
/// * [methods]
/// * [options]
/// * [verifiers]
/// * [reserved] - Name reserved for a later prompt (media, rasters: 054; mapping-preview: 059)
@BuiltValue()
abstract class IngestFormatInfo
    implements Built<IngestFormatInfo, IngestFormatInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'mediaTypes')
  BuiltList<String> get mediaTypes;

  @BuiltValueField(wireName: r'methods')
  BuiltList<IngestFormatInfoMethodsEnum>? get methods;
  // enum methodsEnum {  GET,  POST,  PUT,  };

  @BuiltValueField(wireName: r'options')
  BuiltList<IngestFormatOption>? get options;

  @BuiltValueField(wireName: r'verifiers')
  BuiltList<IngestFormatInfoVerifiersEnum>? get verifiers;
  // enum verifiersEnum {  none,  hmac-sha256,  standard-webhooks,  foresignal,  };

  /// Name reserved for a later prompt (media, rasters: 054; mapping-preview: 059)
  @BuiltValueField(wireName: r'reserved')
  bool? get reserved;

  IngestFormatInfo._();

  factory IngestFormatInfo([void updates(IngestFormatInfoBuilder b)]) =
      _$IngestFormatInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestFormatInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestFormatInfo> get serializer =>
      _$IngestFormatInfoSerializer();
}

class _$IngestFormatInfoSerializer
    implements PrimitiveSerializer<IngestFormatInfo> {
  @override
  final Iterable<Type> types = const [IngestFormatInfo, _$IngestFormatInfo];

  @override
  final String wireName = r'IngestFormatInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestFormatInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'mediaTypes';
    yield serializers.serialize(
      object.mediaTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.methods != null) {
      yield r'methods';
      yield serializers.serialize(
        object.methods,
        specifiedType: const FullType(BuiltList, [
          FullType(IngestFormatInfoMethodsEnum),
        ]),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltList, [
          FullType(IngestFormatOption),
        ]),
      );
    }
    if (object.verifiers != null) {
      yield r'verifiers';
      yield serializers.serialize(
        object.verifiers,
        specifiedType: const FullType(BuiltList, [
          FullType(IngestFormatInfoVerifiersEnum),
        ]),
      );
    }
    if (object.reserved != null) {
      yield r'reserved';
      yield serializers.serialize(
        object.reserved,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestFormatInfo object, {
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
    required IngestFormatInfoBuilder result,
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
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'mediaTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.mediaTypes.replace(valueDes);
          break;
        case r'methods':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(IngestFormatInfoMethodsEnum),
                    ]),
                  )
                  as BuiltList<IngestFormatInfoMethodsEnum>?;
          if (valueDes == null) continue;
          result.methods.replace(valueDes);
          break;
        case r'options':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(IngestFormatOption),
                    ]),
                  )
                  as BuiltList<IngestFormatOption>?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        case r'verifiers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(IngestFormatInfoVerifiersEnum),
                    ]),
                  )
                  as BuiltList<IngestFormatInfoVerifiersEnum>?;
          if (valueDes == null) continue;
          result.verifiers.replace(valueDes);
          break;
        case r'reserved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.reserved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestFormatInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestFormatInfoBuilder();
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

class IngestFormatInfoMethodsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GET')
  static const IngestFormatInfoMethodsEnum GET =
      _$ingestFormatInfoMethodsEnum_GET;
  @BuiltValueEnumConst(wireName: r'POST')
  static const IngestFormatInfoMethodsEnum POST =
      _$ingestFormatInfoMethodsEnum_POST;
  @BuiltValueEnumConst(wireName: r'PUT')
  static const IngestFormatInfoMethodsEnum PUT =
      _$ingestFormatInfoMethodsEnum_PUT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IngestFormatInfoMethodsEnum unknownDefaultOpenApi =
      _$ingestFormatInfoMethodsEnum_unknownDefaultOpenApi;

  static Serializer<IngestFormatInfoMethodsEnum> get serializer =>
      _$ingestFormatInfoMethodsEnumSerializer;

  const IngestFormatInfoMethodsEnum._(String name) : super(name);

  static BuiltSet<IngestFormatInfoMethodsEnum> get values =>
      _$ingestFormatInfoMethodsEnumValues;
  static IngestFormatInfoMethodsEnum valueOf(String name) =>
      _$ingestFormatInfoMethodsEnumValueOf(name);
}

class IngestFormatInfoVerifiersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const IngestFormatInfoVerifiersEnum none =
      _$ingestFormatInfoVerifiersEnum_none;
  @BuiltValueEnumConst(wireName: r'hmac-sha256')
  static const IngestFormatInfoVerifiersEnum hmacSha256 =
      _$ingestFormatInfoVerifiersEnum_hmacSha256;
  @BuiltValueEnumConst(wireName: r'standard-webhooks')
  static const IngestFormatInfoVerifiersEnum standardWebhooks =
      _$ingestFormatInfoVerifiersEnum_standardWebhooks;
  @BuiltValueEnumConst(wireName: r'foresignal')
  static const IngestFormatInfoVerifiersEnum foresignal =
      _$ingestFormatInfoVerifiersEnum_foresignal;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IngestFormatInfoVerifiersEnum unknownDefaultOpenApi =
      _$ingestFormatInfoVerifiersEnum_unknownDefaultOpenApi;

  static Serializer<IngestFormatInfoVerifiersEnum> get serializer =>
      _$ingestFormatInfoVerifiersEnumSerializer;

  const IngestFormatInfoVerifiersEnum._(String name) : super(name);

  static BuiltSet<IngestFormatInfoVerifiersEnum> get values =>
      _$ingestFormatInfoVerifiersEnumValues;
  static IngestFormatInfoVerifiersEnum valueOf(String name) =>
      _$ingestFormatInfoVerifiersEnumValueOf(name);
}
