//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_options.g.dart';

/// Options for a doctor run
///
/// Properties:
/// * [probe] - Probe the live upstream through the budgeted client
/// * [llm] - LLM explanation and patch proposal (026 `chat` role, metered as `doctor`)
/// * [detail] - Context size: compact ≤ 6k tokens, full ≤ 30k
@BuiltValue()
abstract class DoctorOptions
    implements Built<DoctorOptions, DoctorOptionsBuilder> {
  /// Probe the live upstream through the budgeted client
  @BuiltValueField(wireName: r'probe')
  bool? get probe;

  /// LLM explanation and patch proposal (026 `chat` role, metered as `doctor`)
  @BuiltValueField(wireName: r'llm')
  DoctorOptionsLlmEnum? get llm;
  // enum llmEnum {  auto,  on,  off,  };

  /// Context size: compact ≤ 6k tokens, full ≤ 30k
  @BuiltValueField(wireName: r'detail')
  DoctorOptionsDetailEnum? get detail;
  // enum detailEnum {  compact,  full,  };

  DoctorOptions._();

  factory DoctorOptions([void updates(DoctorOptionsBuilder b)]) =
      _$DoctorOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorOptions> get serializer =>
      _$DoctorOptionsSerializer();
}

class _$DoctorOptionsSerializer implements PrimitiveSerializer<DoctorOptions> {
  @override
  final Iterable<Type> types = const [DoctorOptions, _$DoctorOptions];

  @override
  final String wireName = r'DoctorOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.probe != null) {
      yield r'probe';
      yield serializers.serialize(
        object.probe,
        specifiedType: const FullType(bool),
      );
    }
    if (object.llm != null) {
      yield r'llm';
      yield serializers.serialize(
        object.llm,
        specifiedType: const FullType(DoctorOptionsLlmEnum),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(DoctorOptionsDetailEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorOptions object, {
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
    required DoctorOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'probe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.probe = valueDes;
          break;
        case r'llm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DoctorOptionsLlmEnum),
          ) as DoctorOptionsLlmEnum?;
          if (valueDes == null) continue;
          result.llm = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DoctorOptionsDetailEnum),
          ) as DoctorOptionsDetailEnum?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorOptionsBuilder();
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

/// LLM explanation and patch proposal (026 `chat` role, metered as `doctor`)
class DoctorOptionsLlmEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const DoctorOptionsLlmEnum auto = _$doctorOptionsLlmEnum_auto;
  @BuiltValueEnumConst(wireName: r'on')
  static const DoctorOptionsLlmEnum on_ = _$doctorOptionsLlmEnum_on_;
  @BuiltValueEnumConst(wireName: r'off')
  static const DoctorOptionsLlmEnum off = _$doctorOptionsLlmEnum_off;

  static Serializer<DoctorOptionsLlmEnum> get serializer =>
      _$doctorOptionsLlmEnumSerializer;

  const DoctorOptionsLlmEnum._(String name) : super(name);

  static BuiltSet<DoctorOptionsLlmEnum> get values =>
      _$doctorOptionsLlmEnumValues;
  static DoctorOptionsLlmEnum valueOf(String name) =>
      _$doctorOptionsLlmEnumValueOf(name);
}

/// Context size: compact ≤ 6k tokens, full ≤ 30k
class DoctorOptionsDetailEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'compact')
  static const DoctorOptionsDetailEnum compact =
      _$doctorOptionsDetailEnum_compact;
  @BuiltValueEnumConst(wireName: r'full')
  static const DoctorOptionsDetailEnum full = _$doctorOptionsDetailEnum_full;

  static Serializer<DoctorOptionsDetailEnum> get serializer =>
      _$doctorOptionsDetailEnumSerializer;

  const DoctorOptionsDetailEnum._(String name) : super(name);

  static BuiltSet<DoctorOptionsDetailEnum> get values =>
      _$doctorOptionsDetailEnumValues;
  static DoctorOptionsDetailEnum valueOf(String name) =>
      _$doctorOptionsDetailEnumValueOf(name);
}
