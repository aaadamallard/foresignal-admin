//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal_summary.g.dart';

/// Public view of a principal: handle, display name, kind and avatar only
///
/// Properties:
/// * [id] - ULID identifier
/// * [handle]
/// * [displayName]
/// * [kind]
/// * [avatarMediaId] - 043 media id of the avatar image
@BuiltValue()
abstract class PrincipalSummary
    implements Built<PrincipalSummary, PrincipalSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'handle')
  String get handle;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'kind')
  PrincipalSummaryKindEnum get kind;
  // enum kindEnum {  person,  agent,  service,  };

  /// 043 media id of the avatar image
  @BuiltValueField(wireName: r'avatarMediaId')
  String? get avatarMediaId;

  PrincipalSummary._();

  factory PrincipalSummary([void updates(PrincipalSummaryBuilder b)]) =
      _$PrincipalSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrincipalSummary> get serializer =>
      _$PrincipalSummarySerializer();
}

class _$PrincipalSummarySerializer
    implements PrimitiveSerializer<PrincipalSummary> {
  @override
  final Iterable<Type> types = const [PrincipalSummary, _$PrincipalSummary];

  @override
  final String wireName = r'PrincipalSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrincipalSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PrincipalSummaryKindEnum),
    );
    if (object.avatarMediaId != null) {
      yield r'avatarMediaId';
      yield serializers.serialize(
        object.avatarMediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrincipalSummary object, {
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
    required PrincipalSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.handle = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrincipalSummaryKindEnum),
          ) as PrincipalSummaryKindEnum;
          result.kind = valueDes;
          break;
        case r'avatarMediaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.avatarMediaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrincipalSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalSummaryBuilder();
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

class PrincipalSummaryKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'person')
  static const PrincipalSummaryKindEnum person =
      _$principalSummaryKindEnum_person;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PrincipalSummaryKindEnum agent =
      _$principalSummaryKindEnum_agent;
  @BuiltValueEnumConst(wireName: r'service')
  static const PrincipalSummaryKindEnum service =
      _$principalSummaryKindEnum_service;

  static Serializer<PrincipalSummaryKindEnum> get serializer =>
      _$principalSummaryKindEnumSerializer;

  const PrincipalSummaryKindEnum._(String name) : super(name);

  static BuiltSet<PrincipalSummaryKindEnum> get values =>
      _$principalSummaryKindEnumValues;
  static PrincipalSummaryKindEnum valueOf(String name) =>
      _$principalSummaryKindEnumValueOf(name);
}
