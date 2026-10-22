//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_assumption_input.g.dart';

/// A new key assumption
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
abstract class KeyAssumptionInput
    implements Built<KeyAssumptionInput, KeyAssumptionInputBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'linchpin')
  bool? get linchpin;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  @BuiltValueField(wireName: r'wouldBeWrongIf')
  String? get wouldBeWrongIf;

  @BuiltValueField(wireName: r'status')
  KeyAssumptionInputStatusEnum? get status;
  // enum statusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'indicatorIds')
  BuiltList<String>? get indicatorIds;

  @BuiltValueField(wireName: r'reviewDue')
  DateTime? get reviewDue;

  KeyAssumptionInput._();

  factory KeyAssumptionInput([void updates(KeyAssumptionInputBuilder b)]) =
      _$KeyAssumptionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyAssumptionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyAssumptionInput> get serializer =>
      _$KeyAssumptionInputSerializer();
}

class _$KeyAssumptionInputSerializer
    implements PrimitiveSerializer<KeyAssumptionInput> {
  @override
  final Iterable<Type> types = const [KeyAssumptionInput, _$KeyAssumptionInput];

  @override
  final String wireName = r'KeyAssumptionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyAssumptionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(KeyAssumptionInputStatusEnum),
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
    KeyAssumptionInput object, {
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
    required KeyAssumptionInputBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
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
                      KeyAssumptionInputStatusEnum,
                    ),
                  )
                  as KeyAssumptionInputStatusEnum?;
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
  KeyAssumptionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyAssumptionInputBuilder();
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

class KeyAssumptionInputStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const KeyAssumptionInputStatusEnum solid =
      _$keyAssumptionInputStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const KeyAssumptionInputStatusEnum caveated =
      _$keyAssumptionInputStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const KeyAssumptionInputStatusEnum unsupported =
      _$keyAssumptionInputStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const KeyAssumptionInputStatusEnum broken =
      _$keyAssumptionInputStatusEnum_broken;

  static Serializer<KeyAssumptionInputStatusEnum> get serializer =>
      _$keyAssumptionInputStatusEnumSerializer;

  const KeyAssumptionInputStatusEnum._(String name) : super(name);

  static BuiltSet<KeyAssumptionInputStatusEnum> get values =>
      _$keyAssumptionInputStatusEnumValues;
  static KeyAssumptionInputStatusEnum valueOf(String name) =>
      _$keyAssumptionInputStatusEnumValueOf(name);
}
