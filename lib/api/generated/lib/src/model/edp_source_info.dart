//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_source_info_originator.dart';
import 'package:foresignal_api/src/model/edp_source_info_terms.dart';
import 'package:foresignal_api/src/model/edp_source_info_licence.dart';
import 'package:foresignal_api/src/model/edp_source_info_publisher.dart';
import 'package:foresignal_api/src/model/edp_source_info_access.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info.g.dart';

/// Identity, publisher, licence, access and originator of a provider
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [version]
/// * [publisher]
/// * [homepage]
/// * [licence]
/// * [terms]
/// * [access]
/// * [originator]
/// * [private]
@BuiltValue()
abstract class EdpSourceInfo
    implements Built<EdpSourceInfo, EdpSourceInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'publisher')
  EdpSourceInfoPublisher get publisher;

  @BuiltValueField(wireName: r'homepage')
  String? get homepage;

  @BuiltValueField(wireName: r'licence')
  EdpSourceInfoLicence? get licence;

  @BuiltValueField(wireName: r'terms')
  EdpSourceInfoTerms? get terms;

  @BuiltValueField(wireName: r'access')
  EdpSourceInfoAccess? get access;

  @BuiltValueField(wireName: r'originator')
  EdpSourceInfoOriginator get originator;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  EdpSourceInfo._();

  factory EdpSourceInfo([void updates(EdpSourceInfoBuilder b)]) =
      _$EdpSourceInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfo> get serializer =>
      _$EdpSourceInfoSerializer();
}

class _$EdpSourceInfoSerializer implements PrimitiveSerializer<EdpSourceInfo> {
  @override
  final Iterable<Type> types = const [EdpSourceInfo, _$EdpSourceInfo];

  @override
  final String wireName = r'EdpSourceInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'publisher';
    yield serializers.serialize(
      object.publisher,
      specifiedType: const FullType(EdpSourceInfoPublisher),
    );
    if (object.homepage != null) {
      yield r'homepage';
      yield serializers.serialize(
        object.homepage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType(EdpSourceInfoLicence),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(EdpSourceInfoTerms),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(EdpSourceInfoAccess),
      );
    }
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(EdpSourceInfoOriginator),
    );
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfo object, {
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
    required EdpSourceInfoBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'publisher':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpSourceInfoPublisher),
                  )
                  as EdpSourceInfoPublisher;
          result.publisher.replace(valueDes);
          break;
        case r'homepage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.homepage = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EdpSourceInfoLicence,
                    ),
                  )
                  as EdpSourceInfoLicence?;
          if (valueDes == null) continue;
          result.licence.replace(valueDes);
          break;
        case r'terms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpSourceInfoTerms),
                  )
                  as EdpSourceInfoTerms?;
          if (valueDes == null) continue;
          result.terms.replace(valueDes);
          break;
        case r'access':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpSourceInfoAccess),
                  )
                  as EdpSourceInfoAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpSourceInfoOriginator),
                  )
                  as EdpSourceInfoOriginator;
          result.originator.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSourceInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoBuilder();
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
