//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enable_core_sources_result.g.dart';

/// What `POST /v1/sources/enable-core` did (prompt 150).
///
/// Properties:
/// * [enabled] - The source ids enabled by this call, sorted; empty when there was nothing to enable
/// * [count] - How many sources this call enabled (the length of `enabled`)
/// * [skipped] - Disabled built-in sources left disabled: outside the core set, a core source that needs a credential or a required parameter (`nasa-firms` without its MAP_KEY), or one whose stored parameters are not valid
@BuiltValue()
abstract class EnableCoreSourcesResult
    implements Built<EnableCoreSourcesResult, EnableCoreSourcesResultBuilder> {
  /// The source ids enabled by this call, sorted; empty when there was nothing to enable
  @BuiltValueField(wireName: r'enabled')
  BuiltList<String> get enabled;

  /// How many sources this call enabled (the length of `enabled`)
  @BuiltValueField(wireName: r'count')
  int get count;

  /// Disabled built-in sources left disabled: outside the core set, a core source that needs a credential or a required parameter (`nasa-firms` without its MAP_KEY), or one whose stored parameters are not valid
  @BuiltValueField(wireName: r'skipped')
  int get skipped;

  EnableCoreSourcesResult._();

  factory EnableCoreSourcesResult([
    void updates(EnableCoreSourcesResultBuilder b),
  ]) = _$EnableCoreSourcesResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnableCoreSourcesResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnableCoreSourcesResult> get serializer =>
      _$EnableCoreSourcesResultSerializer();
}

class _$EnableCoreSourcesResultSerializer
    implements PrimitiveSerializer<EnableCoreSourcesResult> {
  @override
  final Iterable<Type> types = const [
    EnableCoreSourcesResult,
    _$EnableCoreSourcesResult,
  ];

  @override
  final String wireName = r'EnableCoreSourcesResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnableCoreSourcesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EnableCoreSourcesResult object, {
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
    required EnableCoreSourcesResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.enabled.replace(valueDes);
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        case r'skipped':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.skipped = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnableCoreSourcesResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableCoreSourcesResultBuilder();
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
