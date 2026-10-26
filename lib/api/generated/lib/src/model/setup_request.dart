//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/resource_thresholds.dart';
import 'package:foresignal_api/src/model/smtp_settings_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/setup_request_admin.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setup_request.g.dart';

/// First-run bootstrap: create the first admin and optionally seed SMTP, sources and thresholds (C4/190)
///
/// Properties:
/// * [admin]
/// * [smtp]
/// * [sources] - Source ids to enable in the collection set
/// * [thresholds]
/// * [retention] - Optional retention policy to seed
@BuiltValue()
abstract class SetupRequest
    implements Built<SetupRequest, SetupRequestBuilder> {
  @BuiltValueField(wireName: r'admin')
  SetupRequestAdmin get admin;

  @BuiltValueField(wireName: r'smtp')
  SmtpSettingsInput? get smtp;

  /// Source ids to enable in the collection set
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'thresholds')
  ResourceThresholds? get thresholds;

  /// Optional retention policy to seed
  @BuiltValueField(wireName: r'retention')
  BuiltMap<String, JsonObject?>? get retention;

  SetupRequest._();

  factory SetupRequest([void updates(SetupRequestBuilder b)]) = _$SetupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetupRequest> get serializer => _$SetupRequestSerializer();
}

class _$SetupRequestSerializer implements PrimitiveSerializer<SetupRequest> {
  @override
  final Iterable<Type> types = const [SetupRequest, _$SetupRequest];

  @override
  final String wireName = r'SetupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'admin';
    yield serializers.serialize(
      object.admin,
      specifiedType: const FullType(SetupRequestAdmin),
    );
    if (object.smtp != null) {
      yield r'smtp';
      yield serializers.serialize(
        object.smtp,
        specifiedType: const FullType.nullable(SmtpSettingsInput),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType.nullable(ResourceThresholds),
      );
    }
    if (object.retention != null) {
      yield r'retention';
      yield serializers.serialize(
        object.retention,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetupRequest object, {
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
    required SetupRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SetupRequestAdmin),
                  )
                  as SetupRequestAdmin;
          result.admin.replace(valueDes);
          break;
        case r'smtp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SmtpSettingsInput),
                  )
                  as SmtpSettingsInput?;
          if (valueDes == null) continue;
          result.smtp.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'thresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceThresholds),
                  )
                  as ResourceThresholds?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'retention':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.retention.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetupRequestBuilder();
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
