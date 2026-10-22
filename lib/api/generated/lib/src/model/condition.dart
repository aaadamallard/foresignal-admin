//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'condition.g.dart';

/// Condition
///
/// Properties:
/// * [path] - Dot path into payload. Required for every operator except inWatchlist and notInWatchlist, which without a path read each source's declared identity field (descriptor entityKeys, 036); a source that does not declare the watchlist's identity never matches
/// * [op] - Comparison ops take numbers (== and != also strings and booleans); in/notIn a non-empty homogeneous scalar array (≤ 1000); exists a boolean; startsWith a string ≤ 256; matches a Java regex ≤ 256 without backreferences, lookaround or nested quantifiers (only (?:…) groups and the escapes \\d \\D \\w \\W \\s \\S \\n \\t \\r \\f, so PostgreSQL reads it the same way). A value of another JSON type than the operator expects, a missing path or JSON null never matches (except exists); string operators need a JSON string (the number 5 does not equal \"5\"); != and notIn need the value present. inWatchlist/notInWatchlist (036) take a watchlist id; the payload value must be a JSON string or number (compared by its JSON text after the list's normalization); anything else, a missing path or JSON null never matches either operator.
/// * [value]
@BuiltValue()
abstract class Condition implements Built<Condition, ConditionBuilder> {
  /// Dot path into payload. Required for every operator except inWatchlist and notInWatchlist, which without a path read each source's declared identity field (descriptor entityKeys, 036); a source that does not declare the watchlist's identity never matches
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// Comparison ops take numbers (== and != also strings and booleans); in/notIn a non-empty homogeneous scalar array (≤ 1000); exists a boolean; startsWith a string ≤ 256; matches a Java regex ≤ 256 without backreferences, lookaround or nested quantifiers (only (?:…) groups and the escapes \\d \\D \\w \\W \\s \\S \\n \\t \\r \\f, so PostgreSQL reads it the same way). A value of another JSON type than the operator expects, a missing path or JSON null never matches (except exists); string operators need a JSON string (the number 5 does not equal \"5\"); != and notIn need the value present. inWatchlist/notInWatchlist (036) take a watchlist id; the payload value must be a JSON string or number (compared by its JSON text after the list's normalization); anything else, a missing path or JSON null never matches either operator.
  @BuiltValueField(wireName: r'op')
  String get op;

  @BuiltValueField(wireName: r'value')
  JsonObject? get value;

  Condition._();

  factory Condition([void updates(ConditionBuilder b)]) = _$Condition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Condition> get serializer => _$ConditionSerializer();
}

class _$ConditionSerializer implements PrimitiveSerializer<Condition> {
  @override
  final Iterable<Type> types = const [Condition, _$Condition];

  @override
  final String wireName = r'Condition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Condition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    yield r'op';
    yield serializers.serialize(
      object.op,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield object.value == null
        ? null
        : serializers.serialize(
            object.value,
            specifiedType: const FullType.nullable(JsonObject),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    Condition object, {
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
    required ConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'op':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.op = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Condition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConditionBuilder();
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
