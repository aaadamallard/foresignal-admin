//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'purge_request.g.dart';

/// Options for an entity purge (039)
///
/// Properties:
/// * [purgeAlerts] - Delete referencing alerts instead of redacting them
@BuiltValue()
abstract class PurgeRequest
    implements Built<PurgeRequest, PurgeRequestBuilder> {
  /// Delete referencing alerts instead of redacting them
  @BuiltValueField(wireName: r'purgeAlerts')
  bool? get purgeAlerts;

  PurgeRequest._();

  factory PurgeRequest([void updates(PurgeRequestBuilder b)]) = _$PurgeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PurgeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PurgeRequest> get serializer => _$PurgeRequestSerializer();
}

class _$PurgeRequestSerializer implements PrimitiveSerializer<PurgeRequest> {
  @override
  final Iterable<Type> types = const [PurgeRequest, _$PurgeRequest];

  @override
  final String wireName = r'PurgeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PurgeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.purgeAlerts != null) {
      yield r'purgeAlerts';
      yield serializers.serialize(
        object.purgeAlerts,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PurgeRequest object, {
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
    required PurgeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'purgeAlerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.purgeAlerts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PurgeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurgeRequestBuilder();
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
