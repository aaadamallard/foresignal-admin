//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_collection_extent_temporal.g.dart';

/// Temporal extent (observed times; seq_clock and retention for history)
///
/// Properties:
/// * [interval]
/// * [trs]
@BuiltValue()
abstract class OgcCollectionExtentTemporal
    implements
        Built<OgcCollectionExtentTemporal, OgcCollectionExtentTemporalBuilder> {
  @BuiltValueField(wireName: r'interval')
  BuiltList<BuiltList<DateTime?>>? get interval;

  @BuiltValueField(wireName: r'trs')
  String? get trs;

  OgcCollectionExtentTemporal._();

  factory OgcCollectionExtentTemporal([
    void updates(OgcCollectionExtentTemporalBuilder b),
  ]) = _$OgcCollectionExtentTemporal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCollectionExtentTemporalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCollectionExtentTemporal> get serializer =>
      _$OgcCollectionExtentTemporalSerializer();
}

class _$OgcCollectionExtentTemporalSerializer
    implements PrimitiveSerializer<OgcCollectionExtentTemporal> {
  @override
  final Iterable<Type> types = const [
    OgcCollectionExtentTemporal,
    _$OgcCollectionExtentTemporal,
  ];

  @override
  final String wireName = r'OgcCollectionExtentTemporal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCollectionExtentTemporal object, {
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
    OgcCollectionExtentTemporal object, {
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
    required OgcCollectionExtentTemporalBuilder result,
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
  OgcCollectionExtentTemporal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCollectionExtentTemporalBuilder();
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
