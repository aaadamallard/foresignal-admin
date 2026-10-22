//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/style_stop.dart';
import 'package:foresignal_api/src/model/legend_tick.dart';
import 'package:foresignal_api/src/model/style_special.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/style_meaning.dart';
import 'package:foresignal_api/src/model/style_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legend.g.dart';

/// JSON legend of a product in a style and unit system
///
/// Properties:
/// * [productId]
/// * [styleId]
/// * [styleVersion]
/// * [type]
/// * [units]
/// * [unitsLabel]
/// * [stops]
/// * [ticks]
/// * [categories]
/// * [specials]
/// * [meaning]
@BuiltValue()
abstract class Legend implements Built<Legend, LegendBuilder> {
  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'styleId')
  String get styleId;

  @BuiltValueField(wireName: r'styleVersion')
  int get styleVersion;

  @BuiltValueField(wireName: r'type')
  LegendTypeEnum get type;
  // enum typeEnum {  continuous,  discrete,  categorical,  };

  @BuiltValueField(wireName: r'units')
  String? get units;

  @BuiltValueField(wireName: r'unitsLabel')
  String? get unitsLabel;

  @BuiltValueField(wireName: r'stops')
  BuiltList<StyleStop>? get stops;

  @BuiltValueField(wireName: r'ticks')
  BuiltList<LegendTick>? get ticks;

  @BuiltValueField(wireName: r'categories')
  BuiltList<StyleCategory>? get categories;

  @BuiltValueField(wireName: r'specials')
  BuiltList<StyleSpecial>? get specials;

  @BuiltValueField(wireName: r'meaning')
  BuiltList<StyleMeaning>? get meaning;

  Legend._();

  factory Legend([void updates(LegendBuilder b)]) = _$Legend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Legend> get serializer => _$LegendSerializer();
}

class _$LegendSerializer implements PrimitiveSerializer<Legend> {
  @override
  final Iterable<Type> types = const [Legend, _$Legend];

  @override
  final String wireName = r'Legend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Legend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    yield r'styleId';
    yield serializers.serialize(
      object.styleId,
      specifiedType: const FullType(String),
    );
    yield r'styleVersion';
    yield serializers.serialize(
      object.styleVersion,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LegendTypeEnum),
    );
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.unitsLabel != null) {
      yield r'unitsLabel';
      yield serializers.serialize(
        object.unitsLabel,
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
    if (object.ticks != null) {
      yield r'ticks';
      yield serializers.serialize(
        object.ticks,
        specifiedType: const FullType(BuiltList, [FullType(LegendTick)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Legend object, {
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
    required LegendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'styleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.styleId = valueDes;
          break;
        case r'styleVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.styleVersion = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LegendTypeEnum),
                  )
                  as LegendTypeEnum;
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
        case r'unitsLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.unitsLabel = valueDes;
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
        case r'ticks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LegendTick),
                    ]),
                  )
                  as BuiltList<LegendTick>?;
          if (valueDes == null) continue;
          result.ticks.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Legend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegendBuilder();
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

class LegendTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'continuous')
  static const LegendTypeEnum continuous = _$legendTypeEnum_continuous;
  @BuiltValueEnumConst(wireName: r'discrete')
  static const LegendTypeEnum discrete = _$legendTypeEnum_discrete;
  @BuiltValueEnumConst(wireName: r'categorical')
  static const LegendTypeEnum categorical = _$legendTypeEnum_categorical;

  static Serializer<LegendTypeEnum> get serializer =>
      _$legendTypeEnumSerializer;

  const LegendTypeEnum._(String name) : super(name);

  static BuiltSet<LegendTypeEnum> get values => _$legendTypeEnumValues;
  static LegendTypeEnum valueOf(String name) => _$legendTypeEnumValueOf(name);
}
