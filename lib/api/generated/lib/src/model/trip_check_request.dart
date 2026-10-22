//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trip_check_request.g.dart';

/// Run the pre-trip check now (114)
///
/// Properties:
/// * [dryRun] - Return the briefing without delivering
/// * [occurrence] - Occurrence departure time (default the next occurrence)
@BuiltValue()
abstract class TripCheckRequest
    implements Built<TripCheckRequest, TripCheckRequestBuilder> {
  /// Return the briefing without delivering
  @BuiltValueField(wireName: r'dryRun')
  bool? get dryRun;

  /// Occurrence departure time (default the next occurrence)
  @BuiltValueField(wireName: r'occurrence')
  DateTime? get occurrence;

  TripCheckRequest._();

  factory TripCheckRequest([void updates(TripCheckRequestBuilder b)]) =
      _$TripCheckRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TripCheckRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TripCheckRequest> get serializer =>
      _$TripCheckRequestSerializer();
}

class _$TripCheckRequestSerializer
    implements PrimitiveSerializer<TripCheckRequest> {
  @override
  final Iterable<Type> types = const [TripCheckRequest, _$TripCheckRequest];

  @override
  final String wireName = r'TripCheckRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TripCheckRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dryRun != null) {
      yield r'dryRun';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
    if (object.occurrence != null) {
      yield r'occurrence';
      yield serializers.serialize(
        object.occurrence,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TripCheckRequest object, {
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
    required TripCheckRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dryRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dryRun = valueDes;
          break;
        case r'occurrence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.occurrence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TripCheckRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TripCheckRequestBuilder();
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
