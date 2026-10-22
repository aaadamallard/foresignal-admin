//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_manifest_signature.g.dart';

/// Detached JWS over manifest.json
///
/// Properties:
/// * [alg]
/// * [kid]
/// * [file] - manifest.json.jws
@BuiltValue()
abstract class ExportManifestSignature
    implements Built<ExportManifestSignature, ExportManifestSignatureBuilder> {
  @BuiltValueField(wireName: r'alg')
  ExportManifestSignatureAlgEnum get alg;
  // enum algEnum {  Ed25519,  EdDSA,  };

  @BuiltValueField(wireName: r'kid')
  String get kid;

  /// manifest.json.jws
  @BuiltValueField(wireName: r'file')
  String get file;

  ExportManifestSignature._();

  factory ExportManifestSignature(
          [void updates(ExportManifestSignatureBuilder b)]) =
      _$ExportManifestSignature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportManifestSignatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportManifestSignature> get serializer =>
      _$ExportManifestSignatureSerializer();
}

class _$ExportManifestSignatureSerializer
    implements PrimitiveSerializer<ExportManifestSignature> {
  @override
  final Iterable<Type> types = const [
    ExportManifestSignature,
    _$ExportManifestSignature
  ];

  @override
  final String wireName = r'ExportManifestSignature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportManifestSignature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alg';
    yield serializers.serialize(
      object.alg,
      specifiedType: const FullType(ExportManifestSignatureAlgEnum),
    );
    yield r'kid';
    yield serializers.serialize(
      object.kid,
      specifiedType: const FullType(String),
    );
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportManifestSignature object, {
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
    required ExportManifestSignatureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExportManifestSignatureAlgEnum),
          ) as ExportManifestSignatureAlgEnum;
          result.alg = valueDes;
          break;
        case r'kid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kid = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.file = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportManifestSignature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportManifestSignatureBuilder();
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

class ExportManifestSignatureAlgEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Ed25519')
  static const ExportManifestSignatureAlgEnum ed25519 =
      _$exportManifestSignatureAlgEnum_ed25519;
  @BuiltValueEnumConst(wireName: r'EdDSA')
  static const ExportManifestSignatureAlgEnum edDSA =
      _$exportManifestSignatureAlgEnum_edDSA;

  static Serializer<ExportManifestSignatureAlgEnum> get serializer =>
      _$exportManifestSignatureAlgEnumSerializer;

  const ExportManifestSignatureAlgEnum._(String name) : super(name);

  static BuiltSet<ExportManifestSignatureAlgEnum> get values =>
      _$exportManifestSignatureAlgEnumValues;
  static ExportManifestSignatureAlgEnum valueOf(String name) =>
      _$exportManifestSignatureAlgEnumValueOf(name);
}
