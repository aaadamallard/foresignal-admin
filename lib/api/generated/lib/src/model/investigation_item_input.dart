//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_item_input.g.dart';

/// Item to add; adding an alert sets its 017 state to `investigating` when that state exists; 130: evidence items, attachments and any object reference, snapshotted from the envelope, raising the investigation TLP to the strictest item label
///
/// Properties:
/// * [itemType]
/// * [ref] - Item reference; for evidence-item, attachment and object an object reference (or the bare id of an evidence item or attachment), which the caller must be able to see
/// * [seq] - Pin a record version; default the current version
/// * [note]
@BuiltValue()
abstract class InvestigationItemInput
    implements Built<InvestigationItemInput, InvestigationItemInputBuilder> {
  @BuiltValueField(wireName: r'itemType')
  InvestigationItemInputItemTypeEnum get itemType;
  // enum itemTypeEnum {  event,  alert,  record,  anomaly,  place,  briefing_run,  note,  evidence-item,  attachment,  object,  };

  /// Item reference; for evidence-item, attachment and object an object reference (or the bare id of an evidence item or attachment), which the caller must be able to see
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Pin a record version; default the current version
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'note')
  String? get note;

  InvestigationItemInput._();

  factory InvestigationItemInput([
    void updates(InvestigationItemInputBuilder b),
  ]) = _$InvestigationItemInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationItemInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationItemInput> get serializer =>
      _$InvestigationItemInputSerializer();
}

class _$InvestigationItemInputSerializer
    implements PrimitiveSerializer<InvestigationItemInput> {
  @override
  final Iterable<Type> types = const [
    InvestigationItemInput,
    _$InvestigationItemInput,
  ];

  @override
  final String wireName = r'InvestigationItemInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(InvestigationItemInputItemTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvestigationItemInput object, {
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
    required InvestigationItemInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'itemType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      InvestigationItemInputItemTypeEnum,
                    ),
                  )
                  as InvestigationItemInputItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvestigationItemInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationItemInputBuilder();
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

class InvestigationItemInputItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const InvestigationItemInputItemTypeEnum event =
      _$investigationItemInputItemTypeEnum_event;
  @BuiltValueEnumConst(wireName: r'alert')
  static const InvestigationItemInputItemTypeEnum alert =
      _$investigationItemInputItemTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'record')
  static const InvestigationItemInputItemTypeEnum record =
      _$investigationItemInputItemTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const InvestigationItemInputItemTypeEnum anomaly =
      _$investigationItemInputItemTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'place')
  static const InvestigationItemInputItemTypeEnum place =
      _$investigationItemInputItemTypeEnum_place;
  @BuiltValueEnumConst(wireName: r'briefing_run')
  static const InvestigationItemInputItemTypeEnum briefingRun =
      _$investigationItemInputItemTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'note')
  static const InvestigationItemInputItemTypeEnum note =
      _$investigationItemInputItemTypeEnum_note;
  @BuiltValueEnumConst(wireName: r'evidence-item')
  static const InvestigationItemInputItemTypeEnum evidenceItem =
      _$investigationItemInputItemTypeEnum_evidenceItem;
  @BuiltValueEnumConst(wireName: r'attachment')
  static const InvestigationItemInputItemTypeEnum attachment =
      _$investigationItemInputItemTypeEnum_attachment;
  @BuiltValueEnumConst(wireName: r'object')
  static const InvestigationItemInputItemTypeEnum object =
      _$investigationItemInputItemTypeEnum_object;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InvestigationItemInputItemTypeEnum unknownDefaultOpenApi =
      _$investigationItemInputItemTypeEnum_unknownDefaultOpenApi;

  static Serializer<InvestigationItemInputItemTypeEnum> get serializer =>
      _$investigationItemInputItemTypeEnumSerializer;

  const InvestigationItemInputItemTypeEnum._(String name) : super(name);

  static BuiltSet<InvestigationItemInputItemTypeEnum> get values =>
      _$investigationItemInputItemTypeEnumValues;
  static InvestigationItemInputItemTypeEnum valueOf(String name) =>
      _$investigationItemInputItemTypeEnumValueOf(name);
}
