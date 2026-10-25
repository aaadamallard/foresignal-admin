//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_patch.g.dart';

/// JSON merge patch for a report draft (editors); `version` is the optimistic lock
///
/// Properties:
/// * [title]
/// * [subtitle]
/// * [status]
/// * [authors]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [visibility]
/// * [timeWindow]
/// * [area]
/// * [blockOrder] - Reorder blocks by id
/// * [version]
@BuiltValue()
abstract class ReportPatch implements Built<ReportPatch, ReportPatchBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'status')
  ReportPatchStatusEnum? get status;
  // enum statusEnum {  draft,  review,  };

  @BuiltValueField(wireName: r'authors')
  BuiltList<String>? get authors;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  @BuiltValueField(wireName: r'timeWindow')
  TimeRange? get timeWindow;

  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Reorder blocks by id
  @BuiltValueField(wireName: r'blockOrder')
  BuiltList<String>? get blockOrder;

  @BuiltValueField(wireName: r'version')
  int? get version;

  ReportPatch._();

  factory ReportPatch([void updates(ReportPatchBuilder b)]) = _$ReportPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportPatch> get serializer => _$ReportPatchSerializer();
}

class _$ReportPatchSerializer implements PrimitiveSerializer<ReportPatch> {
  @override
  final Iterable<Type> types = const [ReportPatch, _$ReportPatch];

  @override
  final String wireName = r'ReportPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ReportPatchStatusEnum),
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
    if (object.blockOrder != null) {
      yield r'blockOrder';
      yield serializers.serialize(
        object.blockOrder,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    ReportPatch object, {
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
    required ReportPatchBuilder result,
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReportPatchStatusEnum,
                    ),
                  )
                  as ReportPatchStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
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
        case r'blockOrder':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.blockOrder.replace(valueDes);
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
  ReportPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportPatchBuilder();
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

class ReportPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'draft')
  static const ReportPatchStatusEnum draft = _$reportPatchStatusEnum_draft;
  @BuiltValueEnumConst(wireName: r'review')
  static const ReportPatchStatusEnum review = _$reportPatchStatusEnum_review;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReportPatchStatusEnum unknownDefaultOpenApi =
      _$reportPatchStatusEnum_unknownDefaultOpenApi;

  static Serializer<ReportPatchStatusEnum> get serializer =>
      _$reportPatchStatusEnumSerializer;

  const ReportPatchStatusEnum._(String name) : super(name);

  static BuiltSet<ReportPatchStatusEnum> get values =>
      _$reportPatchStatusEnumValues;
  static ReportPatchStatusEnum valueOf(String name) =>
      _$reportPatchStatusEnumValueOf(name);
}
