//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kind_display.g.dart';

/// Client display hints for one kind (descriptor `kindDisplay`); `titleTemplate` is never used server-side
///
/// Properties:
/// * [titleTemplate] - Client title template with `{field}` placeholders
/// * [icon] - Icon name
/// * [colour] - Colour `#RRGGBB`
/// * [sidc] - Optional MIL-STD-2525 symbol identification code (15 or 20 characters)
/// * [rotateField] - Payload field rotating the icon (e.g. `track`); must be in tileProperties
/// * [sizeField] - Payload field scaling circle radius (e.g. `frp`, `mag`); must be in tileProperties
/// * [colorField] - Payload field driving a data-driven colour match (default `severity`); must be in tileProperties
/// * [iconField] - Payload field choosing the icon through `iconCases` (e.g. `chartSymbol`); must be in tileProperties
/// * [iconCases] - Icon names by lowercase `iconField` value; `icon` is drawn for any other value
/// * [colorCases] - Colors `#RRGGBB` by lowercase `colorField` value, replacing the severity colors; `colour` for any other value
@BuiltValue()
abstract class KindDisplay implements Built<KindDisplay, KindDisplayBuilder> {
  /// Client title template with `{field}` placeholders
  @BuiltValueField(wireName: r'titleTemplate')
  String? get titleTemplate;

  /// Icon name
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Colour `#RRGGBB`
  @BuiltValueField(wireName: r'colour')
  String? get colour;

  /// Optional MIL-STD-2525 symbol identification code (15 or 20 characters)
  @BuiltValueField(wireName: r'sidc')
  String? get sidc;

  /// Payload field rotating the icon (e.g. `track`); must be in tileProperties
  @BuiltValueField(wireName: r'rotateField')
  String? get rotateField;

  /// Payload field scaling circle radius (e.g. `frp`, `mag`); must be in tileProperties
  @BuiltValueField(wireName: r'sizeField')
  String? get sizeField;

  /// Payload field driving a data-driven colour match (default `severity`); must be in tileProperties
  @BuiltValueField(wireName: r'colorField')
  String? get colorField;

  /// Payload field choosing the icon through `iconCases` (e.g. `chartSymbol`); must be in tileProperties
  @BuiltValueField(wireName: r'iconField')
  String? get iconField;

  /// Icon names by lowercase `iconField` value; `icon` is drawn for any other value
  @BuiltValueField(wireName: r'iconCases')
  BuiltMap<String, String>? get iconCases;

  /// Colors `#RRGGBB` by lowercase `colorField` value, replacing the severity colors; `colour` for any other value
  @BuiltValueField(wireName: r'colorCases')
  BuiltMap<String, String>? get colorCases;

  KindDisplay._();

  factory KindDisplay([void updates(KindDisplayBuilder b)]) = _$KindDisplay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KindDisplayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KindDisplay> get serializer => _$KindDisplaySerializer();
}

class _$KindDisplaySerializer implements PrimitiveSerializer<KindDisplay> {
  @override
  final Iterable<Type> types = const [KindDisplay, _$KindDisplay];

  @override
  final String wireName = r'KindDisplay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KindDisplay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.titleTemplate != null) {
      yield r'titleTemplate';
      yield serializers.serialize(
        object.titleTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.colour != null) {
      yield r'colour';
      yield serializers.serialize(
        object.colour,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sidc != null) {
      yield r'sidc';
      yield serializers.serialize(
        object.sidc,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rotateField != null) {
      yield r'rotateField';
      yield serializers.serialize(
        object.rotateField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sizeField != null) {
      yield r'sizeField';
      yield serializers.serialize(
        object.sizeField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.colorField != null) {
      yield r'colorField';
      yield serializers.serialize(
        object.colorField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.iconField != null) {
      yield r'iconField';
      yield serializers.serialize(
        object.iconField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.iconCases != null) {
      yield r'iconCases';
      yield serializers.serialize(
        object.iconCases,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.colorCases != null) {
      yield r'colorCases';
      yield serializers.serialize(
        object.colorCases,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KindDisplay object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KindDisplayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'titleTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleTemplate = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'colour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.colour = valueDes;
          break;
        case r'sidc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sidc = valueDes;
          break;
        case r'rotateField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rotateField = valueDes;
          break;
        case r'sizeField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sizeField = valueDes;
          break;
        case r'colorField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.colorField = valueDes;
          break;
        case r'iconField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iconField = valueDes;
          break;
        case r'iconCases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.iconCases.replace(valueDes);
          break;
        case r'colorCases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.colorCases.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KindDisplay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KindDisplayBuilder();
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
