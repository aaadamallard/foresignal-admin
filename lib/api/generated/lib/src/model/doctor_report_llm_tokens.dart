//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_llm_tokens.g.dart';

/// Token usage
///
/// Properties:
/// * [input]
/// * [output]
@BuiltValue()
abstract class DoctorReportLlmTokens
    implements Built<DoctorReportLlmTokens, DoctorReportLlmTokensBuilder> {
  @BuiltValueField(wireName: r'input')
  int? get input;

  @BuiltValueField(wireName: r'output')
  int? get output;

  DoctorReportLlmTokens._();

  factory DoctorReportLlmTokens(
      [void updates(DoctorReportLlmTokensBuilder b)]) = _$DoctorReportLlmTokens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportLlmTokensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportLlmTokens> get serializer =>
      _$DoctorReportLlmTokensSerializer();
}

class _$DoctorReportLlmTokensSerializer
    implements PrimitiveSerializer<DoctorReportLlmTokens> {
  @override
  final Iterable<Type> types = const [
    DoctorReportLlmTokens,
    _$DoctorReportLlmTokens
  ];

  @override
  final String wireName = r'DoctorReportLlmTokens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportLlmTokens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.input != null) {
      yield r'input';
      yield serializers.serialize(
        object.input,
        specifiedType: const FullType(int),
      );
    }
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportLlmTokens object, {
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
    required DoctorReportLlmTokensBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'input':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.input = valueDes;
          break;
        case r'output':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.output = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportLlmTokens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportLlmTokensBuilder();
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
