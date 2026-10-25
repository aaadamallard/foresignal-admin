//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_patch.g.dart';

/// JSON merge patch for a situation; every change is logged with the actor
///
/// Properties:
/// * [title]
/// * [theme]
/// * [severityOverride] - Set to override the derived severity; null clears the override
/// * [status] - `active` activates or reopens a dormant situation; `closed` closes it (final)
/// * [topicIds]
/// * [entityIds]
/// * [investigationIds]
/// * [reason] - Note stored in the situation log
/// * [version] - Expected current version; a mismatch returns 409 `SITUATION_VERSION_CONFLICT`
@BuiltValue()
abstract class SituationPatch
    implements Built<SituationPatch, SituationPatchBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme? get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  /// Set to override the derived severity; null clears the override
  @BuiltValueField(wireName: r'severityOverride')
  Severity? get severityOverride;
  // enum severityOverrideEnum {  info,  warning,  critical,  };

  /// `active` activates or reopens a dormant situation; `closed` closes it (final)
  @BuiltValueField(wireName: r'status')
  SituationPatchStatusEnum? get status;
  // enum statusEnum {  active,  closed,  };

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'entityIds')
  BuiltList<String>? get entityIds;

  @BuiltValueField(wireName: r'investigationIds')
  BuiltList<String>? get investigationIds;

  /// Note stored in the situation log
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Expected current version; a mismatch returns 409 `SITUATION_VERSION_CONFLICT`
  @BuiltValueField(wireName: r'version')
  int? get version;

  SituationPatch._();

  factory SituationPatch([void updates(SituationPatchBuilder b)]) =
      _$SituationPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationPatch> get serializer =>
      _$SituationPatchSerializer();
}

class _$SituationPatchSerializer
    implements PrimitiveSerializer<SituationPatch> {
  @override
  final Iterable<Type> types = const [SituationPatch, _$SituationPatch];

  @override
  final String wireName = r'SituationPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType(SituationTheme),
      );
    }
    if (object.severityOverride != null) {
      yield r'severityOverride';
      yield serializers.serialize(
        object.severityOverride,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SituationPatchStatusEnum),
      );
    }
    if (object.topicIds != null) {
      yield r'topicIds';
      yield serializers.serialize(
        object.topicIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.entityIds != null) {
      yield r'entityIds';
      yield serializers.serialize(
        object.entityIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.investigationIds != null) {
      yield r'investigationIds';
      yield serializers.serialize(
        object.investigationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationPatch object, {
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
    required SituationPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SituationTheme),
                  )
                  as SituationTheme?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'severityOverride':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severityOverride = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationPatchStatusEnum,
                    ),
                  )
                  as SituationPatchStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'topicIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.topicIds.replace(valueDes);
          break;
        case r'entityIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityIds.replace(valueDes);
          break;
        case r'investigationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.investigationIds.replace(valueDes);
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationPatchBuilder();
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

/// `active` activates or reopens a dormant situation; `closed` closes it (final)
class SituationPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const SituationPatchStatusEnum active =
      _$situationPatchStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'closed')
  static const SituationPatchStatusEnum closed =
      _$situationPatchStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationPatchStatusEnum unknownDefaultOpenApi =
      _$situationPatchStatusEnum_unknownDefaultOpenApi;

  static Serializer<SituationPatchStatusEnum> get serializer =>
      _$situationPatchStatusEnumSerializer;

  const SituationPatchStatusEnum._(String name) : super(name);

  static BuiltSet<SituationPatchStatusEnum> get values =>
      _$situationPatchStatusEnumValues;
  static SituationPatchStatusEnum valueOf(String name) =>
      _$situationPatchStatusEnumValueOf(name);
}
