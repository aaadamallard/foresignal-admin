//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evidence_item_input.g.dart';

/// Create an evidence item
///
/// Properties:
/// * [title]
/// * [description]
/// * [attachmentIds]
/// * [url]
/// * [sourceDescription]
/// * [sourceReliability] - Admiralty source reliability (A completely reliable … F cannot be judged)
/// * [informationCredibility] - Admiralty information credibility (1 confirmed … 6 cannot be judged)
/// * [citedSourceId]
/// * [citedRefs]
/// * [geometry]
/// * [eventTime]
/// * [tagIds] - Tags to assign on creation
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
@BuiltValue()
abstract class EvidenceItemInput
    implements Built<EvidenceItemInput, EvidenceItemInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'attachmentIds')
  BuiltList<String>? get attachmentIds;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'sourceDescription')
  String? get sourceDescription;

  /// Admiralty source reliability (A completely reliable … F cannot be judged)
  @BuiltValueField(wireName: r'sourceReliability')
  EvidenceItemInputSourceReliabilityEnum? get sourceReliability;
  // enum sourceReliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// Admiralty information credibility (1 confirmed … 6 cannot be judged)
  @BuiltValueField(wireName: r'informationCredibility')
  int? get informationCredibility;

  @BuiltValueField(wireName: r'citedSourceId')
  String? get citedSourceId;

  @BuiltValueField(wireName: r'citedRefs')
  BuiltList<String>? get citedRefs;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  /// Tags to assign on creation
  @BuiltValueField(wireName: r'tagIds')
  BuiltList<String>? get tagIds;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  EvidenceItemInput._();

  factory EvidenceItemInput([void updates(EvidenceItemInputBuilder b)]) =
      _$EvidenceItemInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvidenceItemInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvidenceItemInput> get serializer =>
      _$EvidenceItemInputSerializer();
}

class _$EvidenceItemInputSerializer
    implements PrimitiveSerializer<EvidenceItemInput> {
  @override
  final Iterable<Type> types = const [EvidenceItemInput, _$EvidenceItemInput];

  @override
  final String wireName = r'EvidenceItemInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvidenceItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attachmentIds != null) {
      yield r'attachmentIds';
      yield serializers.serialize(
        object.attachmentIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceDescription != null) {
      yield r'sourceDescription';
      yield serializers.serialize(
        object.sourceDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceReliability != null) {
      yield r'sourceReliability';
      yield serializers.serialize(
        object.sourceReliability,
        specifiedType: const FullType(EvidenceItemInputSourceReliabilityEnum),
      );
    }
    if (object.informationCredibility != null) {
      yield r'informationCredibility';
      yield serializers.serialize(
        object.informationCredibility,
        specifiedType: const FullType(int),
      );
    }
    if (object.citedSourceId != null) {
      yield r'citedSourceId';
      yield serializers.serialize(
        object.citedSourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.citedRefs != null) {
      yield r'citedRefs';
      yield serializers.serialize(
        object.citedRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tagIds != null) {
      yield r'tagIds';
      yield serializers.serialize(
        object.tagIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EvidenceItemInput object, {
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
    required EvidenceItemInputBuilder result,
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
        case r'attachmentIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attachmentIds.replace(valueDes);
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'sourceDescription':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceDescription = valueDes;
          break;
        case r'sourceReliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EvidenceItemInputSourceReliabilityEnum,
                    ),
                  )
                  as EvidenceItemInputSourceReliabilityEnum?;
          if (valueDes == null) continue;
          result.sourceReliability = valueDes;
          break;
        case r'informationCredibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.informationCredibility = valueDes;
          break;
        case r'citedSourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.citedSourceId = valueDes;
          break;
        case r'citedRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citedRefs.replace(valueDes);
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'tagIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tagIds.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EvidenceItemInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvidenceItemInputBuilder();
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

/// Admiralty source reliability (A completely reliable … F cannot be judged)
class EvidenceItemInputSourceReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const EvidenceItemInputSourceReliabilityEnum A =
      _$evidenceItemInputSourceReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const EvidenceItemInputSourceReliabilityEnum B =
      _$evidenceItemInputSourceReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const EvidenceItemInputSourceReliabilityEnum C =
      _$evidenceItemInputSourceReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const EvidenceItemInputSourceReliabilityEnum D =
      _$evidenceItemInputSourceReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const EvidenceItemInputSourceReliabilityEnum E =
      _$evidenceItemInputSourceReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const EvidenceItemInputSourceReliabilityEnum F =
      _$evidenceItemInputSourceReliabilityEnum_F;

  static Serializer<EvidenceItemInputSourceReliabilityEnum> get serializer =>
      _$evidenceItemInputSourceReliabilityEnumSerializer;

  const EvidenceItemInputSourceReliabilityEnum._(String name) : super(name);

  static BuiltSet<EvidenceItemInputSourceReliabilityEnum> get values =>
      _$evidenceItemInputSourceReliabilityEnumValues;
  static EvidenceItemInputSourceReliabilityEnum valueOf(String name) =>
      _$evidenceItemInputSourceReliabilityEnumValueOf(name);
}
