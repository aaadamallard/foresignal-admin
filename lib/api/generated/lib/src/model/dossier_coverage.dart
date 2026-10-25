//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/coverage_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_coverage.g.dart';

/// Dossier coverage section
///
/// Properties:
/// * [status]
/// * [stats]
@BuiltValue()
abstract class DossierCoverage
    implements Built<DossierCoverage, DossierCoverageBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierCoverageStatusEnum get status;
  // enum statusEnum {  ok,  partial,  unavailable,  };

  @BuiltValueField(wireName: r'stats')
  CoverageStats? get stats;

  DossierCoverage._();

  factory DossierCoverage([void updates(DossierCoverageBuilder b)]) =
      _$DossierCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierCoverage> get serializer =>
      _$DossierCoverageSerializer();
}

class _$DossierCoverageSerializer
    implements PrimitiveSerializer<DossierCoverage> {
  @override
  final Iterable<Type> types = const [DossierCoverage, _$DossierCoverage];

  @override
  final String wireName = r'DossierCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierCoverageStatusEnum),
    );
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType.nullable(CoverageStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierCoverage object, {
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
    required DossierCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DossierCoverageStatusEnum),
                  )
                  as DossierCoverageStatusEnum;
          result.status = valueDes;
          break;
        case r'stats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CoverageStats),
                  )
                  as CoverageStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierCoverageBuilder();
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

class DossierCoverageStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierCoverageStatusEnum ok = _$dossierCoverageStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'partial')
  static const DossierCoverageStatusEnum partial =
      _$dossierCoverageStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierCoverageStatusEnum unavailable =
      _$dossierCoverageStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DossierCoverageStatusEnum unknownDefaultOpenApi =
      _$dossierCoverageStatusEnum_unknownDefaultOpenApi;

  static Serializer<DossierCoverageStatusEnum> get serializer =>
      _$dossierCoverageStatusEnumSerializer;

  const DossierCoverageStatusEnum._(String name) : super(name);

  static BuiltSet<DossierCoverageStatusEnum> get values =>
      _$dossierCoverageStatusEnumValues;
  static DossierCoverageStatusEnum valueOf(String name) =>
      _$dossierCoverageStatusEnumValueOf(name);
}
