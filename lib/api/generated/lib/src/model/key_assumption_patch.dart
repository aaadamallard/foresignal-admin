//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_assumption_patch.g.dart';

/// JSON merge patch for a key assumption; `broken` emits `assumption.broken`
///
/// Properties:
/// * [text]
/// * [linchpin]
/// * [rationale]
/// * [wouldBeWrongIf]
/// * [status]
/// * [indicatorIds]
/// * [reviewDue]
@BuiltValue()
abstract class KeyAssumptionPatch
    implements Built<KeyAssumptionPatch, KeyAssumptionPatchBuilder> {
  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'linchpin')
  bool? get linchpin;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  @BuiltValueField(wireName: r'wouldBeWrongIf')
  String? get wouldBeWrongIf;

  @BuiltValueField(wireName: r'status')
  KeyAssumptionPatchStatusEnum? get status;
  // enum statusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'indicatorIds')
  BuiltList<String>? get indicatorIds;

  @BuiltValueField(wireName: r'reviewDue')
  DateTime? get reviewDue;

  KeyAssumptionPatch._();

  factory KeyAssumptionPatch([void updates(KeyAssumptionPatchBuilder b)]) =
      _$KeyAssumptionPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyAssumptionPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyAssumptionPatch> get serializer =>
      _$KeyAssumptionPatchSerializer();
}

class _$KeyAssumptionPatchSerializer
    implements PrimitiveSerializer<KeyAssumptionPatch> {
  @override
  final Iterable<Type> types = const [KeyAssumptionPatch, _$KeyAssumptionPatch];

  @override
  final String wireName = r'KeyAssumptionPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyAssumptionPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.linchpin != null) {
      yield r'linchpin';
      yield serializers.serialize(
        object.linchpin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wouldBeWrongIf != null) {
      yield r'wouldBeWrongIf';
      yield serializers.serialize(
        object.wouldBeWrongIf,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(KeyAssumptionPatchStatusEnum),
      );
    }
    if (object.indicatorIds != null) {
      yield r'indicatorIds';
      yield serializers.serialize(
        object.indicatorIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reviewDue != null) {
      yield r'reviewDue';
      yield serializers.serialize(
        object.reviewDue,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumptionPatch object, {
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
    required KeyAssumptionPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'linchpin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.linchpin = valueDes;
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        case r'wouldBeWrongIf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.wouldBeWrongIf = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      KeyAssumptionPatchStatusEnum,
                    ),
                  )
                  as KeyAssumptionPatchStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'indicatorIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.indicatorIds.replace(valueDes);
          break;
        case r'reviewDue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.reviewDue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyAssumptionPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyAssumptionPatchBuilder();
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

class KeyAssumptionPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const KeyAssumptionPatchStatusEnum solid =
      _$keyAssumptionPatchStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const KeyAssumptionPatchStatusEnum caveated =
      _$keyAssumptionPatchStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const KeyAssumptionPatchStatusEnum unsupported =
      _$keyAssumptionPatchStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const KeyAssumptionPatchStatusEnum broken =
      _$keyAssumptionPatchStatusEnum_broken;

  static Serializer<KeyAssumptionPatchStatusEnum> get serializer =>
      _$keyAssumptionPatchStatusEnumSerializer;

  const KeyAssumptionPatchStatusEnum._(String name) : super(name);

  static BuiltSet<KeyAssumptionPatchStatusEnum> get values =>
      _$keyAssumptionPatchStatusEnumValues;
  static KeyAssumptionPatchStatusEnum valueOf(String name) =>
      _$keyAssumptionPatchStatusEnumValueOf(name);
}
