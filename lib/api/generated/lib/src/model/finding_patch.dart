//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finding_patch.g.dart';

/// JSON merge patch for a finding: dismiss with a reason
///
/// Properties:
/// * [status]
/// * [reason]
@BuiltValue()
abstract class FindingPatch
    implements Built<FindingPatch, FindingPatchBuilder> {
  @BuiltValueField(wireName: r'status')
  FindingPatchStatusEnum get status;
  // enum statusEnum {  dismissed,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  FindingPatch._();

  factory FindingPatch([void updates(FindingPatchBuilder b)]) = _$FindingPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindingPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindingPatch> get serializer => _$FindingPatchSerializer();
}

class _$FindingPatchSerializer implements PrimitiveSerializer<FindingPatch> {
  @override
  final Iterable<Type> types = const [FindingPatch, _$FindingPatch];

  @override
  final String wireName = r'FindingPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindingPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FindingPatchStatusEnum),
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
    FindingPatch object, {
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
    required FindingPatchBuilder result,
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
                    specifiedType: const FullType(FindingPatchStatusEnum),
                  )
                  as FindingPatchStatusEnum;
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
  FindingPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindingPatchBuilder();
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

class FindingPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const FindingPatchStatusEnum dismissed =
      _$findingPatchStatusEnum_dismissed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FindingPatchStatusEnum unknownDefaultOpenApi =
      _$findingPatchStatusEnum_unknownDefaultOpenApi;

  static Serializer<FindingPatchStatusEnum> get serializer =>
      _$findingPatchStatusEnumSerializer;

  const FindingPatchStatusEnum._(String name) : super(name);

  static BuiltSet<FindingPatchStatusEnum> get values =>
      _$findingPatchStatusEnumValues;
  static FindingPatchStatusEnum valueOf(String name) =>
      _$findingPatchStatusEnumValueOf(name);
}
