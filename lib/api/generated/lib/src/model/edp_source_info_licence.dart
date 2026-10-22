//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info_licence.g.dart';

/// EdpSourceInfoLicence
///
/// Properties:
/// * [id]
/// * [url]
/// * [attribution]
/// * [redistribution]
@BuiltValue()
abstract class EdpSourceInfoLicence
    implements Built<EdpSourceInfoLicence, EdpSourceInfoLicenceBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'redistribution')
  EdpSourceInfoLicenceRedistributionEnum? get redistribution;
  // enum redistributionEnum {  allowed,  local-only,  unknown,  };

  EdpSourceInfoLicence._();

  factory EdpSourceInfoLicence([void updates(EdpSourceInfoLicenceBuilder b)]) =
      _$EdpSourceInfoLicence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoLicenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfoLicence> get serializer =>
      _$EdpSourceInfoLicenceSerializer();
}

class _$EdpSourceInfoLicenceSerializer
    implements PrimitiveSerializer<EdpSourceInfoLicence> {
  @override
  final Iterable<Type> types = const [
    EdpSourceInfoLicence,
    _$EdpSourceInfoLicence
  ];

  @override
  final String wireName = r'EdpSourceInfoLicence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfoLicence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
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
    if (object.redistribution != null) {
      yield r'redistribution';
      yield serializers.serialize(
        object.redistribution,
        specifiedType: const FullType(EdpSourceInfoLicenceRedistributionEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoLicence object, {
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
    required EdpSourceInfoLicenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'redistribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EdpSourceInfoLicenceRedistributionEnum),
          ) as EdpSourceInfoLicenceRedistributionEnum?;
          if (valueDes == null) continue;
          result.redistribution = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSourceInfoLicence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoLicenceBuilder();
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

class EdpSourceInfoLicenceRedistributionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'allowed')
  static const EdpSourceInfoLicenceRedistributionEnum allowed =
      _$edpSourceInfoLicenceRedistributionEnum_allowed;
  @BuiltValueEnumConst(wireName: r'local-only')
  static const EdpSourceInfoLicenceRedistributionEnum localOnly =
      _$edpSourceInfoLicenceRedistributionEnum_localOnly;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const EdpSourceInfoLicenceRedistributionEnum unknown =
      _$edpSourceInfoLicenceRedistributionEnum_unknown;

  static Serializer<EdpSourceInfoLicenceRedistributionEnum> get serializer =>
      _$edpSourceInfoLicenceRedistributionEnumSerializer;

  const EdpSourceInfoLicenceRedistributionEnum._(String name) : super(name);

  static BuiltSet<EdpSourceInfoLicenceRedistributionEnum> get values =>
      _$edpSourceInfoLicenceRedistributionEnumValues;
  static EdpSourceInfoLicenceRedistributionEnum valueOf(String name) =>
      _$edpSourceInfoLicenceRedistributionEnumValueOf(name);
}
