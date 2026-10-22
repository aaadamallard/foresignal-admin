//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'country_ref.g.dart';

/// One row of the bundled country table (040)
///
/// Properties:
/// * [iso2]
/// * [iso3]
/// * [isoNumeric]
/// * [fips]
/// * [name]
/// * [nameLong]
/// * [continent]
/// * [labelLon]
/// * [labelLat]
/// * [aliases]
@BuiltValue()
abstract class CountryRef implements Built<CountryRef, CountryRefBuilder> {
  @BuiltValueField(wireName: r'iso2')
  String get iso2;

  @BuiltValueField(wireName: r'iso3')
  String get iso3;

  @BuiltValueField(wireName: r'isoNumeric')
  String? get isoNumeric;

  @BuiltValueField(wireName: r'fips')
  String? get fips;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'nameLong')
  String? get nameLong;

  @BuiltValueField(wireName: r'continent')
  String? get continent;

  @BuiltValueField(wireName: r'labelLon')
  num get labelLon;

  @BuiltValueField(wireName: r'labelLat')
  num get labelLat;

  @BuiltValueField(wireName: r'aliases')
  BuiltList<String>? get aliases;

  CountryRef._();

  factory CountryRef([void updates(CountryRefBuilder b)]) = _$CountryRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CountryRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CountryRef> get serializer => _$CountryRefSerializer();
}

class _$CountryRefSerializer implements PrimitiveSerializer<CountryRef> {
  @override
  final Iterable<Type> types = const [CountryRef, _$CountryRef];

  @override
  final String wireName = r'CountryRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CountryRef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'iso2';
    yield serializers.serialize(
      object.iso2,
      specifiedType: const FullType(String),
    );
    yield r'iso3';
    yield serializers.serialize(
      object.iso3,
      specifiedType: const FullType(String),
    );
    if (object.isoNumeric != null) {
      yield r'isoNumeric';
      yield serializers.serialize(
        object.isoNumeric,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fips != null) {
      yield r'fips';
      yield serializers.serialize(
        object.fips,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.nameLong != null) {
      yield r'nameLong';
      yield serializers.serialize(
        object.nameLong,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.continent != null) {
      yield r'continent';
      yield serializers.serialize(
        object.continent,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'labelLon';
    yield serializers.serialize(
      object.labelLon,
      specifiedType: const FullType(num),
    );
    yield r'labelLat';
    yield serializers.serialize(
      object.labelLat,
      specifiedType: const FullType(num),
    );
    if (object.aliases != null) {
      yield r'aliases';
      yield serializers.serialize(
        object.aliases,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CountryRef object, {
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
    required CountryRefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'iso2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.iso2 = valueDes;
          break;
        case r'iso3':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.iso3 = valueDes;
          break;
        case r'isoNumeric':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.isoNumeric = valueDes;
          break;
        case r'fips':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fips = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'nameLong':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nameLong = valueDes;
          break;
        case r'continent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.continent = valueDes;
          break;
        case r'labelLon':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.labelLon = valueDes;
          break;
        case r'labelLat':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.labelLat = valueDes;
          break;
        case r'aliases':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.aliases.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CountryRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CountryRefBuilder();
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
