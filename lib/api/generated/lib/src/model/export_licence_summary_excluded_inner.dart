//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_licence_summary_excluded_inner.g.dart';

/// A source excluded by the egress guard
///
/// Properties:
/// * [sourceId]
/// * [reason]
@BuiltValue()
abstract class ExportLicenceSummaryExcludedInner
    implements
        Built<
          ExportLicenceSummaryExcludedInner,
          ExportLicenceSummaryExcludedInnerBuilder
        > {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'reason')
  ExportLicenceSummaryExcludedInnerReasonEnum get reason;
  // enum reasonEnum {  licence-forbidden,  licence-local-only,  private,  };

  ExportLicenceSummaryExcludedInner._();

  factory ExportLicenceSummaryExcludedInner([
    void updates(ExportLicenceSummaryExcludedInnerBuilder b),
  ]) = _$ExportLicenceSummaryExcludedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportLicenceSummaryExcludedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportLicenceSummaryExcludedInner> get serializer =>
      _$ExportLicenceSummaryExcludedInnerSerializer();
}

class _$ExportLicenceSummaryExcludedInnerSerializer
    implements PrimitiveSerializer<ExportLicenceSummaryExcludedInner> {
  @override
  final Iterable<Type> types = const [
    ExportLicenceSummaryExcludedInner,
    _$ExportLicenceSummaryExcludedInner,
  ];

  @override
  final String wireName = r'ExportLicenceSummaryExcludedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportLicenceSummaryExcludedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(
        ExportLicenceSummaryExcludedInnerReasonEnum,
      ),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportLicenceSummaryExcludedInner object, {
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
    required ExportLicenceSummaryExcludedInnerBuilder result,
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
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ExportLicenceSummaryExcludedInnerReasonEnum,
                    ),
                  )
                  as ExportLicenceSummaryExcludedInnerReasonEnum;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportLicenceSummaryExcludedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportLicenceSummaryExcludedInnerBuilder();
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

class ExportLicenceSummaryExcludedInnerReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'licence-forbidden')
  static const ExportLicenceSummaryExcludedInnerReasonEnum licenceForbidden =
      _$exportLicenceSummaryExcludedInnerReasonEnum_licenceForbidden;
  @BuiltValueEnumConst(wireName: r'licence-local-only')
  static const ExportLicenceSummaryExcludedInnerReasonEnum licenceLocalOnly =
      _$exportLicenceSummaryExcludedInnerReasonEnum_licenceLocalOnly;
  @BuiltValueEnumConst(wireName: r'private')
  static const ExportLicenceSummaryExcludedInnerReasonEnum private =
      _$exportLicenceSummaryExcludedInnerReasonEnum_private;

  static Serializer<ExportLicenceSummaryExcludedInnerReasonEnum>
  get serializer => _$exportLicenceSummaryExcludedInnerReasonEnumSerializer;

  const ExportLicenceSummaryExcludedInnerReasonEnum._(String name)
    : super(name);

  static BuiltSet<ExportLicenceSummaryExcludedInnerReasonEnum> get values =>
      _$exportLicenceSummaryExcludedInnerReasonEnumValues;
  static ExportLicenceSummaryExcludedInnerReasonEnum valueOf(String name) =>
      _$exportLicenceSummaryExcludedInnerReasonEnumValueOf(name);
}
