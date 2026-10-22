//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_block_base.g.dart';

/// Fields common to every report block
///
/// Properties:
/// * [id] - Server-assigned; comment on a block with `report:{id}#{blockId}`
/// * [type]
/// * [title]
/// * [textOrigin] - `llm` blocks are labelled narrative from the optional 028 tool loop
/// * [updatedAt]
/// * [updatedBy]
@BuiltValue()
abstract class ReportBlockBase
    implements Built<ReportBlockBase, ReportBlockBaseBuilder> {
  /// Server-assigned; comment on a block with `report:{id}#{blockId}`
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  ReportBlockBaseTypeEnum get type;
  // enum typeEnum {  markdown,  bluf,  objects,  map,  timeline,  hypotheses,  forecasts,  evidence,  coverage,  attachments,  sources,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  /// `llm` blocks are labelled narrative from the optional 028 tool loop
  @BuiltValueField(wireName: r'textOrigin')
  ReportBlockBaseTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  author,  deterministic,  llm,  };

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'updatedBy')
  PrincipalSummary? get updatedBy;

  ReportBlockBase._();

  factory ReportBlockBase([void updates(ReportBlockBaseBuilder b)]) =
      _$ReportBlockBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBlockBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportBlockBase> get serializer =>
      _$ReportBlockBaseSerializer();
}

class _$ReportBlockBaseSerializer
    implements PrimitiveSerializer<ReportBlockBase> {
  @override
  final Iterable<Type> types = const [ReportBlockBase, _$ReportBlockBase];

  @override
  final String wireName = r'ReportBlockBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportBlockBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReportBlockBaseTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType: const FullType(ReportBlockBaseTextOriginEnum),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedBy != null) {
      yield r'updatedBy';
      yield serializers.serialize(
        object.updatedBy,
        specifiedType: const FullType.nullable(PrincipalSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportBlockBase object, {
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
    required ReportBlockBaseBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportBlockBaseTypeEnum),
          ) as ReportBlockBaseTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'textOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ReportBlockBaseTextOriginEnum),
          ) as ReportBlockBaseTextOriginEnum?;
          if (valueDes == null) continue;
          result.textOrigin = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'updatedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrincipalSummary),
          ) as PrincipalSummary?;
          if (valueDes == null) continue;
          result.updatedBy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportBlockBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBlockBaseBuilder();
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

class ReportBlockBaseTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'markdown')
  static const ReportBlockBaseTypeEnum markdown =
      _$reportBlockBaseTypeEnum_markdown;
  @BuiltValueEnumConst(wireName: r'bluf')
  static const ReportBlockBaseTypeEnum bluf = _$reportBlockBaseTypeEnum_bluf;
  @BuiltValueEnumConst(wireName: r'objects')
  static const ReportBlockBaseTypeEnum objects =
      _$reportBlockBaseTypeEnum_objects;
  @BuiltValueEnumConst(wireName: r'map')
  static const ReportBlockBaseTypeEnum map = _$reportBlockBaseTypeEnum_map;
  @BuiltValueEnumConst(wireName: r'timeline')
  static const ReportBlockBaseTypeEnum timeline =
      _$reportBlockBaseTypeEnum_timeline;
  @BuiltValueEnumConst(wireName: r'hypotheses')
  static const ReportBlockBaseTypeEnum hypotheses =
      _$reportBlockBaseTypeEnum_hypotheses;
  @BuiltValueEnumConst(wireName: r'forecasts')
  static const ReportBlockBaseTypeEnum forecasts =
      _$reportBlockBaseTypeEnum_forecasts;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ReportBlockBaseTypeEnum evidence =
      _$reportBlockBaseTypeEnum_evidence;
  @BuiltValueEnumConst(wireName: r'coverage')
  static const ReportBlockBaseTypeEnum coverage =
      _$reportBlockBaseTypeEnum_coverage;
  @BuiltValueEnumConst(wireName: r'attachments')
  static const ReportBlockBaseTypeEnum attachments =
      _$reportBlockBaseTypeEnum_attachments;
  @BuiltValueEnumConst(wireName: r'sources')
  static const ReportBlockBaseTypeEnum sources =
      _$reportBlockBaseTypeEnum_sources;

  static Serializer<ReportBlockBaseTypeEnum> get serializer =>
      _$reportBlockBaseTypeEnumSerializer;

  const ReportBlockBaseTypeEnum._(String name) : super(name);

  static BuiltSet<ReportBlockBaseTypeEnum> get values =>
      _$reportBlockBaseTypeEnumValues;
  static ReportBlockBaseTypeEnum valueOf(String name) =>
      _$reportBlockBaseTypeEnumValueOf(name);
}

/// `llm` blocks are labelled narrative from the optional 028 tool loop
class ReportBlockBaseTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'author')
  static const ReportBlockBaseTextOriginEnum author =
      _$reportBlockBaseTextOriginEnum_author;
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const ReportBlockBaseTextOriginEnum deterministic =
      _$reportBlockBaseTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ReportBlockBaseTextOriginEnum llm =
      _$reportBlockBaseTextOriginEnum_llm;

  static Serializer<ReportBlockBaseTextOriginEnum> get serializer =>
      _$reportBlockBaseTextOriginEnumSerializer;

  const ReportBlockBaseTextOriginEnum._(String name) : super(name);

  static BuiltSet<ReportBlockBaseTextOriginEnum> get values =>
      _$reportBlockBaseTextOriginEnumValues;
  static ReportBlockBaseTextOriginEnum valueOf(String name) =>
      _$reportBlockBaseTextOriginEnumValueOf(name);
}
