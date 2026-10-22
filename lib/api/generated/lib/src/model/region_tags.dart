//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/region_near.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region_tags.g.dart';

/// Region context of a point or record (040); stored outside the hash
///
/// Properties:
/// * [iso2] - null at sea
/// * [admin1] - ISO 3166-2, e.g. US-TX
/// * [admin2] - US county FIPS5
/// * [sea]
/// * [near]
/// * [countryName]
/// * [admin1Name]
/// * [countyName]
/// * [attribution] - GeoNames attribution when `near` is present
@BuiltValue()
abstract class RegionTags implements Built<RegionTags, RegionTagsBuilder> {
  /// null at sea
  @BuiltValueField(wireName: r'iso2')
  String? get iso2;

  /// ISO 3166-2, e.g. US-TX
  @BuiltValueField(wireName: r'admin1')
  String? get admin1;

  /// US county FIPS5
  @BuiltValueField(wireName: r'admin2')
  String? get admin2;

  @BuiltValueField(wireName: r'sea')
  String? get sea;

  @BuiltValueField(wireName: r'near')
  RegionNear? get near;

  @BuiltValueField(wireName: r'countryName')
  String? get countryName;

  @BuiltValueField(wireName: r'admin1Name')
  String? get admin1Name;

  @BuiltValueField(wireName: r'countyName')
  String? get countyName;

  /// GeoNames attribution when `near` is present
  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  RegionTags._();

  factory RegionTags([void updates(RegionTagsBuilder b)]) = _$RegionTags;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionTagsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionTags> get serializer => _$RegionTagsSerializer();
}

class _$RegionTagsSerializer implements PrimitiveSerializer<RegionTags> {
  @override
  final Iterable<Type> types = const [RegionTags, _$RegionTags];

  @override
  final String wireName = r'RegionTags';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionTags object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.iso2 != null) {
      yield r'iso2';
      yield serializers.serialize(
        object.iso2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.admin1 != null) {
      yield r'admin1';
      yield serializers.serialize(
        object.admin1,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.admin2 != null) {
      yield r'admin2';
      yield serializers.serialize(
        object.admin2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sea != null) {
      yield r'sea';
      yield serializers.serialize(
        object.sea,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType.nullable(RegionNear),
      );
    }
    if (object.countryName != null) {
      yield r'countryName';
      yield serializers.serialize(
        object.countryName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.admin1Name != null) {
      yield r'admin1Name';
      yield serializers.serialize(
        object.admin1Name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.countyName != null) {
      yield r'countyName';
      yield serializers.serialize(
        object.countyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionTags object, {
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
    required RegionTagsBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.iso2 = valueDes;
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1 = valueDes;
          break;
        case r'admin2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin2 = valueDes;
          break;
        case r'sea':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sea = valueDes;
          break;
        case r'near':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RegionNear),
                  )
                  as RegionNear?;
          if (valueDes == null) continue;
          result.near.replace(valueDes);
          break;
        case r'countryName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countryName = valueDes;
          break;
        case r'admin1Name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1Name = valueDes;
          break;
        case r'countyName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countyName = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionTags deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionTagsBuilder();
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
