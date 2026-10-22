//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/search_reindex_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_status.g.dart';

/// SearchStatus
///
/// Properties:
/// * [semanticEnabled]
/// * [reason]
/// * [model]
/// * [dimensions]
/// * [documents]
/// * [backlog]
/// * [reindexing]
/// * [activeModel] - Active model id `<providerId>:<model>:<dimensions>`
/// * [reindex]
/// * [degraded] - True while semantic search falls back to text (e.g. outgoing model no longer callable)
@BuiltValue()
abstract class SearchStatus
    implements Built<SearchStatus, SearchStatusBuilder> {
  @BuiltValueField(wireName: r'semanticEnabled')
  bool get semanticEnabled;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'dimensions')
  int? get dimensions;

  @BuiltValueField(wireName: r'documents')
  int get documents;

  @BuiltValueField(wireName: r'backlog')
  int? get backlog;

  @BuiltValueField(wireName: r'reindexing')
  bool? get reindexing;

  /// Active model id `<providerId>:<model>:<dimensions>`
  @BuiltValueField(wireName: r'activeModel')
  String? get activeModel;

  @BuiltValueField(wireName: r'reindex')
  SearchReindexState? get reindex;

  /// True while semantic search falls back to text (e.g. outgoing model no longer callable)
  @BuiltValueField(wireName: r'degraded')
  bool? get degraded;

  SearchStatus._();

  factory SearchStatus([void updates(SearchStatusBuilder b)]) = _$SearchStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchStatus> get serializer => _$SearchStatusSerializer();
}

class _$SearchStatusSerializer implements PrimitiveSerializer<SearchStatus> {
  @override
  final Iterable<Type> types = const [SearchStatus, _$SearchStatus];

  @override
  final String wireName = r'SearchStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'semanticEnabled';
    yield serializers.serialize(
      object.semanticEnabled,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dimensions != null) {
      yield r'dimensions';
      yield serializers.serialize(
        object.dimensions,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'documents';
    yield serializers.serialize(
      object.documents,
      specifiedType: const FullType(int),
    );
    if (object.backlog != null) {
      yield r'backlog';
      yield serializers.serialize(
        object.backlog,
        specifiedType: const FullType(int),
      );
    }
    if (object.reindexing != null) {
      yield r'reindexing';
      yield serializers.serialize(
        object.reindexing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.activeModel != null) {
      yield r'activeModel';
      yield serializers.serialize(
        object.activeModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reindex != null) {
      yield r'reindex';
      yield serializers.serialize(
        object.reindex,
        specifiedType: const FullType(SearchReindexState),
      );
    }
    if (object.degraded != null) {
      yield r'degraded';
      yield serializers.serialize(
        object.degraded,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchStatus object, {
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
    required SearchStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'semanticEnabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.semanticEnabled = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'dimensions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dimensions = valueDes;
          break;
        case r'documents':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.documents = valueDes;
          break;
        case r'backlog':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.backlog = valueDes;
          break;
        case r'reindexing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.reindexing = valueDes;
          break;
        case r'activeModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.activeModel = valueDes;
          break;
        case r'reindex':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SearchReindexState),
                  )
                  as SearchReindexState?;
          if (valueDes == null) continue;
          result.reindex.replace(valueDes);
          break;
        case r'degraded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.degraded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchStatusBuilder();
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
