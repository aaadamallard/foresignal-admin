//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/export_licence_summary_excluded_inner.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/export_licence_summary_licences_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_licence_summary.g.dart';

/// Licence sidecar summary of an export, snapshot, pack or archive file (111)
///
/// Properties:
/// * [licences]
/// * [attributions]
/// * [personalUseOnly]
/// * [personalUseSources] - Sources included only because personalUse=true
/// * [excluded]
@BuiltValue()
abstract class ExportLicenceSummary
    implements Built<ExportLicenceSummary, ExportLicenceSummaryBuilder> {
  @BuiltValueField(wireName: r'licences')
  BuiltList<ExportLicenceSummaryLicencesInner> get licences;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution> get attributions;

  @BuiltValueField(wireName: r'personalUseOnly')
  bool get personalUseOnly;

  /// Sources included only because personalUse=true
  @BuiltValueField(wireName: r'personalUseSources')
  BuiltList<String>? get personalUseSources;

  @BuiltValueField(wireName: r'excluded')
  BuiltList<ExportLicenceSummaryExcludedInner>? get excluded;

  ExportLicenceSummary._();

  factory ExportLicenceSummary([void updates(ExportLicenceSummaryBuilder b)]) =
      _$ExportLicenceSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportLicenceSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportLicenceSummary> get serializer =>
      _$ExportLicenceSummarySerializer();
}

class _$ExportLicenceSummarySerializer
    implements PrimitiveSerializer<ExportLicenceSummary> {
  @override
  final Iterable<Type> types = const [
    ExportLicenceSummary,
    _$ExportLicenceSummary,
  ];

  @override
  final String wireName = r'ExportLicenceSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportLicenceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'licences';
    yield serializers.serialize(
      object.licences,
      specifiedType: const FullType(BuiltList, [
        FullType(ExportLicenceSummaryLicencesInner),
      ]),
    );
    yield r'attributions';
    yield serializers.serialize(
      object.attributions,
      specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
    );
    yield r'personalUseOnly';
    yield serializers.serialize(
      object.personalUseOnly,
      specifiedType: const FullType(bool),
    );
    if (object.personalUseSources != null) {
      yield r'personalUseSources';
      yield serializers.serialize(
        object.personalUseSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.excluded != null) {
      yield r'excluded';
      yield serializers.serialize(
        object.excluded,
        specifiedType: const FullType(BuiltList, [
          FullType(ExportLicenceSummaryExcludedInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportLicenceSummary object, {
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
    required ExportLicenceSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'licences':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ExportLicenceSummaryLicencesInner),
                    ]),
                  )
                  as BuiltList<ExportLicenceSummaryLicencesInner>;
          result.licences.replace(valueDes);
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>;
          result.attributions.replace(valueDes);
          break;
        case r'personalUseOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.personalUseOnly = valueDes;
          break;
        case r'personalUseSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.personalUseSources.replace(valueDes);
          break;
        case r'excluded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ExportLicenceSummaryExcludedInner),
                    ]),
                  )
                  as BuiltList<ExportLicenceSummaryExcludedInner>?;
          if (valueDes == null) continue;
          result.excluded.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportLicenceSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportLicenceSummaryBuilder();
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
