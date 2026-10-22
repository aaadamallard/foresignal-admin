//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_send_input.g.dart';

/// Send a report to principals and groups on this instance
///
/// Properties:
/// * [principals] - Principal ids or handles
/// * [groups]
/// * [channels] - Recipients' own channel ids (130 preferences) for HTML or link delivery
/// * [message]
/// * [revision] - Default: latest published revision
@BuiltValue()
abstract class ReportSendInput
    implements Built<ReportSendInput, ReportSendInputBuilder> {
  /// Principal ids or handles
  @BuiltValueField(wireName: r'principals')
  BuiltList<String>? get principals;

  @BuiltValueField(wireName: r'groups')
  BuiltList<String>? get groups;

  /// Recipients' own channel ids (130 preferences) for HTML or link delivery
  @BuiltValueField(wireName: r'channels')
  BuiltList<String>? get channels;

  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Default: latest published revision
  @BuiltValueField(wireName: r'revision')
  int? get revision;

  ReportSendInput._();

  factory ReportSendInput([void updates(ReportSendInputBuilder b)]) =
      _$ReportSendInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportSendInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportSendInput> get serializer =>
      _$ReportSendInputSerializer();
}

class _$ReportSendInputSerializer
    implements PrimitiveSerializer<ReportSendInput> {
  @override
  final Iterable<Type> types = const [ReportSendInput, _$ReportSendInput];

  @override
  final String wireName = r'ReportSendInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportSendInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.principals != null) {
      yield r'principals';
      yield serializers.serialize(
        object.principals,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportSendInput object, {
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
    required ReportSendInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.principals.replace(valueDes);
          break;
        case r'groups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
          break;
        case r'channels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channels.replace(valueDes);
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.revision = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportSendInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportSendInputBuilder();
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
