//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/purge_report_citing_documents.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'purge_report.g.dart';

/// Outcome of an entity purge (039). Messages already delivered to external channels cannot be recalled.
///
/// Properties:
/// * [tombstoneSeq]
/// * [versionsDeleted]
/// * [alertsRedacted]
/// * [alertsDeleted]
/// * [embeddingsDeleted]
/// * [notificationsRedacted]
/// * [citingDocuments]
@BuiltValue()
abstract class PurgeReport implements Built<PurgeReport, PurgeReportBuilder> {
  @BuiltValueField(wireName: r'tombstoneSeq')
  int get tombstoneSeq;

  @BuiltValueField(wireName: r'versionsDeleted')
  int get versionsDeleted;

  @BuiltValueField(wireName: r'alertsRedacted')
  int? get alertsRedacted;

  @BuiltValueField(wireName: r'alertsDeleted')
  int? get alertsDeleted;

  @BuiltValueField(wireName: r'embeddingsDeleted')
  int? get embeddingsDeleted;

  @BuiltValueField(wireName: r'notificationsRedacted')
  int? get notificationsRedacted;

  @BuiltValueField(wireName: r'citingDocuments')
  PurgeReportCitingDocuments? get citingDocuments;

  PurgeReport._();

  factory PurgeReport([void updates(PurgeReportBuilder b)]) = _$PurgeReport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PurgeReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PurgeReport> get serializer => _$PurgeReportSerializer();
}

class _$PurgeReportSerializer implements PrimitiveSerializer<PurgeReport> {
  @override
  final Iterable<Type> types = const [PurgeReport, _$PurgeReport];

  @override
  final String wireName = r'PurgeReport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PurgeReport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tombstoneSeq';
    yield serializers.serialize(
      object.tombstoneSeq,
      specifiedType: const FullType(int),
    );
    yield r'versionsDeleted';
    yield serializers.serialize(
      object.versionsDeleted,
      specifiedType: const FullType(int),
    );
    if (object.alertsRedacted != null) {
      yield r'alertsRedacted';
      yield serializers.serialize(
        object.alertsRedacted,
        specifiedType: const FullType(int),
      );
    }
    if (object.alertsDeleted != null) {
      yield r'alertsDeleted';
      yield serializers.serialize(
        object.alertsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.embeddingsDeleted != null) {
      yield r'embeddingsDeleted';
      yield serializers.serialize(
        object.embeddingsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.notificationsRedacted != null) {
      yield r'notificationsRedacted';
      yield serializers.serialize(
        object.notificationsRedacted,
        specifiedType: const FullType(int),
      );
    }
    if (object.citingDocuments != null) {
      yield r'citingDocuments';
      yield serializers.serialize(
        object.citingDocuments,
        specifiedType: const FullType(PurgeReportCitingDocuments),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PurgeReport object, {
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
    required PurgeReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tombstoneSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tombstoneSeq = valueDes;
          break;
        case r'versionsDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.versionsDeleted = valueDes;
          break;
        case r'alertsRedacted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertsRedacted = valueDes;
          break;
        case r'alertsDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertsDeleted = valueDes;
          break;
        case r'embeddingsDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.embeddingsDeleted = valueDes;
          break;
        case r'notificationsRedacted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.notificationsRedacted = valueDes;
          break;
        case r'citingDocuments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PurgeReportCitingDocuments),
          ) as PurgeReportCitingDocuments?;
          if (valueDes == null) continue;
          result.citingDocuments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PurgeReport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurgeReportBuilder();
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
