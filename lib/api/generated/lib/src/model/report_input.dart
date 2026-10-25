//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:foresignal_api/src/model/report_source.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_input.g.dart';

/// Create a report directly (blank or with blocks)
///
/// Properties:
/// * [title]
/// * [subtitle]
/// * [authors] - Principal ids or handles; the caller is always an author
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [visibility]
/// * [source_]
/// * [template]
/// * [timeWindow]
/// * [area]
/// * [blocks]
@BuiltValue()
abstract class ReportInput implements Built<ReportInput, ReportInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  /// Principal ids or handles; the caller is always an author
  @BuiltValueField(wireName: r'authors')
  BuiltList<String>? get authors;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  @BuiltValueField(wireName: r'source')
  ReportSource? get source_;

  @BuiltValueField(wireName: r'template')
  ReportInputTemplateEnum? get template;
  // enum templateEnum {  situation-brief,  investigation-summary,  chronicle-recap,  weekly-assessment,  custom,  };

  @BuiltValueField(wireName: r'timeWindow')
  TimeRange? get timeWindow;

  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  @BuiltValueField(wireName: r'blocks')
  BuiltList<JsonObject?>? get blocks;

  ReportInput._();

  factory ReportInput([void updates(ReportInputBuilder b)]) = _$ReportInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportInput> get serializer => _$ReportInputSerializer();
}

class _$ReportInputSerializer implements PrimitiveSerializer<ReportInput> {
  @override
  final Iterable<Type> types = const [ReportInput, _$ReportInput];

  @override
  final String wireName = r'ReportInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(ReportSource),
      );
    }
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(ReportInputTemplateEnum),
      );
    }
    if (object.timeWindow != null) {
      yield r'timeWindow';
      yield serializers.serialize(
        object.timeWindow,
        specifiedType: const FullType.nullable(TimeRange),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.blocks != null) {
      yield r'blocks';
      yield serializers.serialize(
        object.blocks,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportInput object, {
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
    required ReportInputBuilder result,
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
        case r'subtitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'authors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.authors.replace(valueDes);
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
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportSource),
                  )
                  as ReportSource?;
          if (valueDes == null) continue;
          result.source_.replace(valueDes);
          break;
        case r'template':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReportInputTemplateEnum,
                    ),
                  )
                  as ReportInputTemplateEnum?;
          if (valueDes == null) continue;
          result.template = valueDes;
          break;
        case r'timeWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TimeRange),
                  )
                  as TimeRange?;
          if (valueDes == null) continue;
          result.timeWindow.replace(valueDes);
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'blocks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.blocks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportInputBuilder();
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

class ReportInputTemplateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'situation-brief')
  static const ReportInputTemplateEnum situationBrief =
      _$reportInputTemplateEnum_situationBrief;
  @BuiltValueEnumConst(wireName: r'investigation-summary')
  static const ReportInputTemplateEnum investigationSummary =
      _$reportInputTemplateEnum_investigationSummary;
  @BuiltValueEnumConst(wireName: r'chronicle-recap')
  static const ReportInputTemplateEnum chronicleRecap =
      _$reportInputTemplateEnum_chronicleRecap;
  @BuiltValueEnumConst(wireName: r'weekly-assessment')
  static const ReportInputTemplateEnum weeklyAssessment =
      _$reportInputTemplateEnum_weeklyAssessment;
  @BuiltValueEnumConst(wireName: r'custom')
  static const ReportInputTemplateEnum custom =
      _$reportInputTemplateEnum_custom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReportInputTemplateEnum unknownDefaultOpenApi =
      _$reportInputTemplateEnum_unknownDefaultOpenApi;

  static Serializer<ReportInputTemplateEnum> get serializer =>
      _$reportInputTemplateEnumSerializer;

  const ReportInputTemplateEnum._(String name) : super(name);

  static BuiltSet<ReportInputTemplateEnum> get values =>
      _$reportInputTemplateEnumValues;
  static ReportInputTemplateEnum valueOf(String name) =>
      _$reportInputTemplateEnumValueOf(name);
}
