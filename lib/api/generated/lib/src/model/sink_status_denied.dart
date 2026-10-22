//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_status_denied.g.dart';

/// Records refused by the egress gate
///
/// Properties:
/// * [total]
/// * [byReason] - e.g. licence-forbidden, licence-local-only, private
/// * [bySource]
@BuiltValue()
abstract class SinkStatusDenied
    implements Built<SinkStatusDenied, SinkStatusDeniedBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  /// e.g. licence-forbidden, licence-local-only, private
  @BuiltValueField(wireName: r'byReason')
  BuiltMap<String, int>? get byReason;

  @BuiltValueField(wireName: r'bySource')
  BuiltMap<String, int>? get bySource;

  SinkStatusDenied._();

  factory SinkStatusDenied([void updates(SinkStatusDeniedBuilder b)]) =
      _$SinkStatusDenied;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkStatusDeniedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkStatusDenied> get serializer =>
      _$SinkStatusDeniedSerializer();
}

class _$SinkStatusDeniedSerializer
    implements PrimitiveSerializer<SinkStatusDenied> {
  @override
  final Iterable<Type> types = const [SinkStatusDenied, _$SinkStatusDenied];

  @override
  final String wireName = r'SinkStatusDenied';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkStatusDenied object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    if (object.byReason != null) {
      yield r'byReason';
      yield serializers.serialize(
        object.byReason,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.bySource != null) {
      yield r'bySource';
      yield serializers.serialize(
        object.bySource,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkStatusDenied object, {
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
    required SinkStatusDeniedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'byReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byReason.replace(valueDes);
          break;
        case r'bySource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.bySource.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkStatusDenied deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkStatusDeniedBuilder();
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
