//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/read_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feed_key_input.g.dart';

/// Create a path-bound feed key for header-less clients (035)
///
/// Properties:
/// * [name]
/// * [prefixes] - Allowed canonical path prefixes (GET/HEAD only)
/// * [restrictions] - Mandatory: at least one of sources, kinds, area or bbox; `endpoints` is refused (the prefixes are the endpoint restriction) and private sources are always excluded
/// * [expiresAt] - ≤ 365 days ahead
/// * [privateAccess] - May read private sources (039)
@BuiltValue()
abstract class FeedKeyInput
    implements Built<FeedKeyInput, FeedKeyInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Allowed canonical path prefixes (GET/HEAD only)
  @BuiltValueField(wireName: r'prefixes')
  BuiltList<String> get prefixes;

  /// Mandatory: at least one of sources, kinds, area or bbox; `endpoints` is refused (the prefixes are the endpoint restriction) and private sources are always excluded
  @BuiltValueField(wireName: r'restrictions')
  ReadRestriction get restrictions;

  /// ≤ 365 days ahead
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  /// May read private sources (039)
  @BuiltValueField(wireName: r'privateAccess')
  bool? get privateAccess;

  FeedKeyInput._();

  factory FeedKeyInput([void updates(FeedKeyInputBuilder b)]) = _$FeedKeyInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeedKeyInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeedKeyInput> get serializer => _$FeedKeyInputSerializer();
}

class _$FeedKeyInputSerializer implements PrimitiveSerializer<FeedKeyInput> {
  @override
  final Iterable<Type> types = const [FeedKeyInput, _$FeedKeyInput];

  @override
  final String wireName = r'FeedKeyInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeedKeyInput object, {
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
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'restrictions';
    yield serializers.serialize(
      object.restrictions,
      specifiedType: const FullType(ReadRestriction),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.privateAccess != null) {
      yield r'privateAccess';
      yield serializers.serialize(
        object.privateAccess,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeedKeyInput object, {
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
    required FeedKeyInputBuilder result,
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
        case r'prefixes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.prefixes.replace(valueDes);
          break;
        case r'restrictions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReadRestriction),
          ) as ReadRestriction;
          result.restrictions.replace(valueDes);
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'privateAccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.privateAccess = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeedKeyInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeedKeyInputBuilder();
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
