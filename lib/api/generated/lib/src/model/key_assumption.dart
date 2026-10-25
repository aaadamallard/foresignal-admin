//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_assumption.g.dart';

/// A key assumption behind a hypothesis set
///
/// Properties:
/// * [id] - ULID identifier
/// * [setId] - ULID identifier
/// * [text]
/// * [linchpin]
/// * [rationale]
/// * [wouldBeWrongIf]
/// * [status]
/// * [indicatorIds]
/// * [reviewDue]
/// * [updatedBy]
/// * [updatedAt]
@BuiltValue()
abstract class KeyAssumption
    implements Built<KeyAssumption, KeyAssumptionBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'linchpin')
  bool get linchpin;

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  @BuiltValueField(wireName: r'wouldBeWrongIf')
  String? get wouldBeWrongIf;

  @BuiltValueField(wireName: r'status')
  KeyAssumptionStatusEnum get status;
  // enum statusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'indicatorIds')
  BuiltList<String>? get indicatorIds;

  @BuiltValueField(wireName: r'reviewDue')
  DateTime? get reviewDue;

  @BuiltValueField(wireName: r'updatedBy')
  String? get updatedBy;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  KeyAssumption._();

  factory KeyAssumption([void updates(KeyAssumptionBuilder b)]) =
      _$KeyAssumption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyAssumptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyAssumption> get serializer =>
      _$KeyAssumptionSerializer();
}

class _$KeyAssumptionSerializer implements PrimitiveSerializer<KeyAssumption> {
  @override
  final Iterable<Type> types = const [KeyAssumption, _$KeyAssumption];

  @override
  final String wireName = r'KeyAssumption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyAssumption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'linchpin';
    yield serializers.serialize(
      object.linchpin,
      specifiedType: const FullType(bool),
    );
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(KeyAssumptionStatusEnum),
    );
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
    if (object.updatedBy != null) {
      yield r'updatedBy';
      yield serializers.serialize(
        object.updatedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumption object, {
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
    required KeyAssumptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
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
                    specifiedType: const FullType(bool),
                  )
                  as bool;
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
                    specifiedType: const FullType(KeyAssumptionStatusEnum),
                  )
                  as KeyAssumptionStatusEnum;
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
        case r'updatedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.updatedBy = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyAssumption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyAssumptionBuilder();
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

class KeyAssumptionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const KeyAssumptionStatusEnum solid = _$keyAssumptionStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const KeyAssumptionStatusEnum caveated =
      _$keyAssumptionStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const KeyAssumptionStatusEnum unsupported =
      _$keyAssumptionStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const KeyAssumptionStatusEnum broken =
      _$keyAssumptionStatusEnum_broken;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const KeyAssumptionStatusEnum unknownDefaultOpenApi =
      _$keyAssumptionStatusEnum_unknownDefaultOpenApi;

  static Serializer<KeyAssumptionStatusEnum> get serializer =>
      _$keyAssumptionStatusEnumSerializer;

  const KeyAssumptionStatusEnum._(String name) : super(name);

  static BuiltSet<KeyAssumptionStatusEnum> get values =>
      _$keyAssumptionStatusEnumValues;
  static KeyAssumptionStatusEnum valueOf(String name) =>
      _$keyAssumptionStatusEnumValueOf(name);
}
