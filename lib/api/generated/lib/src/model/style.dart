//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/style_stop.dart';
import 'package:foresignal_api/src/model/style_special.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/style_meaning.dart';
import 'package:foresignal_api/src/model/style_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style.g.dart';

/// Versioned colour style compiled to a ≤ 256-colour palette
///
/// Properties:
/// * [id]
/// * [version]
/// * [ref] - Versioned reference `name@v`
/// * [current] - This is the current version of the style
/// * [type]
/// * [units]
/// * [stops]
/// * [categories]
/// * [specials]
/// * [meaning]
/// * [notice] - Ramp origin and licence (viridis CC0, cmocean MIT, GEV MIT)
/// * [derive] - `speed`: the style colors the vector magnitude √(u²+v²) of a frame's first two bands (051, `wind-speed`); a one-band frame's value is used as is
@BuiltValue()
abstract class Style implements Built<Style, StyleBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  int get version;

  /// Versioned reference `name@v`
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// This is the current version of the style
  @BuiltValueField(wireName: r'current')
  bool? get current;

  @BuiltValueField(wireName: r'type')
  StyleTypeEnum get type;
  // enum typeEnum {  continuous,  discrete,  categorical,  };

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'stops')
  BuiltList<StyleStop>? get stops;

  @BuiltValueField(wireName: r'categories')
  BuiltList<StyleCategory>? get categories;

  @BuiltValueField(wireName: r'specials')
  BuiltList<StyleSpecial>? get specials;

  @BuiltValueField(wireName: r'meaning')
  BuiltList<StyleMeaning>? get meaning;

  /// Ramp origin and licence (viridis CC0, cmocean MIT, GEV MIT)
  @BuiltValueField(wireName: r'notice')
  String? get notice;

  /// `speed`: the style colors the vector magnitude √(u²+v²) of a frame's first two bands (051, `wind-speed`); a one-band frame's value is used as is
  @BuiltValueField(wireName: r'derive')
  StyleDeriveEnum? get derive;
  // enum deriveEnum {  speed,  };

  Style._();

  factory Style([void updates(StyleBuilder b)]) = _$Style;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Style> get serializer => _$StyleSerializer();
}

class _$StyleSerializer implements PrimitiveSerializer<Style> {
  @override
  final Iterable<Type> types = const [Style, _$Style];

  @override
  final String wireName = r'Style';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Style object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(StyleTypeEnum),
    );
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.stops != null) {
      yield r'stops';
      yield serializers.serialize(
        object.stops,
        specifiedType: const FullType(BuiltList, [FullType(StyleStop)]),
      );
    }
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(StyleCategory)]),
      );
    }
    if (object.specials != null) {
      yield r'specials';
      yield serializers.serialize(
        object.specials,
        specifiedType: const FullType(BuiltList, [FullType(StyleSpecial)]),
      );
    }
    if (object.meaning != null) {
      yield r'meaning';
      yield serializers.serialize(
        object.meaning,
        specifiedType: const FullType(BuiltList, [FullType(StyleMeaning)]),
      );
    }
    if (object.notice != null) {
      yield r'notice';
      yield serializers.serialize(
        object.notice,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.derive != null) {
      yield r'derive';
      yield serializers.serialize(
        object.derive,
        specifiedType: const FullType.nullable(StyleDeriveEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Style object, {
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
    required StyleBuilder result,
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
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'current':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.current = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StyleTypeEnum),
                  )
                  as StyleTypeEnum;
          result.type = valueDes;
          break;
        case r'units':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        case r'stops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StyleStop),
                    ]),
                  )
                  as BuiltList<StyleStop>?;
          if (valueDes == null) continue;
          result.stops.replace(valueDes);
          break;
        case r'categories':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StyleCategory),
                    ]),
                  )
                  as BuiltList<StyleCategory>?;
          if (valueDes == null) continue;
          result.categories.replace(valueDes);
          break;
        case r'specials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StyleSpecial),
                    ]),
                  )
                  as BuiltList<StyleSpecial>?;
          if (valueDes == null) continue;
          result.specials.replace(valueDes);
          break;
        case r'meaning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StyleMeaning),
                    ]),
                  )
                  as BuiltList<StyleMeaning>?;
          if (valueDes == null) continue;
          result.meaning.replace(valueDes);
          break;
        case r'notice':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notice = valueDes;
          break;
        case r'derive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StyleDeriveEnum),
                  )
                  as StyleDeriveEnum?;
          if (valueDes == null) continue;
          result.derive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Style deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleBuilder();
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

class StyleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'continuous')
  static const StyleTypeEnum continuous = _$styleTypeEnum_continuous;
  @BuiltValueEnumConst(wireName: r'discrete')
  static const StyleTypeEnum discrete = _$styleTypeEnum_discrete;
  @BuiltValueEnumConst(wireName: r'categorical')
  static const StyleTypeEnum categorical = _$styleTypeEnum_categorical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StyleTypeEnum unknownDefaultOpenApi =
      _$styleTypeEnum_unknownDefaultOpenApi;

  static Serializer<StyleTypeEnum> get serializer => _$styleTypeEnumSerializer;

  const StyleTypeEnum._(String name) : super(name);

  static BuiltSet<StyleTypeEnum> get values => _$styleTypeEnumValues;
  static StyleTypeEnum valueOf(String name) => _$styleTypeEnumValueOf(name);
}

/// `speed`: the style colors the vector magnitude √(u²+v²) of a frame's first two bands (051, `wind-speed`); a one-band frame's value is used as is
class StyleDeriveEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'speed')
  static const StyleDeriveEnum speed = _$styleDeriveEnum_speed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StyleDeriveEnum unknownDefaultOpenApi =
      _$styleDeriveEnum_unknownDefaultOpenApi;

  static Serializer<StyleDeriveEnum> get serializer =>
      _$styleDeriveEnumSerializer;

  const StyleDeriveEnum._(String name) : super(name);

  static BuiltSet<StyleDeriveEnum> get values => _$styleDeriveEnumValues;
  static StyleDeriveEnum valueOf(String name) => _$styleDeriveEnumValueOf(name);
}
