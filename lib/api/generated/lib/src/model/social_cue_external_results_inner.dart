//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_external_results_inner.g.dart';

/// What one EDP provider's `transport.search` returned for the cue (`edpProviderSearch`)
///
/// Properties:
/// * [sourceId] - The provider's source
/// * [queries] - Queries sent (at most 10)
/// * [items] - Records stored as cue results
/// * [error] - The first failure, e.g. BUDGET_EXCEEDED
@BuiltValue()
abstract class SocialCueExternalResultsInner
    implements
        Built<
          SocialCueExternalResultsInner,
          SocialCueExternalResultsInnerBuilder
        > {
  /// The provider's source
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  /// Queries sent (at most 10)
  @BuiltValueField(wireName: r'queries')
  int get queries;

  /// Records stored as cue results
  @BuiltValueField(wireName: r'items')
  int get items;

  /// The first failure, e.g. BUDGET_EXCEEDED
  @BuiltValueField(wireName: r'error')
  String? get error;

  SocialCueExternalResultsInner._();

  factory SocialCueExternalResultsInner([
    void updates(SocialCueExternalResultsInnerBuilder b),
  ]) = _$SocialCueExternalResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueExternalResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueExternalResultsInner> get serializer =>
      _$SocialCueExternalResultsInnerSerializer();
}

class _$SocialCueExternalResultsInnerSerializer
    implements PrimitiveSerializer<SocialCueExternalResultsInner> {
  @override
  final Iterable<Type> types = const [
    SocialCueExternalResultsInner,
    _$SocialCueExternalResultsInner,
  ];

  @override
  final String wireName = r'SocialCueExternalResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueExternalResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'queries';
    yield serializers.serialize(
      object.queries,
      specifiedType: const FullType(int),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(int),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueExternalResultsInner object, {
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
    required SocialCueExternalResultsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'queries':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.queries = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.items = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueExternalResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueExternalResultsInnerBuilder();
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
