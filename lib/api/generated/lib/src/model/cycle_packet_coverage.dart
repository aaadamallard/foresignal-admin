//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet_coverage.g.dart';

/// Coverage caveats
///
/// Properties:
/// * [failingSources]
/// * [degradedSources]
/// * [lowReportingDensityRegions]
@BuiltValue()
abstract class CyclePacketCoverage
    implements Built<CyclePacketCoverage, CyclePacketCoverageBuilder> {
  @BuiltValueField(wireName: r'failingSources')
  BuiltList<String>? get failingSources;

  @BuiltValueField(wireName: r'degradedSources')
  BuiltList<String>? get degradedSources;

  @BuiltValueField(wireName: r'lowReportingDensityRegions')
  BuiltList<String>? get lowReportingDensityRegions;

  CyclePacketCoverage._();

  factory CyclePacketCoverage([void updates(CyclePacketCoverageBuilder b)]) =
      _$CyclePacketCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacketCoverage> get serializer =>
      _$CyclePacketCoverageSerializer();
}

class _$CyclePacketCoverageSerializer
    implements PrimitiveSerializer<CyclePacketCoverage> {
  @override
  final Iterable<Type> types = const [
    CyclePacketCoverage,
    _$CyclePacketCoverage
  ];

  @override
  final String wireName = r'CyclePacketCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacketCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.failingSources != null) {
      yield r'failingSources';
      yield serializers.serialize(
        object.failingSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.degradedSources != null) {
      yield r'degradedSources';
      yield serializers.serialize(
        object.degradedSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lowReportingDensityRegions != null) {
      yield r'lowReportingDensityRegions';
      yield serializers.serialize(
        object.lowReportingDensityRegions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketCoverage object, {
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
    required CyclePacketCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'failingSources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.failingSources.replace(valueDes);
          break;
        case r'degradedSources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.degradedSources.replace(valueDes);
          break;
        case r'lowReportingDensityRegions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.lowReportingDensityRegions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacketCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketCoverageBuilder();
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
