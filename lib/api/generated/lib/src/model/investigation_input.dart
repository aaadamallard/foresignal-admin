//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_input.g.dart';

/// New investigation, owned by the calling principal (130 adds visibility, TLP and links)
///
/// Properties:
/// * [title]
/// * [summary]
/// * [tags]
/// * [status]
/// * [visibility] - Default instance (investigations were instance-wide before 130)
/// * [tlp] - Default collab.defaultTlp (AMBER)
/// * [workspaceId] - Linked 129 workspace (130)
/// * [hypothesisSetIds] - Linked 125 hypothesis sets (130)
/// * [questionIds] - Linked 122 forecast questions (130)
/// * [chronicleIds] - Linked chronicles (131)
/// * [reportIds] - Linked reports (132)
@BuiltValue()
abstract class InvestigationInput
    implements Built<InvestigationInput, InvestigationInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'status')
  InvestigationInputStatusEnum? get status;
  // enum statusEnum {  open,  active,  closed,  archived,  };

  /// Default instance (investigations were instance-wide before 130)
  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Default collab.defaultTlp (AMBER)
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  /// Linked 129 workspace (130)
  @BuiltValueField(wireName: r'workspaceId')
  String? get workspaceId;

  /// Linked 125 hypothesis sets (130)
  @BuiltValueField(wireName: r'hypothesisSetIds')
  BuiltList<String>? get hypothesisSetIds;

  /// Linked 122 forecast questions (130)
  @BuiltValueField(wireName: r'questionIds')
  BuiltList<String>? get questionIds;

  /// Linked chronicles (131)
  @BuiltValueField(wireName: r'chronicleIds')
  BuiltList<String>? get chronicleIds;

  /// Linked reports (132)
  @BuiltValueField(wireName: r'reportIds')
  BuiltList<String>? get reportIds;

  InvestigationInput._();

  factory InvestigationInput([void updates(InvestigationInputBuilder b)]) =
      _$InvestigationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationInput> get serializer =>
      _$InvestigationInputSerializer();
}

class _$InvestigationInputSerializer
    implements PrimitiveSerializer<InvestigationInput> {
  @override
  final Iterable<Type> types = const [InvestigationInput, _$InvestigationInput];

  @override
  final String wireName = r'InvestigationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(InvestigationInputStatusEnum),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.workspaceId != null) {
      yield r'workspaceId';
      yield serializers.serialize(
        object.workspaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hypothesisSetIds != null) {
      yield r'hypothesisSetIds';
      yield serializers.serialize(
        object.hypothesisSetIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.questionIds != null) {
      yield r'questionIds';
      yield serializers.serialize(
        object.questionIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.chronicleIds != null) {
      yield r'chronicleIds';
      yield serializers.serialize(
        object.chronicleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reportIds != null) {
      yield r'reportIds';
      yield serializers.serialize(
        object.reportIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvestigationInput object, {
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
    required InvestigationInputBuilder result,
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
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      InvestigationInputStatusEnum,
                    ),
                  )
                  as InvestigationInputStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'workspaceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.workspaceId = valueDes;
          break;
        case r'hypothesisSetIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hypothesisSetIds.replace(valueDes);
          break;
        case r'questionIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.questionIds.replace(valueDes);
          break;
        case r'chronicleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.chronicleIds.replace(valueDes);
          break;
        case r'reportIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.reportIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvestigationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationInputBuilder();
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

class InvestigationInputStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const InvestigationInputStatusEnum open =
      _$investigationInputStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'active')
  static const InvestigationInputStatusEnum active =
      _$investigationInputStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'closed')
  static const InvestigationInputStatusEnum closed =
      _$investigationInputStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'archived')
  static const InvestigationInputStatusEnum archived =
      _$investigationInputStatusEnum_archived;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InvestigationInputStatusEnum unknownDefaultOpenApi =
      _$investigationInputStatusEnum_unknownDefaultOpenApi;

  static Serializer<InvestigationInputStatusEnum> get serializer =>
      _$investigationInputStatusEnumSerializer;

  const InvestigationInputStatusEnum._(String name) : super(name);

  static BuiltSet<InvestigationInputStatusEnum> get values =>
      _$investigationInputStatusEnumValues;
  static InvestigationInputStatusEnum valueOf(String name) =>
      _$investigationInputStatusEnumValueOf(name);
}
