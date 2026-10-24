//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_relevance_analysis_shared.g.dart';

/// What two or more of the sources sent to the model declare
///
/// Properties:
/// * [kinds]
/// * [entityTypes] - Entity identity types (descriptor entityKeys), such as icao24 or mmsi
@BuiltValue()
abstract class SourceRelevanceAnalysisShared
    implements
        Built<
          SourceRelevanceAnalysisShared,
          SourceRelevanceAnalysisSharedBuilder
        > {
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  /// Entity identity types (descriptor entityKeys), such as icao24 or mmsi
  @BuiltValueField(wireName: r'entityTypes')
  BuiltList<String> get entityTypes;

  SourceRelevanceAnalysisShared._();

  factory SourceRelevanceAnalysisShared([
    void updates(SourceRelevanceAnalysisSharedBuilder b),
  ]) = _$SourceRelevanceAnalysisShared;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceRelevanceAnalysisSharedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceRelevanceAnalysisShared> get serializer =>
      _$SourceRelevanceAnalysisSharedSerializer();
}

class _$SourceRelevanceAnalysisSharedSerializer
    implements PrimitiveSerializer<SourceRelevanceAnalysisShared> {
  @override
  final Iterable<Type> types = const [
    SourceRelevanceAnalysisShared,
    _$SourceRelevanceAnalysisShared,
  ];

  @override
  final String wireName = r'SourceRelevanceAnalysisShared';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceRelevanceAnalysisShared object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'entityTypes';
    yield serializers.serialize(
      object.entityTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceRelevanceAnalysisShared object, {
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
    required SourceRelevanceAnalysisSharedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'entityTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.entityTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceRelevanceAnalysisShared deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceRelevanceAnalysisSharedBuilder();
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
