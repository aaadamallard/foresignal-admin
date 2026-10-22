//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_member_input.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_input.g.dart';

/// Create a situation by hand
///
/// Properties:
/// * [title]
/// * [theme]
/// * [status] - Initial status (operators may set `active` directly)
/// * [severityOverride]
/// * [regionCodes]
/// * [topicIds]
/// * [entityIds]
/// * [investigationIds]
/// * [members]
@BuiltValue()
abstract class SituationInput
    implements Built<SituationInput, SituationInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  /// Initial status (operators may set `active` directly)
  @BuiltValueField(wireName: r'status')
  SituationInputStatusEnum? get status;
  // enum statusEnum {  emerging,  active,  };

  @BuiltValueField(wireName: r'severityOverride')
  Severity? get severityOverride;
  // enum severityOverrideEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'topicIds')
  BuiltList<String>? get topicIds;

  @BuiltValueField(wireName: r'entityIds')
  BuiltList<String>? get entityIds;

  @BuiltValueField(wireName: r'investigationIds')
  BuiltList<String>? get investigationIds;

  @BuiltValueField(wireName: r'members')
  BuiltList<SituationMemberInput>? get members;

  SituationInput._();

  factory SituationInput([void updates(SituationInputBuilder b)]) =
      _$SituationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationInput> get serializer =>
      _$SituationInputSerializer();
}

class _$SituationInputSerializer
    implements PrimitiveSerializer<SituationInput> {
  @override
  final Iterable<Type> types = const [SituationInput, _$SituationInput];

  @override
  final String wireName = r'SituationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'theme';
    yield serializers.serialize(
      object.theme,
      specifiedType: const FullType(SituationTheme),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SituationInputStatusEnum),
      );
    }
    if (object.severityOverride != null) {
      yield r'severityOverride';
      yield serializers.serialize(
        object.severityOverride,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltList, [
          FullType(SituationMemberInput),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationInput object, {
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
    required SituationInputBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationTheme),
                  )
                  as SituationTheme;
          result.theme = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationInputStatusEnum,
                    ),
                  )
                  as SituationInputStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
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
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
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
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SituationMemberInput),
                    ]),
                  )
                  as BuiltList<SituationMemberInput>?;
          if (valueDes == null) continue;
          result.members.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationInputBuilder();
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

/// Initial status (operators may set `active` directly)
class SituationInputStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const SituationInputStatusEnum emerging =
      _$situationInputStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const SituationInputStatusEnum active =
      _$situationInputStatusEnum_active;

  static Serializer<SituationInputStatusEnum> get serializer =>
      _$situationInputStatusEnumSerializer;

  const SituationInputStatusEnum._(String name) : super(name);

  static BuiltSet<SituationInputStatusEnum> get values =>
      _$situationInputStatusEnumValues;
  static SituationInputStatusEnum valueOf(String name) =>
      _$situationInputStatusEnumValueOf(name);
}
