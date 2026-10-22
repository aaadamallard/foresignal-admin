//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/sample_track_response_points_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_track_response.g.dart';

/// Per-point samples along a track; each point and value carries a status
///
/// Properties:
/// * [record]
/// * [products]
/// * [points]
/// * [attribution]
/// * [serverTime]
@BuiltValue()
abstract class SampleTrackResponse
    implements Built<SampleTrackResponse, SampleTrackResponseBuilder> {
  @BuiltValueField(wireName: r'record')
  String? get record;

  @BuiltValueField(wireName: r'products')
  BuiltList<String> get products;

  @BuiltValueField(wireName: r'points')
  BuiltList<SampleTrackResponsePointsInner> get points;

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'serverTime')
  DateTime? get serverTime;

  SampleTrackResponse._();

  factory SampleTrackResponse([void updates(SampleTrackResponseBuilder b)]) =
      _$SampleTrackResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleTrackResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleTrackResponse> get serializer =>
      _$SampleTrackResponseSerializer();
}

class _$SampleTrackResponseSerializer
    implements PrimitiveSerializer<SampleTrackResponse> {
  @override
  final Iterable<Type> types = const [
    SampleTrackResponse,
    _$SampleTrackResponse,
  ];

  @override
  final String wireName = r'SampleTrackResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleTrackResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'products';
    yield serializers.serialize(
      object.products,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [
        FullType(SampleTrackResponsePointsInner),
      ]),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.serverTime != null) {
      yield r'serverTime';
      yield serializers.serialize(
        object.serverTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleTrackResponse object, {
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
    required SampleTrackResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.record = valueDes;
          break;
        case r'products':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.products.replace(valueDes);
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SampleTrackResponsePointsInner),
                    ]),
                  )
                  as BuiltList<SampleTrackResponsePointsInner>;
          result.points.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'serverTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.serverTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleTrackResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleTrackResponseBuilder();
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
