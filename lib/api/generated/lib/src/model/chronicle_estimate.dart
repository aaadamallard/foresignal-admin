//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/chronicle_estimate_layers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_estimate.g.dart';

/// Projected storage for a chronicle's current layers
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [computedAt]
/// * [layers]
/// * [totalRowsPerDay]
/// * [totalBytesPerDay]
/// * [sizeCapBytes]
/// * [bytesUsed]
/// * [daysToCap]
/// * [caveats]
@BuiltValue()
abstract class ChronicleEstimate
    implements Built<ChronicleEstimate, ChronicleEstimateBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleEstimateLayersInner> get layers;

  @BuiltValueField(wireName: r'totalRowsPerDay')
  num get totalRowsPerDay;

  @BuiltValueField(wireName: r'totalBytesPerDay')
  num get totalBytesPerDay;

  @BuiltValueField(wireName: r'sizeCapBytes')
  int get sizeCapBytes;

  @BuiltValueField(wireName: r'bytesUsed')
  int? get bytesUsed;

  @BuiltValueField(wireName: r'daysToCap')
  num? get daysToCap;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  ChronicleEstimate._();

  factory ChronicleEstimate([void updates(ChronicleEstimateBuilder b)]) =
      _$ChronicleEstimate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleEstimateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleEstimate> get serializer =>
      _$ChronicleEstimateSerializer();
}

class _$ChronicleEstimateSerializer
    implements PrimitiveSerializer<ChronicleEstimate> {
  @override
  final Iterable<Type> types = const [ChronicleEstimate, _$ChronicleEstimate];

  @override
  final String wireName = r'ChronicleEstimate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleEstimate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleEstimateLayersInner)]),
    );
    yield r'totalRowsPerDay';
    yield serializers.serialize(
      object.totalRowsPerDay,
      specifiedType: const FullType(num),
    );
    yield r'totalBytesPerDay';
    yield serializers.serialize(
      object.totalBytesPerDay,
      specifiedType: const FullType(num),
    );
    yield r'sizeCapBytes';
    yield serializers.serialize(
      object.sizeCapBytes,
      specifiedType: const FullType(int),
    );
    if (object.bytesUsed != null) {
      yield r'bytesUsed';
      yield serializers.serialize(
        object.bytesUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.daysToCap != null) {
      yield r'daysToCap';
      yield serializers.serialize(
        object.daysToCap,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleEstimate object, {
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
    required ChronicleEstimateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'computedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.computedAt = valueDes;
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleEstimateLayersInner)]),
          ) as BuiltList<ChronicleEstimateLayersInner>;
          result.layers.replace(valueDes);
          break;
        case r'totalRowsPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalRowsPerDay = valueDes;
          break;
        case r'totalBytesPerDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalBytesPerDay = valueDes;
          break;
        case r'sizeCapBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeCapBytes = valueDes;
          break;
        case r'bytesUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytesUsed = valueDes;
          break;
        case r'daysToCap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.daysToCap = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleEstimate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleEstimateBuilder();
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
