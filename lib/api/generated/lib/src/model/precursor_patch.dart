//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_patch.g.dart';

/// JSON merge patch: retire with a reason, or pin as operator-validated
///
/// Properties:
/// * [status]
/// * [reason]
@BuiltValue()
abstract class PrecursorPatch
    implements Built<PrecursorPatch, PrecursorPatchBuilder> {
  @BuiltValueField(wireName: r'status')
  PrecursorPatchStatusEnum get status;
  // enum statusEnum {  retired,  validated,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  PrecursorPatch._();

  factory PrecursorPatch([void updates(PrecursorPatchBuilder b)]) =
      _$PrecursorPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorPatch> get serializer =>
      _$PrecursorPatchSerializer();
}

class _$PrecursorPatchSerializer
    implements PrimitiveSerializer<PrecursorPatch> {
  @override
  final Iterable<Type> types = const [PrecursorPatch, _$PrecursorPatch];

  @override
  final String wireName = r'PrecursorPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PrecursorPatchStatusEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorPatch object, {
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
    required PrecursorPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorPatchStatusEnum),
                  )
                  as PrecursorPatchStatusEnum;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorPatchBuilder();
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

class PrecursorPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'retired')
  static const PrecursorPatchStatusEnum retired =
      _$precursorPatchStatusEnum_retired;
  @BuiltValueEnumConst(wireName: r'validated')
  static const PrecursorPatchStatusEnum validated =
      _$precursorPatchStatusEnum_validated;

  static Serializer<PrecursorPatchStatusEnum> get serializer =>
      _$precursorPatchStatusEnumSerializer;

  const PrecursorPatchStatusEnum._(String name) : super(name);

  static BuiltSet<PrecursorPatchStatusEnum> get values =>
      _$precursorPatchStatusEnumValues;
  static PrecursorPatchStatusEnum valueOf(String name) =>
      _$precursorPatchStatusEnumValueOf(name);
}
