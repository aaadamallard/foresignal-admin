//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_stream_stats.g.dart';

/// Per-stream activity
///
/// Properties:
/// * [streamId]
/// * [mode]
/// * [kind]
/// * [items]
/// * [rejected]
/// * [lastItemAt]
/// * [bindings]
@BuiltValue()
abstract class ExternalStreamStats
    implements Built<ExternalStreamStats, ExternalStreamStatsBuilder> {
  @BuiltValueField(wireName: r'streamId')
  String? get streamId;

  @BuiltValueField(wireName: r'mode')
  String? get mode;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'items')
  int? get items;

  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  @BuiltValueField(wireName: r'lastItemAt')
  DateTime? get lastItemAt;

  @BuiltValueField(wireName: r'bindings')
  int? get bindings;

  ExternalStreamStats._();

  factory ExternalStreamStats([void updates(ExternalStreamStatsBuilder b)]) =
      _$ExternalStreamStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalStreamStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalStreamStats> get serializer =>
      _$ExternalStreamStatsSerializer();
}

class _$ExternalStreamStatsSerializer
    implements PrimitiveSerializer<ExternalStreamStats> {
  @override
  final Iterable<Type> types = const [
    ExternalStreamStats,
    _$ExternalStreamStats,
  ];

  @override
  final String wireName = r'ExternalStreamStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalStreamStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.streamId != null) {
      yield r'streamId';
      yield serializers.serialize(
        object.streamId,
        specifiedType: const FullType(String),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastItemAt != null) {
      yield r'lastItemAt';
      yield serializers.serialize(
        object.lastItemAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.bindings != null) {
      yield r'bindings';
      yield serializers.serialize(
        object.bindings,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalStreamStats object, {
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
    required ExternalStreamStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.streamId = valueDes;
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
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.items = valueDes;
          break;
        case r'rejected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        case r'lastItemAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastItemAt = valueDes;
          break;
        case r'bindings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bindings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalStreamStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalStreamStatsBuilder();
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
