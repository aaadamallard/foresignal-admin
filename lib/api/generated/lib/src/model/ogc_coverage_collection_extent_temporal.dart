//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_coverage_collection_extent_temporal.g.dart';

/// Frame times
///
/// Properties:
/// * [interval]
/// * [values] - Recent frame times
/// * [trs]
@BuiltValue()
abstract class OgcCoverageCollectionExtentTemporal
    implements
        Built<
          OgcCoverageCollectionExtentTemporal,
          OgcCoverageCollectionExtentTemporalBuilder
        > {
  @BuiltValueField(wireName: r'interval')
  BuiltList<BuiltList<DateTime?>>? get interval;

  /// Recent frame times
  @BuiltValueField(wireName: r'values')
  BuiltList<String>? get values;

  @BuiltValueField(wireName: r'trs')
  String? get trs;

  OgcCoverageCollectionExtentTemporal._();

  factory OgcCoverageCollectionExtentTemporal([
    void updates(OgcCoverageCollectionExtentTemporalBuilder b),
  ]) = _$OgcCoverageCollectionExtentTemporal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCoverageCollectionExtentTemporalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCoverageCollectionExtentTemporal> get serializer =>
      _$OgcCoverageCollectionExtentTemporalSerializer();
}

class _$OgcCoverageCollectionExtentTemporalSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionExtentTemporal> {
  @override
  final Iterable<Type> types = const [
    OgcCoverageCollectionExtentTemporal,
    _$OgcCoverageCollectionExtentTemporal,
  ];

  @override
  final String wireName = r'OgcCoverageCollectionExtentTemporal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCoverageCollectionExtentTemporal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltList, [FullType.nullable(DateTime)]),
        ]),
      );
    }
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.trs != null) {
      yield r'trs';
      yield serializers.serialize(
        object.trs,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcCoverageCollectionExtentTemporal object, {
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
    required OgcCoverageCollectionExtentTemporalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltList, [FullType.nullable(DateTime)]),
                    ]),
                  )
                  as BuiltList<BuiltList<DateTime?>>?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        case r'values':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.values.replace(valueDes);
          break;
        case r'trs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcCoverageCollectionExtentTemporal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCoverageCollectionExtentTemporalBuilder();
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
