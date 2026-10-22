//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_retract_request.g.dart';

/// Retract a published revision; recipients are notified
///
/// Properties:
/// * [revision] - Default: latest
/// * [reason]
@BuiltValue()
abstract class ReportRetractRequest
    implements Built<ReportRetractRequest, ReportRetractRequestBuilder> {
  /// Default: latest
  @BuiltValueField(wireName: r'revision')
  int? get revision;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  ReportRetractRequest._();

  factory ReportRetractRequest([void updates(ReportRetractRequestBuilder b)]) =
      _$ReportRetractRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportRetractRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportRetractRequest> get serializer =>
      _$ReportRetractRequestSerializer();
}

class _$ReportRetractRequestSerializer
    implements PrimitiveSerializer<ReportRetractRequest> {
  @override
  final Iterable<Type> types = const [
    ReportRetractRequest,
    _$ReportRetractRequest
  ];

  @override
  final String wireName = r'ReportRetractRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportRetractRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportRetractRequest object, {
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
    required ReportRetractRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.revision = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ReportRetractRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportRetractRequestBuilder();
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
