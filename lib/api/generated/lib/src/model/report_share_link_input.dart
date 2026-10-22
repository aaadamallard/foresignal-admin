//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_share_link_input.g.dart';

/// Create a read-only link to the published HTML rendition (TLP CLEAR, or GREEN with `exchange.allowGreenLinks`)
///
/// Properties:
/// * [expiresAt]
@BuiltValue()
abstract class ReportShareLinkInput
    implements Built<ReportShareLinkInput, ReportShareLinkInputBuilder> {
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ReportShareLinkInput._();

  factory ReportShareLinkInput([void updates(ReportShareLinkInputBuilder b)]) =
      _$ReportShareLinkInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportShareLinkInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportShareLinkInput> get serializer =>
      _$ReportShareLinkInputSerializer();
}

class _$ReportShareLinkInputSerializer
    implements PrimitiveSerializer<ReportShareLinkInput> {
  @override
  final Iterable<Type> types = const [
    ReportShareLinkInput,
    _$ReportShareLinkInput
  ];

  @override
  final String wireName = r'ReportShareLinkInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportShareLinkInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportShareLinkInput object, {
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
    required ReportShareLinkInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportShareLinkInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportShareLinkInputBuilder();
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
