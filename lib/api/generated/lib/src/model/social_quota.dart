//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_quota.g.dart';

/// A platform quota window and its use
///
/// Properties:
/// * [unit]
/// * [limit]
/// * [window] - ISO-8601 duration of the window (rolling or calendar)
/// * [rolling]
/// * [used]
/// * [remaining]
/// * [resetsAt]
/// * [description]
@BuiltValue()
abstract class SocialQuota implements Built<SocialQuota, SocialQuotaBuilder> {
  @BuiltValueField(wireName: r'unit')
  SocialQuotaUnitEnum get unit;
  // enum unitEnum {  requests,  units,  queries,  posts,  hashtags,  };

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// ISO-8601 duration of the window (rolling or calendar)
  @BuiltValueField(wireName: r'window')
  String get window;

  @BuiltValueField(wireName: r'rolling')
  bool? get rolling;

  @BuiltValueField(wireName: r'used')
  int get used;

  @BuiltValueField(wireName: r'remaining')
  int? get remaining;

  @BuiltValueField(wireName: r'resetsAt')
  DateTime? get resetsAt;

  @BuiltValueField(wireName: r'description')
  String? get description;

  SocialQuota._();

  factory SocialQuota([void updates(SocialQuotaBuilder b)]) = _$SocialQuota;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialQuotaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialQuota> get serializer => _$SocialQuotaSerializer();
}

class _$SocialQuotaSerializer implements PrimitiveSerializer<SocialQuota> {
  @override
  final Iterable<Type> types = const [SocialQuota, _$SocialQuota];

  @override
  final String wireName = r'SocialQuota';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialQuota object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(SocialQuotaUnitEnum),
    );
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(String),
    );
    if (object.rolling != null) {
      yield r'rolling';
      yield serializers.serialize(
        object.rolling,
        specifiedType: const FullType(bool),
      );
    }
    yield r'used';
    yield serializers.serialize(
      object.used,
      specifiedType: const FullType(int),
    );
    if (object.remaining != null) {
      yield r'remaining';
      yield serializers.serialize(
        object.remaining,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.resetsAt != null) {
      yield r'resetsAt';
      yield serializers.serialize(
        object.resetsAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialQuota object, {
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
    required SocialQuotaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialQuotaUnitEnum),
          ) as SocialQuotaUnitEnum;
          result.unit = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.window = valueDes;
          break;
        case r'rolling':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.rolling = valueDes;
          break;
        case r'used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.used = valueDes;
          break;
        case r'remaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remaining = valueDes;
          break;
        case r'resetsAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.resetsAt = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialQuota deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialQuotaBuilder();
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

class SocialQuotaUnitEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'requests')
  static const SocialQuotaUnitEnum requests = _$socialQuotaUnitEnum_requests;
  @BuiltValueEnumConst(wireName: r'units')
  static const SocialQuotaUnitEnum units = _$socialQuotaUnitEnum_units;
  @BuiltValueEnumConst(wireName: r'queries')
  static const SocialQuotaUnitEnum queries = _$socialQuotaUnitEnum_queries;
  @BuiltValueEnumConst(wireName: r'posts')
  static const SocialQuotaUnitEnum posts = _$socialQuotaUnitEnum_posts;
  @BuiltValueEnumConst(wireName: r'hashtags')
  static const SocialQuotaUnitEnum hashtags = _$socialQuotaUnitEnum_hashtags;

  static Serializer<SocialQuotaUnitEnum> get serializer =>
      _$socialQuotaUnitEnumSerializer;

  const SocialQuotaUnitEnum._(String name) : super(name);

  static BuiltSet<SocialQuotaUnitEnum> get values =>
      _$socialQuotaUnitEnumValues;
  static SocialQuotaUnitEnum valueOf(String name) =>
      _$socialQuotaUnitEnumValueOf(name);
}
