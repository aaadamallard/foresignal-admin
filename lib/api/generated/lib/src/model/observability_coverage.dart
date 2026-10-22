//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/detectability.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'observability_coverage.g.dart';

/// Coverage layer response: detectability per region or H3 cell (116)
///
/// Properties:
/// * [family]
/// * [at]
/// * [band]
/// * [absenceMinDetect]
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class ObservabilityCoverage
    implements Built<ObservabilityCoverage, ObservabilityCoverageBuilder> {
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'band')
  String? get band;

  @BuiltValueField(wireName: r'absenceMinDetect')
  num get absenceMinDetect;

  @BuiltValueField(wireName: r'items')
  BuiltList<Detectability> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ObservabilityCoverage._();

  factory ObservabilityCoverage(
      [void updates(ObservabilityCoverageBuilder b)]) = _$ObservabilityCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObservabilityCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObservabilityCoverage> get serializer =>
      _$ObservabilityCoverageSerializer();
}

class _$ObservabilityCoverageSerializer
    implements PrimitiveSerializer<ObservabilityCoverage> {
  @override
  final Iterable<Type> types = const [
    ObservabilityCoverage,
    _$ObservabilityCoverage
  ];

  @override
  final String wireName = r'ObservabilityCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObservabilityCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.band != null) {
      yield r'band';
      yield serializers.serialize(
        object.band,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'absenceMinDetect';
    yield serializers.serialize(
      object.absenceMinDetect,
      specifiedType: const FullType(num),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Detectability)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObservabilityCoverage object, {
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
    required ObservabilityCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.family = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'band':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.band = valueDes;
          break;
        case r'absenceMinDetect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.absenceMinDetect = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Detectability)]),
          ) as BuiltList<Detectability>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObservabilityCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObservabilityCoverageBuilder();
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
