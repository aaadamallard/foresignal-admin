//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_sketch_package_capture_span.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_package.g.dart';

/// A privacy-preserving fingerprint of a `network`-discoverable chronicle exchanged between peers (134)
///
/// Properties:
/// * [sketchId] - Random per chronicle per salt
/// * [instanceId]
/// * [networkId]
/// * [keyTypes]
/// * [minhash] - Key type → 128 MinHash values (base64 of 128 big-endian 64-bit integers)
/// * [sizeBand] - Key type → log2 bucket of the set size
/// * [captureSpan]
/// * [title] - Only if revealed
/// * [ownerHandle] - Only if revealed
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [issuedAt]
/// * [expiresAt]
@BuiltValue()
abstract class ChronicleSketchPackage
    implements Built<ChronicleSketchPackage, ChronicleSketchPackageBuilder> {
  /// Random per chronicle per salt
  @BuiltValueField(wireName: r'sketchId')
  String get sketchId;

  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'networkId')
  String get networkId;

  @BuiltValueField(wireName: r'keyTypes')
  BuiltList<ChronicleSketchPackageKeyTypesEnum> get keyTypes;
  // enum keyTypesEnum {  evidence,  entities,  area-time,  topics,  };

  /// Key type → 128 MinHash values (base64 of 128 big-endian 64-bit integers)
  @BuiltValueField(wireName: r'minhash')
  BuiltMap<String, String> get minhash;

  /// Key type → log2 bucket of the set size
  @BuiltValueField(wireName: r'sizeBand')
  BuiltMap<String, int> get sizeBand;

  @BuiltValueField(wireName: r'captureSpan')
  ChronicleSketchPackageCaptureSpan get captureSpan;

  /// Only if revealed
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Only if revealed
  @BuiltValueField(wireName: r'ownerHandle')
  String? get ownerHandle;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ChronicleSketchPackage._();

  factory ChronicleSketchPackage([
    void updates(ChronicleSketchPackageBuilder b),
  ]) = _$ChronicleSketchPackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchPackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchPackage> get serializer =>
      _$ChronicleSketchPackageSerializer();
}

class _$ChronicleSketchPackageSerializer
    implements PrimitiveSerializer<ChronicleSketchPackage> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchPackage,
    _$ChronicleSketchPackage,
  ];

  @override
  final String wireName = r'ChronicleSketchPackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sketchId';
    yield serializers.serialize(
      object.sketchId,
      specifiedType: const FullType(String),
    );
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'networkId';
    yield serializers.serialize(
      object.networkId,
      specifiedType: const FullType(String),
    );
    yield r'keyTypes';
    yield serializers.serialize(
      object.keyTypes,
      specifiedType: const FullType(BuiltList, [
        FullType(ChronicleSketchPackageKeyTypesEnum),
      ]),
    );
    yield r'minhash';
    yield serializers.serialize(
      object.minhash,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(String),
      ]),
    );
    yield r'sizeBand';
    yield serializers.serialize(
      object.sizeBand,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(int),
      ]),
    );
    yield r'captureSpan';
    yield serializers.serialize(
      object.captureSpan,
      specifiedType: const FullType(ChronicleSketchPackageCaptureSpan),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ownerHandle != null) {
      yield r'ownerHandle';
      yield serializers.serialize(
        object.ownerHandle,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'issuedAt';
    yield serializers.serialize(
      object.issuedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchPackage object, {
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
    required ChronicleSketchPackageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sketchId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sketchId = valueDes;
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
        case r'networkId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.networkId = valueDes;
          break;
        case r'keyTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ChronicleSketchPackageKeyTypesEnum),
                    ]),
                  )
                  as BuiltList<ChronicleSketchPackageKeyTypesEnum>;
          result.keyTypes.replace(valueDes);
          break;
        case r'minhash':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>;
          result.minhash.replace(valueDes);
          break;
        case r'sizeBand':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>;
          result.sizeBand.replace(valueDes);
          break;
        case r'captureSpan':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleSketchPackageCaptureSpan,
                    ),
                  )
                  as ChronicleSketchPackageCaptureSpan;
          result.captureSpan.replace(valueDes);
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'ownerHandle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ownerHandle = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'issuedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.issuedAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchPackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchPackageBuilder();
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

class ChronicleSketchPackageKeyTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ChronicleSketchPackageKeyTypesEnum evidence =
      _$chronicleSketchPackageKeyTypesEnum_evidence;
  @BuiltValueEnumConst(wireName: r'entities')
  static const ChronicleSketchPackageKeyTypesEnum entities =
      _$chronicleSketchPackageKeyTypesEnum_entities;
  @BuiltValueEnumConst(wireName: r'area-time')
  static const ChronicleSketchPackageKeyTypesEnum areaTime =
      _$chronicleSketchPackageKeyTypesEnum_areaTime;
  @BuiltValueEnumConst(wireName: r'topics')
  static const ChronicleSketchPackageKeyTypesEnum topics =
      _$chronicleSketchPackageKeyTypesEnum_topics;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleSketchPackageKeyTypesEnum unknownDefaultOpenApi =
      _$chronicleSketchPackageKeyTypesEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleSketchPackageKeyTypesEnum> get serializer =>
      _$chronicleSketchPackageKeyTypesEnumSerializer;

  const ChronicleSketchPackageKeyTypesEnum._(String name) : super(name);

  static BuiltSet<ChronicleSketchPackageKeyTypesEnum> get values =>
      _$chronicleSketchPackageKeyTypesEnumValues;
  static ChronicleSketchPackageKeyTypesEnum valueOf(String name) =>
      _$chronicleSketchPackageKeyTypesEnumValueOf(name);
}
