//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test_input.g.dart';

/// A precursor test definition: does X tend to precede Y within T?
///
/// Properties:
/// * [name]
/// * [statement] - Plain-language statement
/// * [antecedent] - Occurrence selector
/// * [consequent] - Occurrence selector
/// * [minLag] - Minimum lag (default 0). ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [maxLag] - Maximum lag, ≤ 30d. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [spatial] - `sameEntity` | `{withinKm: n}` | `{sameRegion: country|admin1}` | `none`
/// * [dedupWindow] - Antecedent occurrences closer than this merge (default maxLag). ISO-8601 duration or shorthand (30m, 6h, 7d).
@BuiltValue()
abstract class PrecursorTestInput
    implements Built<PrecursorTestInput, PrecursorTestInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Plain-language statement
  @BuiltValueField(wireName: r'statement')
  String? get statement;

  /// Occurrence selector
  @BuiltValueField(wireName: r'antecedent')
  JsonObject? get antecedent;

  /// Occurrence selector
  @BuiltValueField(wireName: r'consequent')
  JsonObject? get consequent;

  /// Minimum lag (default 0). ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'minLag')
  String? get minLag;

  /// Maximum lag, ≤ 30d. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'maxLag')
  String get maxLag;

  /// `sameEntity` | `{withinKm: n}` | `{sameRegion: country|admin1}` | `none`
  @BuiltValueField(wireName: r'spatial')
  JsonObject? get spatial;

  /// Antecedent occurrences closer than this merge (default maxLag). ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'dedupWindow')
  String? get dedupWindow;

  PrecursorTestInput._();

  factory PrecursorTestInput([void updates(PrecursorTestInputBuilder b)]) =
      _$PrecursorTestInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTestInput> get serializer =>
      _$PrecursorTestInputSerializer();
}

class _$PrecursorTestInputSerializer
    implements PrimitiveSerializer<PrecursorTestInput> {
  @override
  final Iterable<Type> types = const [PrecursorTestInput, _$PrecursorTestInput];

  @override
  final String wireName = r'PrecursorTestInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.statement != null) {
      yield r'statement';
      yield serializers.serialize(
        object.statement,
        specifiedType: const FullType(String),
      );
    }
    yield r'antecedent';
    yield object.antecedent == null
        ? null
        : serializers.serialize(
            object.antecedent,
            specifiedType: const FullType.nullable(JsonObject),
          );
    yield r'consequent';
    yield object.consequent == null
        ? null
        : serializers.serialize(
            object.consequent,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.minLag != null) {
      yield r'minLag';
      yield serializers.serialize(
        object.minLag,
        specifiedType: const FullType(String),
      );
    }
    yield r'maxLag';
    yield serializers.serialize(
      object.maxLag,
      specifiedType: const FullType(String),
    );
    yield r'spatial';
    yield object.spatial == null
        ? null
        : serializers.serialize(
            object.spatial,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.dedupWindow != null) {
      yield r'dedupWindow';
      yield serializers.serialize(
        object.dedupWindow,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestInput object, {
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
    required PrecursorTestInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'statement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statement = valueDes;
          break;
        case r'antecedent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.antecedent = valueDes;
          break;
        case r'consequent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.consequent = valueDes;
          break;
        case r'minLag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.minLag = valueDes;
          break;
        case r'maxLag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxLag = valueDes;
          break;
        case r'spatial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.spatial = valueDes;
          break;
        case r'dedupWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dedupWindow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTestInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestInputBuilder();
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
