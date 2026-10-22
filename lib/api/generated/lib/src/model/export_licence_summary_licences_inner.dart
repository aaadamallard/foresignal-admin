//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/licence_terms.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_licence_summary_licences_inner.g.dart';

/// Rows per licence
///
/// Properties:
/// * [terms]
/// * [sources]
/// * [rows]
@BuiltValue()
abstract class ExportLicenceSummaryLicencesInner
    implements
        Built<ExportLicenceSummaryLicencesInner,
            ExportLicenceSummaryLicencesInnerBuilder> {
  @BuiltValueField(wireName: r'terms')
  LicenceTerms get terms;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String> get sources;

  @BuiltValueField(wireName: r'rows')
  int get rows;

  ExportLicenceSummaryLicencesInner._();

  factory ExportLicenceSummaryLicencesInner(
          [void updates(ExportLicenceSummaryLicencesInnerBuilder b)]) =
      _$ExportLicenceSummaryLicencesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportLicenceSummaryLicencesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportLicenceSummaryLicencesInner> get serializer =>
      _$ExportLicenceSummaryLicencesInnerSerializer();
}

class _$ExportLicenceSummaryLicencesInnerSerializer
    implements PrimitiveSerializer<ExportLicenceSummaryLicencesInner> {
  @override
  final Iterable<Type> types = const [
    ExportLicenceSummaryLicencesInner,
    _$ExportLicenceSummaryLicencesInner
  ];

  @override
  final String wireName = r'ExportLicenceSummaryLicencesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportLicenceSummaryLicencesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'terms';
    yield serializers.serialize(
      object.terms,
      specifiedType: const FullType(LicenceTerms),
    );
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportLicenceSummaryLicencesInner object, {
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
    required ExportLicenceSummaryLicencesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LicenceTerms),
          ) as LicenceTerms;
          result.terms.replace(valueDes);
          break;
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sources.replace(valueDes);
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rows = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportLicenceSummaryLicencesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportLicenceSummaryLicencesInnerBuilder();
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
