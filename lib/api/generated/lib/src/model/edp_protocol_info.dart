//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_protocol_info.g.dart';

/// EDP protocol description (024)
///
/// Properties:
/// * [protocol]
/// * [supported]
/// * [itemTypes]
/// * [modes]
/// * [schemas]
/// * [documentation]
/// * [maxMinor] - Highest 1.x minor version accepted
@BuiltValue()
abstract class EdpProtocolInfo
    implements Built<EdpProtocolInfo, EdpProtocolInfoBuilder> {
  @BuiltValueField(wireName: r'protocol')
  String get protocol;

  @BuiltValueField(wireName: r'supported')
  BuiltList<String>? get supported;

  @BuiltValueField(wireName: r'itemTypes')
  BuiltList<String> get itemTypes;

  @BuiltValueField(wireName: r'modes')
  BuiltList<EdpProtocolInfoModesEnum> get modes;
  // enum modesEnum {  layer,  atomic,  };

  @BuiltValueField(wireName: r'schemas')
  BuiltList<String>? get schemas;

  @BuiltValueField(wireName: r'documentation')
  String? get documentation;

  /// Highest 1.x minor version accepted
  @BuiltValueField(wireName: r'maxMinor')
  int? get maxMinor;

  EdpProtocolInfo._();

  factory EdpProtocolInfo([void updates(EdpProtocolInfoBuilder b)]) =
      _$EdpProtocolInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpProtocolInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpProtocolInfo> get serializer =>
      _$EdpProtocolInfoSerializer();
}

class _$EdpProtocolInfoSerializer
    implements PrimitiveSerializer<EdpProtocolInfo> {
  @override
  final Iterable<Type> types = const [EdpProtocolInfo, _$EdpProtocolInfo];

  @override
  final String wireName = r'EdpProtocolInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpProtocolInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'protocol';
    yield serializers.serialize(
      object.protocol,
      specifiedType: const FullType(String),
    );
    if (object.supported != null) {
      yield r'supported';
      yield serializers.serialize(
        object.supported,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'itemTypes';
    yield serializers.serialize(
      object.itemTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'modes';
    yield serializers.serialize(
      object.modes,
      specifiedType: const FullType(BuiltList, [
        FullType(EdpProtocolInfoModesEnum),
      ]),
    );
    if (object.schemas != null) {
      yield r'schemas';
      yield serializers.serialize(
        object.schemas,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.documentation != null) {
      yield r'documentation';
      yield serializers.serialize(
        object.documentation,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxMinor != null) {
      yield r'maxMinor';
      yield serializers.serialize(
        object.maxMinor,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpProtocolInfo object, {
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
    required EdpProtocolInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'protocol':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.protocol = valueDes;
          break;
        case r'supported':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.supported.replace(valueDes);
          break;
        case r'itemTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.itemTypes.replace(valueDes);
          break;
        case r'modes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(EdpProtocolInfoModesEnum),
                    ]),
                  )
                  as BuiltList<EdpProtocolInfoModesEnum>;
          result.modes.replace(valueDes);
          break;
        case r'schemas':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.schemas.replace(valueDes);
          break;
        case r'documentation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.documentation = valueDes;
          break;
        case r'maxMinor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxMinor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpProtocolInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpProtocolInfoBuilder();
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

class EdpProtocolInfoModesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'layer')
  static const EdpProtocolInfoModesEnum layer =
      _$edpProtocolInfoModesEnum_layer;
  @BuiltValueEnumConst(wireName: r'atomic')
  static const EdpProtocolInfoModesEnum atomic =
      _$edpProtocolInfoModesEnum_atomic;

  static Serializer<EdpProtocolInfoModesEnum> get serializer =>
      _$edpProtocolInfoModesEnumSerializer;

  const EdpProtocolInfoModesEnum._(String name) : super(name);

  static BuiltSet<EdpProtocolInfoModesEnum> get values =>
      _$edpProtocolInfoModesEnumValues;
  static EdpProtocolInfoModesEnum valueOf(String name) =>
      _$edpProtocolInfoModesEnumValueOf(name);
}
