//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_presentation.g.dart';

/// Layer hints for clients and styles
///
/// Properties:
/// * [color]
/// * [icon]
/// * [labelField]
/// * [minZoom]
/// * [maxZoom]
/// * [tileProperties]
@BuiltValue()
abstract class EdpPresentation
    implements Built<EdpPresentation, EdpPresentationBuilder> {
  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'icon')
  String? get icon;

  @BuiltValueField(wireName: r'labelField')
  String? get labelField;

  @BuiltValueField(wireName: r'minZoom')
  int? get minZoom;

  @BuiltValueField(wireName: r'maxZoom')
  int? get maxZoom;

  @BuiltValueField(wireName: r'tileProperties')
  BuiltList<String>? get tileProperties;

  EdpPresentation._();

  factory EdpPresentation([void updates(EdpPresentationBuilder b)]) =
      _$EdpPresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpPresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpPresentation> get serializer =>
      _$EdpPresentationSerializer();
}

class _$EdpPresentationSerializer
    implements PrimitiveSerializer<EdpPresentation> {
  @override
  final Iterable<Type> types = const [EdpPresentation, _$EdpPresentation];

  @override
  final String wireName = r'EdpPresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpPresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
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
    if (object.labelField != null) {
      yield r'labelField';
      yield serializers.serialize(
        object.labelField,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minZoom != null) {
      yield r'minZoom';
      yield serializers.serialize(
        object.minZoom,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxZoom != null) {
      yield r'maxZoom';
      yield serializers.serialize(
        object.maxZoom,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.tileProperties != null) {
      yield r'tileProperties';
      yield serializers.serialize(
        object.tileProperties,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpPresentation object, {
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
    required EdpPresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'labelField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.labelField = valueDes;
          break;
        case r'minZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minZoom = valueDes;
          break;
        case r'maxZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxZoom = valueDes;
          break;
        case r'tileProperties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tileProperties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpPresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpPresentationBuilder();
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
