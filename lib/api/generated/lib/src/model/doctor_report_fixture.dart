//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_fixture.g.dart';

/// Fixture compared against
///
/// Properties:
/// * [file]
/// * [capturedAt]
/// * [sha256]
/// * [truncated] - True when the packaged fixture was cut to the 256 KB cap
@BuiltValue()
abstract class DoctorReportFixture
    implements Built<DoctorReportFixture, DoctorReportFixtureBuilder> {
  @BuiltValueField(wireName: r'file')
  String get file;

  @BuiltValueField(wireName: r'capturedAt')
  String? get capturedAt;

  @BuiltValueField(wireName: r'sha256')
  String? get sha256;

  /// True when the packaged fixture was cut to the 256 KB cap
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  DoctorReportFixture._();

  factory DoctorReportFixture([void updates(DoctorReportFixtureBuilder b)]) =
      _$DoctorReportFixture;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportFixtureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportFixture> get serializer =>
      _$DoctorReportFixtureSerializer();
}

class _$DoctorReportFixtureSerializer
    implements PrimitiveSerializer<DoctorReportFixture> {
  @override
  final Iterable<Type> types = const [
    DoctorReportFixture,
    _$DoctorReportFixture
  ];

  @override
  final String wireName = r'DoctorReportFixture';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportFixture object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(String),
    );
    if (object.capturedAt != null) {
      yield r'capturedAt';
      yield serializers.serialize(
        object.capturedAt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sha256 != null) {
      yield r'sha256';
      yield serializers.serialize(
        object.sha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportFixture object, {
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
    required DoctorReportFixtureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.file = valueDes;
          break;
        case r'capturedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.capturedAt = valueDes;
          break;
        case r'sha256':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sha256 = valueDes;
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportFixture deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportFixtureBuilder();
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
