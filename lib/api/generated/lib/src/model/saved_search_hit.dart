//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_hit.g.dart';

/// One saved-search match
///
/// Properties:
/// * [envelope]
/// * [score]
/// * [matchedBy]
@BuiltValue()
abstract class SavedSearchHit
    implements Built<SavedSearchHit, SavedSearchHitBuilder> {
  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope get envelope;

  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'matchedBy')
  SavedSearchHitMatchedByEnum? get matchedBy;
  // enum matchedByEnum {  text,  semantic,  hybrid,  filter,  };

  SavedSearchHit._();

  factory SavedSearchHit([void updates(SavedSearchHitBuilder b)]) =
      _$SavedSearchHit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchHitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchHit> get serializer =>
      _$SavedSearchHitSerializer();
}

class _$SavedSearchHitSerializer
    implements PrimitiveSerializer<SavedSearchHit> {
  @override
  final Iterable<Type> types = const [SavedSearchHit, _$SavedSearchHit];

  @override
  final String wireName = r'SavedSearchHit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchHit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'envelope';
    yield serializers.serialize(
      object.envelope,
      specifiedType: const FullType(ObjectEnvelope),
    );
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.matchedBy != null) {
      yield r'matchedBy';
      yield serializers.serialize(
        object.matchedBy,
        specifiedType: const FullType(SavedSearchHitMatchedByEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchHit object, {
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
    required SavedSearchHitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'envelope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectEnvelope),
          ) as ObjectEnvelope;
          result.envelope.replace(valueDes);
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'matchedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SavedSearchHitMatchedByEnum),
          ) as SavedSearchHitMatchedByEnum?;
          if (valueDes == null) continue;
          result.matchedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchHit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchHitBuilder();
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

class SavedSearchHitMatchedByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'text')
  static const SavedSearchHitMatchedByEnum text =
      _$savedSearchHitMatchedByEnum_text;
  @BuiltValueEnumConst(wireName: r'semantic')
  static const SavedSearchHitMatchedByEnum semantic =
      _$savedSearchHitMatchedByEnum_semantic;
  @BuiltValueEnumConst(wireName: r'hybrid')
  static const SavedSearchHitMatchedByEnum hybrid =
      _$savedSearchHitMatchedByEnum_hybrid;
  @BuiltValueEnumConst(wireName: r'filter')
  static const SavedSearchHitMatchedByEnum filter =
      _$savedSearchHitMatchedByEnum_filter;

  static Serializer<SavedSearchHitMatchedByEnum> get serializer =>
      _$savedSearchHitMatchedByEnumSerializer;

  const SavedSearchHitMatchedByEnum._(String name) : super(name);

  static BuiltSet<SavedSearchHitMatchedByEnum> get values =>
      _$savedSearchHitMatchedByEnumValues;
  static SavedSearchHitMatchedByEnum valueOf(String name) =>
      _$savedSearchHitMatchedByEnumValueOf(name);
}
