//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'purge_report_citing_documents.g.dart';

/// Documents citing the entity (counted, not edited)
///
/// Properties:
/// * [askMessages]
/// * [briefingRuns]
@BuiltValue()
abstract class PurgeReportCitingDocuments
    implements
        Built<PurgeReportCitingDocuments, PurgeReportCitingDocumentsBuilder> {
  @BuiltValueField(wireName: r'askMessages')
  int? get askMessages;

  @BuiltValueField(wireName: r'briefingRuns')
  int? get briefingRuns;

  PurgeReportCitingDocuments._();

  factory PurgeReportCitingDocuments([
    void updates(PurgeReportCitingDocumentsBuilder b),
  ]) = _$PurgeReportCitingDocuments;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PurgeReportCitingDocumentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PurgeReportCitingDocuments> get serializer =>
      _$PurgeReportCitingDocumentsSerializer();
}

class _$PurgeReportCitingDocumentsSerializer
    implements PrimitiveSerializer<PurgeReportCitingDocuments> {
  @override
  final Iterable<Type> types = const [
    PurgeReportCitingDocuments,
    _$PurgeReportCitingDocuments,
  ];

  @override
  final String wireName = r'PurgeReportCitingDocuments';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PurgeReportCitingDocuments object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.askMessages != null) {
      yield r'askMessages';
      yield serializers.serialize(
        object.askMessages,
        specifiedType: const FullType(int),
      );
    }
    if (object.briefingRuns != null) {
      yield r'briefingRuns';
      yield serializers.serialize(
        object.briefingRuns,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PurgeReportCitingDocuments object, {
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
    required PurgeReportCitingDocumentsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'askMessages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.askMessages = valueDes;
          break;
        case r'briefingRuns':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.briefingRuns = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PurgeReportCitingDocuments deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurgeReportCitingDocumentsBuilder();
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
