//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/report.dart';
import 'package:foresignal_api/src/model/report_bundle_attachments_inner.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_bundle.g.dart';

/// JSON bundle rendition: the report plus every cited envelope and snapshot, attachments by hash
///
/// Properties:
/// * [report]
/// * [revision]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [envelopes]
/// * [snapshots] - Pinned ref → snapshot
/// * [attachments]
/// * [manifestId] - ULID identifier
/// * [missing] - Cited references the publisher could not resolve (missing or not visible), left out of the revision
@BuiltValue()
abstract class ReportBundle
    implements Built<ReportBundle, ReportBundleBuilder> {
  @BuiltValueField(wireName: r'report')
  Report get report;

  @BuiltValueField(wireName: r'revision')
  int get revision;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'envelopes')
  BuiltList<ObjectEnvelope> get envelopes;

  /// Pinned ref → snapshot
  @BuiltValueField(wireName: r'snapshots')
  BuiltMap<String, JsonObject?>? get snapshots;

  @BuiltValueField(wireName: r'attachments')
  BuiltList<ReportBundleAttachmentsInner>? get attachments;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  /// Cited references the publisher could not resolve (missing or not visible), left out of the revision
  @BuiltValueField(wireName: r'missing')
  BuiltList<String>? get missing;

  ReportBundle._();

  factory ReportBundle([void updates(ReportBundleBuilder b)]) = _$ReportBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportBundle> get serializer => _$ReportBundleSerializer();
}

class _$ReportBundleSerializer implements PrimitiveSerializer<ReportBundle> {
  @override
  final Iterable<Type> types = const [ReportBundle, _$ReportBundle];

  @override
  final String wireName = r'ReportBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'report';
    yield serializers.serialize(
      object.report,
      specifiedType: const FullType(Report),
    );
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'envelopes';
    yield serializers.serialize(
      object.envelopes,
      specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
    );
    if (object.snapshots != null) {
      yield r'snapshots';
      yield serializers.serialize(
        object.snapshots,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(BuiltList, [
          FullType(ReportBundleAttachmentsInner),
        ]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.missing != null) {
      yield r'missing';
      yield serializers.serialize(
        object.missing,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportBundle object, {
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
    required ReportBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'report':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Report),
                  )
                  as Report;
          result.report.replace(valueDes);
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.revision = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'envelopes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>;
          result.envelopes.replace(valueDes);
          break;
        case r'snapshots':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.snapshots.replace(valueDes);
          break;
        case r'attachments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ReportBundleAttachmentsInner),
                    ]),
                  )
                  as BuiltList<ReportBundleAttachmentsInner>?;
          if (valueDes == null) continue;
          result.attachments.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'missing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.missing.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBundleBuilder();
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
