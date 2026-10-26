//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator.g.dart';

/// A first-party aggregator for one RF/sensor domain; reading the distributed network locally instead of a public mirror (C3/182-186)
///
/// Properties:
/// * [domain]
/// * [name]
/// * [enabled]
/// * [mode] - Own receiver, aggregated feed, or both
/// * [endpoint] - Local endpoint the adapter reads (e.g. http://localhost for readsb)
/// * [status]
/// * [supersededSources] - Public/mirror source ids this aggregator supersedes; defaulted off when it is live
/// * [lastSeenAt]
@BuiltValue()
abstract class Aggregator implements Built<Aggregator, AggregatorBuilder> {
  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Own receiver, aggregated feed, or both
  @BuiltValueField(wireName: r'mode')
  String? get mode;

  /// Local endpoint the adapter reads (e.g. http://localhost for readsb)
  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Public/mirror source ids this aggregator supersedes; defaulted off when it is live
  @BuiltValueField(wireName: r'supersededSources')
  BuiltList<String>? get supersededSources;

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime? get lastSeenAt;

  Aggregator._();

  factory Aggregator([void updates(AggregatorBuilder b)]) = _$Aggregator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Aggregator> get serializer => _$AggregatorSerializer();
}

class _$AggregatorSerializer implements PrimitiveSerializer<Aggregator> {
  @override
  final Iterable<Type> types = const [Aggregator, _$Aggregator];

  @override
  final String wireName = r'Aggregator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Aggregator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.supersededSources != null) {
      yield r'supersededSources';
      yield serializers.serialize(
        object.supersededSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lastSeenAt != null) {
      yield r'lastSeenAt';
      yield serializers.serialize(
        object.lastSeenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Aggregator object, {
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
    required AggregatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.domain = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.endpoint = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'supersededSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.supersededSources.replace(valueDes);
          break;
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSeenAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Aggregator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorBuilder();
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
