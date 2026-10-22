//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/mapping_warning.dart';
import 'package:foresignal_api/src/model/record_mapping.dart';
import 'package:foresignal_api/src/model/mapping_preview_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_suggest_result.g.dart';

/// LLM-drafted mapping, validated and previewed; never stored or applied (059)
///
/// Properties:
/// * [draft]
/// * [explanation]
/// * [warnings]
/// * [preview]
/// * [repairRounds]
/// * [provider]
/// * [model]
@BuiltValue()
abstract class MappingSuggestResult
    implements Built<MappingSuggestResult, MappingSuggestResultBuilder> {
  @BuiltValueField(wireName: r'draft')
  RecordMapping get draft;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<MappingWarning> get warnings;

  @BuiltValueField(wireName: r'preview')
  MappingPreviewResult? get preview;

  @BuiltValueField(wireName: r'repairRounds')
  int? get repairRounds;

  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'model')
  String get model;

  MappingSuggestResult._();

  factory MappingSuggestResult([void updates(MappingSuggestResultBuilder b)]) =
      _$MappingSuggestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingSuggestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingSuggestResult> get serializer =>
      _$MappingSuggestResultSerializer();
}

class _$MappingSuggestResultSerializer
    implements PrimitiveSerializer<MappingSuggestResult> {
  @override
  final Iterable<Type> types = const [
    MappingSuggestResult,
    _$MappingSuggestResult,
  ];

  @override
  final String wireName = r'MappingSuggestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingSuggestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'draft';
    yield serializers.serialize(
      object.draft,
      specifiedType: const FullType(RecordMapping),
    );
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(MappingWarning)]),
    );
    if (object.preview != null) {
      yield r'preview';
      yield serializers.serialize(
        object.preview,
        specifiedType: const FullType(MappingPreviewResult),
      );
    }
    if (object.repairRounds != null) {
      yield r'repairRounds';
      yield serializers.serialize(
        object.repairRounds,
        specifiedType: const FullType(int),
      );
    }
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingSuggestResult object, {
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
    required MappingSuggestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'draft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RecordMapping),
                  )
                  as RecordMapping;
          result.draft.replace(valueDes);
          break;
        case r'explanation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.explanation = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MappingWarning),
                    ]),
                  )
                  as BuiltList<MappingWarning>;
          result.warnings.replace(valueDes);
          break;
        case r'preview':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      MappingPreviewResult,
                    ),
                  )
                  as MappingPreviewResult?;
          if (valueDes == null) continue;
          result.preview.replace(valueDes);
          break;
        case r'repairRounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.repairRounds = valueDes;
          break;
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.provider = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.model = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingSuggestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingSuggestResultBuilder();
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
