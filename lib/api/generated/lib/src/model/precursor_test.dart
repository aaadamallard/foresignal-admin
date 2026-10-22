//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_test.g.dart';

/// A stored precursor test (renamed from 'hypothesis'; 120 builds mining on it)
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [statement] - Plain-language statement
/// * [antecedent] - Occurrence selector
/// * [consequent] - Occurrence selector
/// * [minLag] - Minimum lag (default 0). ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [maxLag] - Maximum lag, ≤ 30d. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [spatial] - `sameEntity` | `{withinKm: n}` | `{sameRegion: country|admin1}` | `none`
/// * [dedupWindow] - Antecedent occurrences closer than this merge (default maxLag). ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [createdBy]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class PrecursorTest
    implements Built<PrecursorTest, PrecursorTestBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

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

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  PrecursorTest._();

  factory PrecursorTest([void updates(PrecursorTestBuilder b)]) =
      _$PrecursorTest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorTestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorTest> get serializer =>
      _$PrecursorTestSerializer();
}

class _$PrecursorTestSerializer implements PrimitiveSerializer<PrecursorTest> {
  @override
  final Iterable<Type> types = const [PrecursorTest, _$PrecursorTest];

  @override
  final String wireName = r'PrecursorTest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorTest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTest object, {
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
    required PrecursorTestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
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
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorTest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorTestBuilder();
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
