//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_place.g.dart';

/// A learned place (DBSCAN cluster of stays); outlives the TRACK window (114)
///
/// Properties:
/// * [id] - ULID identifier
/// * [subjectId] - ULID identifier
/// * [clusterId]
/// * [centroid]
/// * [radiusM] - p90 distance of member stays
/// * [visits]
/// * [totalDwellMinutes]
/// * [hourOfWeek] - Dwell minutes per hour of week (168 buckets, Monday 00:00 operator time first)
/// * [firstSeen]
/// * [lastSeen]
/// * [label] - Operator-set label, e.g. home
/// * [private]
@BuiltValue()
abstract class PolPlace implements Built<PolPlace, PolPlaceBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'subjectId')
  String get subjectId;

  @BuiltValueField(wireName: r'clusterId')
  int get clusterId;

  @BuiltValueField(wireName: r'centroid')
  Geometry get centroid;

  /// p90 distance of member stays
  @BuiltValueField(wireName: r'radiusM')
  num get radiusM;

  @BuiltValueField(wireName: r'visits')
  int get visits;

  @BuiltValueField(wireName: r'totalDwellMinutes')
  num get totalDwellMinutes;

  /// Dwell minutes per hour of week (168 buckets, Monday 00:00 operator time first)
  @BuiltValueField(wireName: r'hourOfWeek')
  BuiltList<num> get hourOfWeek;

  @BuiltValueField(wireName: r'firstSeen')
  DateTime get firstSeen;

  @BuiltValueField(wireName: r'lastSeen')
  DateTime get lastSeen;

  /// Operator-set label, e.g. home
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  PolPlace._();

  factory PolPlace([void updates(PolPlaceBuilder b)]) = _$PolPlace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolPlaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolPlace> get serializer => _$PolPlaceSerializer();
}

class _$PolPlaceSerializer implements PrimitiveSerializer<PolPlace> {
  @override
  final Iterable<Type> types = const [PolPlace, _$PolPlace];

  @override
  final String wireName = r'PolPlace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolPlace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'subjectId';
    yield serializers.serialize(
      object.subjectId,
      specifiedType: const FullType(String),
    );
    yield r'clusterId';
    yield serializers.serialize(
      object.clusterId,
      specifiedType: const FullType(int),
    );
    yield r'centroid';
    yield serializers.serialize(
      object.centroid,
      specifiedType: const FullType(Geometry),
    );
    yield r'radiusM';
    yield serializers.serialize(
      object.radiusM,
      specifiedType: const FullType(num),
    );
    yield r'visits';
    yield serializers.serialize(
      object.visits,
      specifiedType: const FullType(int),
    );
    yield r'totalDwellMinutes';
    yield serializers.serialize(
      object.totalDwellMinutes,
      specifiedType: const FullType(num),
    );
    yield r'hourOfWeek';
    yield serializers.serialize(
      object.hourOfWeek,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'firstSeen';
    yield serializers.serialize(
      object.firstSeen,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastSeen';
    yield serializers.serialize(
      object.lastSeen,
      specifiedType: const FullType(DateTime),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolPlace object, {
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
    required PolPlaceBuilder result,
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
        case r'subjectId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subjectId = valueDes;
          break;
        case r'clusterId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.clusterId = valueDes;
          break;
        case r'centroid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.centroid.replace(valueDes);
          break;
        case r'radiusM':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.radiusM = valueDes;
          break;
        case r'visits':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.visits = valueDes;
          break;
        case r'totalDwellMinutes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.totalDwellMinutes = valueDes;
          break;
        case r'hourOfWeek':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.hourOfWeek.replace(valueDes);
          break;
        case r'firstSeen':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstSeen = valueDes;
          break;
        case r'lastSeen':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastSeen = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolPlace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolPlaceBuilder();
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
