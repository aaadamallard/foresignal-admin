//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enable_free_sources_result.g.dart';

/// What `POST /v1/sources/enable-free` did (prompt 145).
///
/// Properties:
/// * [enabled] - The source ids enabled by this call, sorted; empty when there was nothing to enable
/// * [count] - How many sources this call enabled (the length of `enabled`)
/// * [skipped] - Disabled built-in sources left disabled: they need a credential or a required parameter, are held off by default (`wiki-edit-surge`), or their stored parameters are not valid
@BuiltValue()
abstract class EnableFreeSourcesResult
    implements Built<EnableFreeSourcesResult, EnableFreeSourcesResultBuilder> {
  /// The source ids enabled by this call, sorted; empty when there was nothing to enable
  @BuiltValueField(wireName: r'enabled')
  BuiltList<String> get enabled;

  /// How many sources this call enabled (the length of `enabled`)
  @BuiltValueField(wireName: r'count')
  int get count;

  /// Disabled built-in sources left disabled: they need a credential or a required parameter, are held off by default (`wiki-edit-surge`), or their stored parameters are not valid
  @BuiltValueField(wireName: r'skipped')
  int get skipped;

  EnableFreeSourcesResult._();

  factory EnableFreeSourcesResult([
    void updates(EnableFreeSourcesResultBuilder b),
  ]) = _$EnableFreeSourcesResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnableFreeSourcesResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnableFreeSourcesResult> get serializer =>
      _$EnableFreeSourcesResultSerializer();
}

class _$EnableFreeSourcesResultSerializer
    implements PrimitiveSerializer<EnableFreeSourcesResult> {
  @override
  final Iterable<Type> types = const [
    EnableFreeSourcesResult,
    _$EnableFreeSourcesResult,
  ];

  @override
  final String wireName = r'EnableFreeSourcesResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnableFreeSourcesResult object, {
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
    EnableFreeSourcesResult object, {
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
    required EnableFreeSourcesResultBuilder result,
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
  EnableFreeSourcesResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFreeSourcesResultBuilder();
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
