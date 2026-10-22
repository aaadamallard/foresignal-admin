//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_properties.g.dart';

/// Track properties
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [from]
/// * [to]
/// * [times] - Epoch-ms per point, parallel to each segment
/// * [values] - Requested numeric fields, parallel arrays per segment
/// * [live] - The last point is the current record_live position, newer than the last version
/// * [pointsScanned]
/// * [pointsReturned]
/// * [toleranceMeters]
/// * [segments]
/// * [approximate]
/// * [downsampled]
/// * [truncated] - More than 200,000 rows existed
/// * [watermarkSeq]
@BuiltValue()
abstract class TrackProperties
    implements Built<TrackProperties, TrackPropertiesBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  /// Epoch-ms per point, parallel to each segment
  @BuiltValueField(wireName: r'times')
  BuiltList<BuiltList<int>> get times;

  /// Requested numeric fields, parallel arrays per segment
  @BuiltValueField(wireName: r'values')
  BuiltMap<String, BuiltList<BuiltList<num?>>>? get values;

  /// The last point is the current record_live position, newer than the last version
  @BuiltValueField(wireName: r'live')
  bool? get live;

  @BuiltValueField(wireName: r'pointsScanned')
  int? get pointsScanned;

  @BuiltValueField(wireName: r'pointsReturned')
  int get pointsReturned;

  @BuiltValueField(wireName: r'toleranceMeters')
  num? get toleranceMeters;

  @BuiltValueField(wireName: r'segments')
  int get segments;

  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  @BuiltValueField(wireName: r'downsampled')
  bool? get downsampled;

  /// More than 200,000 rows existed
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  TrackProperties._();

  factory TrackProperties([void updates(TrackPropertiesBuilder b)]) =
      _$TrackProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackPropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackProperties> get serializer =>
      _$TrackPropertiesSerializer();
}

class _$TrackPropertiesSerializer
    implements PrimitiveSerializer<TrackProperties> {
  @override
  final Iterable<Type> types = const [TrackProperties, _$TrackProperties];

  @override
  final String wireName = r'TrackProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    yield r'times';
    yield serializers.serialize(
      object.times,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltList, [FullType(int)]),
      ]),
    );
    if (object.values != null) {
      yield r'values';
      yield serializers.serialize(
        object.values,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [
            FullType(BuiltList, [FullType.nullable(num)]),
          ]),
        ]),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pointsScanned != null) {
      yield r'pointsScanned';
      yield serializers.serialize(
        object.pointsScanned,
        specifiedType: const FullType(int),
      );
    }
    yield r'pointsReturned';
    yield serializers.serialize(
      object.pointsReturned,
      specifiedType: const FullType(int),
    );
    if (object.toleranceMeters != null) {
      yield r'toleranceMeters';
      yield serializers.serialize(
        object.toleranceMeters,
        specifiedType: const FullType(num),
      );
    }
    yield r'segments';
    yield serializers.serialize(
      object.segments,
      specifiedType: const FullType(int),
    );
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.downsampled != null) {
      yield r'downsampled';
      yield serializers.serialize(
        object.downsampled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackProperties object, {
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
    required TrackPropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        case r'times':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(BuiltList, [FullType(int)]),
                    ]),
                  )
                  as BuiltList<BuiltList<int>>;
          result.times.replace(valueDes);
          break;
        case r'values':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [
                        FullType(BuiltList, [FullType.nullable(num)]),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<BuiltList<num?>>>?;
          if (valueDes == null) continue;
          result.values.replace(valueDes);
          break;
        case r'live':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'pointsScanned':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pointsScanned = valueDes;
          break;
        case r'pointsReturned':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.pointsReturned = valueDes;
          break;
        case r'toleranceMeters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.toleranceMeters = valueDes;
          break;
        case r'segments':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.segments = valueDes;
          break;
        case r'approximate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'downsampled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.downsampled = valueDes;
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.watermarkSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackPropertiesBuilder();
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
