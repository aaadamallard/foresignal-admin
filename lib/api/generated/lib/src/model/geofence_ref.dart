//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'geofence_ref.g.dart';

/// Region preset used as a rule geofence (040)
///
/// Properties:
/// * [country]
/// * [admin1]
/// * [county]
@BuiltValue()
abstract class GeofenceRef implements Built<GeofenceRef, GeofenceRefBuilder> {
  @BuiltValueField(wireName: r'country')
  BuiltList<String>? get country;

  @BuiltValueField(wireName: r'admin1')
  BuiltList<String>? get admin1;

  @BuiltValueField(wireName: r'county')
  BuiltList<String>? get county;

  GeofenceRef._();

  factory GeofenceRef([void updates(GeofenceRefBuilder b)]) = _$GeofenceRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeofenceRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GeofenceRef> get serializer => _$GeofenceRefSerializer();
}

class _$GeofenceRefSerializer implements PrimitiveSerializer<GeofenceRef> {
  @override
  final Iterable<Type> types = const [GeofenceRef, _$GeofenceRef];

  @override
  final String wireName = r'GeofenceRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeofenceRef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.admin1 != null) {
      yield r'admin1';
      yield serializers.serialize(
        object.admin1,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.county != null) {
      yield r'county';
      yield serializers.serialize(
        object.county,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GeofenceRef object, {
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
    required GeofenceRefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'country':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.country.replace(valueDes);
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.admin1.replace(valueDes);
          break;
        case r'county':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.county.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeofenceRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeofenceRefBuilder();
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
