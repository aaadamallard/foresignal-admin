//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/saved_search_query.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search.g.dart';

/// A named, shareable search whose new matches can notify the owner at most hourly
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [owner]
/// * [query]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [notify]
/// * [lastRunAt]
/// * [lastNotifiedAt]
/// * [lastMatchCount]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class SavedSearch implements Built<SavedSearch, SavedSearchBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary get owner;

  @BuiltValueField(wireName: r'query')
  SavedSearchQuery get query;

  @BuiltValueField(wireName: r'visibility')
  Visibility get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'notify')
  bool get notify;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'lastNotifiedAt')
  DateTime? get lastNotifiedAt;

  @BuiltValueField(wireName: r'lastMatchCount')
  int? get lastMatchCount;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  SavedSearch._();

  factory SavedSearch([void updates(SavedSearchBuilder b)]) = _$SavedSearch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearch> get serializer => _$SavedSearchSerializer();
}

class _$SavedSearchSerializer implements PrimitiveSerializer<SavedSearch> {
  @override
  final Iterable<Type> types = const [SavedSearch, _$SavedSearch];

  @override
  final String wireName = r'SavedSearch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearch object, {
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
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(SavedSearchQuery),
    );
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(Visibility),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'notify';
    yield serializers.serialize(
      object.notify,
      specifiedType: const FullType(bool),
    );
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastNotifiedAt != null) {
      yield r'lastNotifiedAt';
      yield serializers.serialize(
        object.lastNotifiedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastMatchCount != null) {
      yield r'lastMatchCount';
      yield serializers.serialize(
        object.lastMatchCount,
        specifiedType: const FullType.nullable(int),
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
    SavedSearch object, {
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
    required SavedSearchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.owner.replace(valueDes);
          break;
        case r'query':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SavedSearchQuery),
                  )
                  as SavedSearchQuery;
          result.query.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Visibility),
                  )
                  as Visibility;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'notify':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.notify = valueDes;
          break;
        case r'lastRunAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'lastNotifiedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastNotifiedAt = valueDes;
          break;
        case r'lastMatchCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastMatchCount = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
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
  SavedSearch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchBuilder();
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
