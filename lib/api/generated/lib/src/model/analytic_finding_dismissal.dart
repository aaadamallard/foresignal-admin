//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analytic_finding_dismissal.g.dart';

/// Dismissal
///
/// Properties:
/// * [reason]
/// * [at]
/// * [by]
@BuiltValue()
abstract class AnalyticFindingDismissal
    implements
        Built<AnalyticFindingDismissal, AnalyticFindingDismissalBuilder> {
  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'by')
  String get by;

  AnalyticFindingDismissal._();

  factory AnalyticFindingDismissal([
    void updates(AnalyticFindingDismissalBuilder b),
  ]) = _$AnalyticFindingDismissal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalyticFindingDismissalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalyticFindingDismissal> get serializer =>
      _$AnalyticFindingDismissalSerializer();
}

class _$AnalyticFindingDismissalSerializer
    implements PrimitiveSerializer<AnalyticFindingDismissal> {
  @override
  final Iterable<Type> types = const [
    AnalyticFindingDismissal,
    _$AnalyticFindingDismissal,
  ];

  @override
  final String wireName = r'AnalyticFindingDismissal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalyticFindingDismissal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalyticFindingDismissal object, {
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
    required AnalyticFindingDismissalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'by':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalyticFindingDismissal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticFindingDismissalBuilder();
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
