//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_run_accepted.g.dart';

/// A doctor run still in progress after 90 s; poll the Location
///
/// Properties:
/// * [reportId] - ULID identifier
/// * [status]
/// * [location]
@BuiltValue()
abstract class DoctorRunAccepted
    implements Built<DoctorRunAccepted, DoctorRunAcceptedBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'reportId')
  String get reportId;

  @BuiltValueField(wireName: r'status')
  DoctorRunAcceptedStatusEnum get status;
  // enum statusEnum {  running,  };

  @BuiltValueField(wireName: r'location')
  String get location;

  DoctorRunAccepted._();

  factory DoctorRunAccepted([void updates(DoctorRunAcceptedBuilder b)]) =
      _$DoctorRunAccepted;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorRunAcceptedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorRunAccepted> get serializer =>
      _$DoctorRunAcceptedSerializer();
}

class _$DoctorRunAcceptedSerializer
    implements PrimitiveSerializer<DoctorRunAccepted> {
  @override
  final Iterable<Type> types = const [DoctorRunAccepted, _$DoctorRunAccepted];

  @override
  final String wireName = r'DoctorRunAccepted';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorRunAccepted object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reportId';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DoctorRunAcceptedStatusEnum),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorRunAccepted object, {
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
    required DoctorRunAcceptedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reportId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DoctorRunAcceptedStatusEnum),
          ) as DoctorRunAcceptedStatusEnum;
          result.status = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorRunAccepted deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorRunAcceptedBuilder();
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

class DoctorRunAcceptedStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const DoctorRunAcceptedStatusEnum running =
      _$doctorRunAcceptedStatusEnum_running;

  static Serializer<DoctorRunAcceptedStatusEnum> get serializer =>
      _$doctorRunAcceptedStatusEnumSerializer;

  const DoctorRunAcceptedStatusEnum._(String name) : super(name);

  static BuiltSet<DoctorRunAcceptedStatusEnum> get values =>
      _$doctorRunAcceptedStatusEnumValues;
  static DoctorRunAcceptedStatusEnum valueOf(String name) =>
      _$doctorRunAcceptedStatusEnumValueOf(name);
}
