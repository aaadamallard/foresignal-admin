//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_scope.g.dart';

/// What a cycle covers
///
/// Properties:
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [themes]
/// * [situationIds]
/// * [hypothesisSetIds] - Set ids, or `cadence-match` for every set whose cadence matches
/// * [sourceIds]
/// * [categories]
@BuiltValue()
abstract class CycleScope implements Built<CycleScope, CycleScopeBuilder> {
  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'themes')
  BuiltList<String>? get themes;

  @BuiltValueField(wireName: r'situationIds')
  BuiltList<String>? get situationIds;

  /// Set ids, or `cadence-match` for every set whose cadence matches
  @BuiltValueField(wireName: r'hypothesisSetIds')
  JsonObject? get hypothesisSetIds;

  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  CycleScope._();

  factory CycleScope([void updates(CycleScopeBuilder b)]) = _$CycleScope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CycleScopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CycleScope> get serializer => _$CycleScopeSerializer();
}

class _$CycleScopeSerializer implements PrimitiveSerializer<CycleScope> {
  @override
  final Iterable<Type> types = const [CycleScope, _$CycleScope];

  @override
  final String wireName = r'CycleScope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CycleScope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.themes != null) {
      yield r'themes';
      yield serializers.serialize(
        object.themes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.situationIds != null) {
      yield r'situationIds';
      yield serializers.serialize(
        object.situationIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.hypothesisSetIds != null) {
      yield r'hypothesisSetIds';
      yield serializers.serialize(
        object.hypothesisSetIds,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CycleScope object, {
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
    required CycleScopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'themes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.themes.replace(valueDes);
          break;
        case r'situationIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.situationIds.replace(valueDes);
          break;
        case r'hypothesisSetIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.hypothesisSetIds = valueDes;
          break;
        case r'sourceIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        case r'categories':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.categories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CycleScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CycleScopeBuilder();
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
