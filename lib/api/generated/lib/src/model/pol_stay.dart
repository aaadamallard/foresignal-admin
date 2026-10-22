//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_stay.g.dart';

/// A stay: consecutive fixes within stayRadiusM spanning at least minDwell (114)
///
/// Properties:
/// * [id] - ULID identifier
/// * [subjectId] - ULID identifier
/// * [arrive]
/// * [depart]
/// * [centroid]
/// * [placeId] - ULID identifier
/// * [clusterId] - null = unclustered (noise)
/// * [fixes]
@BuiltValue()
abstract class PolStay implements Built<PolStay, PolStayBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'subjectId')
  String get subjectId;

  @BuiltValueField(wireName: r'arrive')
  DateTime get arrive;

  @BuiltValueField(wireName: r'depart')
  DateTime get depart;

  @BuiltValueField(wireName: r'centroid')
  Geometry get centroid;

  /// ULID identifier
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// null = unclustered (noise)
  @BuiltValueField(wireName: r'clusterId')
  int? get clusterId;

  @BuiltValueField(wireName: r'fixes')
  int? get fixes;

  PolStay._();

  factory PolStay([void updates(PolStayBuilder b)]) = _$PolStay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolStayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolStay> get serializer => _$PolStaySerializer();
}

class _$PolStaySerializer implements PrimitiveSerializer<PolStay> {
  @override
  final Iterable<Type> types = const [PolStay, _$PolStay];

  @override
  final String wireName = r'PolStay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolStay object, {
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
    yield r'arrive';
    yield serializers.serialize(
      object.arrive,
      specifiedType: const FullType(DateTime),
    );
    yield r'depart';
    yield serializers.serialize(
      object.depart,
      specifiedType: const FullType(DateTime),
    );
    yield r'centroid';
    yield serializers.serialize(
      object.centroid,
      specifiedType: const FullType(Geometry),
    );
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.clusterId != null) {
      yield r'clusterId';
      yield serializers.serialize(
        object.clusterId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.fixes != null) {
      yield r'fixes';
      yield serializers.serialize(
        object.fixes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolStay object, {
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
    required PolStayBuilder result,
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
        case r'arrive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.arrive = valueDes;
          break;
        case r'depart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.depart = valueDes;
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
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'clusterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clusterId = valueDes;
          break;
        case r'fixes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fixes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolStay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolStayBuilder();
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
