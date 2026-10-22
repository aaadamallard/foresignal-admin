//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_key_create.g.dart';

/// Tile key creation request
///
/// Properties:
/// * [name]
/// * [prefixes] - Allowed canonical prefixes (anything else → 400 VALIDATION_FAILED)
/// * [ttl] - Lifetime, at most 30 days. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [restrictions]
@BuiltValue()
abstract class TileKeyCreate
    implements Built<TileKeyCreate, TileKeyCreateBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Allowed canonical prefixes (anything else → 400 VALIDATION_FAILED)
  @BuiltValueField(wireName: r'prefixes')
  BuiltSet<String> get prefixes;

  /// Lifetime, at most 30 days. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'ttl')
  String get ttl;

  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction? get restrictions;

  TileKeyCreate._();

  factory TileKeyCreate([void updates(TileKeyCreateBuilder b)]) =
      _$TileKeyCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileKeyCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileKeyCreate> get serializer =>
      _$TileKeyCreateSerializer();
}

class _$TileKeyCreateSerializer implements PrimitiveSerializer<TileKeyCreate> {
  @override
  final Iterable<Type> types = const [TileKeyCreate, _$TileKeyCreate];

  @override
  final String wireName = r'TileKeyCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileKeyCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'prefixes';
    yield serializers.serialize(
      object.prefixes,
      specifiedType: const FullType(BuiltSet, [FullType(String)]),
    );
    yield r'ttl';
    yield serializers.serialize(
      object.ttl,
      specifiedType: const FullType(String),
    );
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType(ReadRestriction),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TileKeyCreate object, {
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
    required TileKeyCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'prefixes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [FullType(String)]),
                  )
                  as BuiltSet<String>;
          result.prefixes.replace(valueDes);
          break;
        case r'ttl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ttl = valueDes;
          break;
        case r'restrictions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReadRestriction),
                  )
                  as ReadRestriction?;
          if (valueDes == null) continue;
          result.restrictions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileKeyCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileKeyCreateBuilder();
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
