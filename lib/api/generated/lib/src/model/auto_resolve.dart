//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auto_resolve.g.dart';

/// Automatic alert resolution (default all on for enter rules, off for match; not allowed on exit rules)
///
/// Properties:
/// * [onInverseEdge]
/// * [onTombstone]
/// * [onExpiry]
/// * [staleAfter] - Resolve when the entity has not been observed for this long. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class AutoResolve implements Built<AutoResolve, AutoResolveBuilder> {
  @BuiltValueField(wireName: r'onInverseEdge')
  bool? get onInverseEdge;

  @BuiltValueField(wireName: r'onTombstone')
  bool? get onTombstone;

  @BuiltValueField(wireName: r'onExpiry')
  bool? get onExpiry;

  /// Resolve when the entity has not been observed for this long. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'staleAfter')
  String? get staleAfter;

  AutoResolve._();

  factory AutoResolve([void updates(AutoResolveBuilder b)]) = _$AutoResolve;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AutoResolveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AutoResolve> get serializer => _$AutoResolveSerializer();
}

class _$AutoResolveSerializer implements PrimitiveSerializer<AutoResolve> {
  @override
  final Iterable<Type> types = const [AutoResolve, _$AutoResolve];

  @override
  final String wireName = r'AutoResolve';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AutoResolve object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.onInverseEdge != null) {
      yield r'onInverseEdge';
      yield serializers.serialize(
        object.onInverseEdge,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onTombstone != null) {
      yield r'onTombstone';
      yield serializers.serialize(
        object.onTombstone,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onExpiry != null) {
      yield r'onExpiry';
      yield serializers.serialize(
        object.onExpiry,
        specifiedType: const FullType(bool),
      );
    }
    if (object.staleAfter != null) {
      yield r'staleAfter';
      yield serializers.serialize(
        object.staleAfter,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AutoResolve object, {
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
    required AutoResolveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'onInverseEdge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.onInverseEdge = valueDes;
          break;
        case r'onTombstone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.onTombstone = valueDes;
          break;
        case r'onExpiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.onExpiry = valueDes;
          break;
        case r'staleAfter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staleAfter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AutoResolve deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoResolveBuilder();
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
