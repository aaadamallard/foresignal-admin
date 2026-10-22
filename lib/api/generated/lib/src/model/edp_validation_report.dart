//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_item_rejection_schema_errors_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_item_rejection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_validation_report.g.dart';

/// Dry-run validation result
///
/// Properties:
/// * [manifestValid]
/// * [manifestErrors]
/// * [breakingChanges]
/// * [itemsValid]
/// * [rejected]
@BuiltValue()
abstract class EdpValidationReport
    implements Built<EdpValidationReport, EdpValidationReportBuilder> {
  @BuiltValueField(wireName: r'manifestValid')
  bool? get manifestValid;

  @BuiltValueField(wireName: r'manifestErrors')
  BuiltList<EdpItemRejectionSchemaErrorsInner>? get manifestErrors;

  @BuiltValueField(wireName: r'breakingChanges')
  BuiltList<String>? get breakingChanges;

  @BuiltValueField(wireName: r'itemsValid')
  int? get itemsValid;

  @BuiltValueField(wireName: r'rejected')
  BuiltList<EdpItemRejection>? get rejected;

  EdpValidationReport._();

  factory EdpValidationReport([void updates(EdpValidationReportBuilder b)]) =
      _$EdpValidationReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpValidationReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpValidationReport> get serializer =>
      _$EdpValidationReportSerializer();
}

class _$EdpValidationReportSerializer
    implements PrimitiveSerializer<EdpValidationReport> {
  @override
  final Iterable<Type> types = const [
    EdpValidationReport,
    _$EdpValidationReport,
  ];

  @override
  final String wireName = r'EdpValidationReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpValidationReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.manifestValid != null) {
      yield r'manifestValid';
      yield serializers.serialize(
        object.manifestValid,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.manifestErrors != null) {
      yield r'manifestErrors';
      yield serializers.serialize(
        object.manifestErrors,
        specifiedType: const FullType(BuiltList, [
          FullType(EdpItemRejectionSchemaErrorsInner),
        ]),
      );
    }
    if (object.breakingChanges != null) {
      yield r'breakingChanges';
      yield serializers.serialize(
        object.breakingChanges,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.itemsValid != null) {
      yield r'itemsValid';
      yield serializers.serialize(
        object.itemsValid,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(BuiltList, [FullType(EdpItemRejection)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpValidationReport object, {
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
    required EdpValidationReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'manifestValid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.manifestValid = valueDes;
          break;
        case r'manifestErrors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EdpItemRejectionSchemaErrorsInner),
                    ]),
                  )
                  as BuiltList<EdpItemRejectionSchemaErrorsInner>?;
          if (valueDes == null) continue;
          result.manifestErrors.replace(valueDes);
          break;
        case r'breakingChanges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.breakingChanges.replace(valueDes);
          break;
        case r'itemsValid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.itemsValid = valueDes;
          break;
        case r'rejected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EdpItemRejection),
                    ]),
                  )
                  as BuiltList<EdpItemRejection>?;
          if (valueDes == null) continue;
          result.rejected.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpValidationReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpValidationReportBuilder();
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
