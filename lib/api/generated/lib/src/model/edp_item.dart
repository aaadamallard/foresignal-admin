//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_delete_item.dart';
import 'package:foresignal_api/src/model/edp_forecast_item.dart';
import 'package:foresignal_api/src/model/edp_geometry.dart';
import 'package:foresignal_api/src/model/edp_document_item.dart';
import 'package:foresignal_api/src/model/edp_forecast_item_question.dart';
import 'package:foresignal_api/src/model/edp_document_item_media_inner.dart';
import 'package:foresignal_api/src/model/edp_event_item.dart';
import 'package:foresignal_api/src/model/edp_status_item.dart';
import 'package:foresignal_api/src/model/edp_feature_item.dart';
import 'package:foresignal_api/src/model/edp_observation_item.dart';
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_origin.dart';
import 'package:foresignal_api/src/model/edp_document_item_author.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'edp_item.g.dart';

/// One EDP item (one variant per type)
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
/// * [geometry]
/// * [eventTime]
/// * [validUntil]
/// * [origin]
/// * [upstreamEventId]
/// * [seriesKey]
/// * [t] - Period or instant: YYYY, YYYY-Qn, YYYY-MM, YYYY-Www (ISO week), YYYY-MM-DD, or an RFC 3339 timestamp with offset. Periods are UTC intervals [start, end); one series uses one granularity.
/// * [value]
/// * [knownAt] - Provider-claimed availability time; stored as given. Foresignal uses max(knownAt, its own receipt time) for as-of and look-ahead rules.
/// * [unit]
/// * [documentType]
/// * [text]
/// * [title]
/// * [url]
/// * [author]
/// * [language]
/// * [publishedAt]
/// * [about] - Foresignal object references or URLs
/// * [media]
/// * [engagement]
/// * [question]
/// * [questionRef]
/// * [probability]
/// * [quantiles]
/// * [madeAt] - Provider-claimed time; the recorded made_at is max(madeAt, receipt time)
/// * [health]
/// * [message]
@BuiltValue()
abstract class EdpItem implements Built<EdpItem, EdpItemBuilder> {
  /// One Of [EdpDeleteItem], [EdpDocumentItem], [EdpEventItem], [EdpFeatureItem], [EdpForecastItem], [EdpObservationItem], [EdpStatusItem]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'delete': EdpDeleteItem,
    r'document': EdpDocumentItem,
    r'event': EdpEventItem,
    r'feature': EdpFeatureItem,
    r'forecast': EdpForecastItem,
    r'observation': EdpObservationItem,
    r'status': EdpStatusItem,
  };

  EdpItem._();

  factory EdpItem([void updates(EdpItemBuilder b)]) = _$EdpItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpItem> get serializer => _$EdpItemSerializer();
}

extension EdpItemDiscriminatorExt on EdpItem {
  String? get discriminatorValue {
    if (this is EdpDeleteItem) {
      return r'delete';
    }
    if (this is EdpDocumentItem) {
      return r'document';
    }
    if (this is EdpEventItem) {
      return r'event';
    }
    if (this is EdpFeatureItem) {
      return r'feature';
    }
    if (this is EdpForecastItem) {
      return r'forecast';
    }
    if (this is EdpObservationItem) {
      return r'observation';
    }
    if (this is EdpStatusItem) {
      return r'status';
    }
    return null;
  }
}

extension EdpItemBuilderDiscriminatorExt on EdpItemBuilder {
  String? get discriminatorValue {
    if (this is EdpDeleteItemBuilder) {
      return r'delete';
    }
    if (this is EdpDocumentItemBuilder) {
      return r'document';
    }
    if (this is EdpEventItemBuilder) {
      return r'event';
    }
    if (this is EdpFeatureItemBuilder) {
      return r'feature';
    }
    if (this is EdpForecastItemBuilder) {
      return r'forecast';
    }
    if (this is EdpObservationItemBuilder) {
      return r'observation';
    }
    if (this is EdpStatusItemBuilder) {
      return r'status';
    }
    return null;
  }
}

class _$EdpItemSerializer implements PrimitiveSerializer<EdpItem> {
  @override
  final Iterable<Type> types = const [EdpItem, _$EdpItem];

  @override
  final String wireName = r'EdpItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    EdpItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  EdpItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpItemBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(EdpItem.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      EdpDeleteItem,
      EdpDocumentItem,
      EdpEventItem,
      EdpFeatureItem,
      EdpForecastItem,
      EdpObservationItem,
      EdpStatusItem,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'delete':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpDeleteItem),
                )
                as EdpDeleteItem;
        oneOfType = EdpDeleteItem;
        break;
      case r'document':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpDocumentItem),
                )
                as EdpDocumentItem;
        oneOfType = EdpDocumentItem;
        break;
      case r'event':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpEventItem),
                )
                as EdpEventItem;
        oneOfType = EdpEventItem;
        break;
      case r'feature':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpFeatureItem),
                )
                as EdpFeatureItem;
        oneOfType = EdpFeatureItem;
        break;
      case r'forecast':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpForecastItem),
                )
                as EdpForecastItem;
        oneOfType = EdpForecastItem;
        break;
      case r'observation':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpObservationItem),
                )
                as EdpObservationItem;
        oneOfType = EdpObservationItem;
        break;
      case r'status':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdpStatusItem),
                )
                as EdpStatusItem;
        oneOfType = EdpStatusItem;
        break;
      default:
        throw UnsupportedError(
          "Couldn't deserialize oneOf for the discriminator value: ${discValue}",
        );
    }
    result.oneOf = OneOfDynamic(
      typeIndex: oneOfTypes.indexOf(oneOfType),
      types: oneOfTypes,
      value: oneOfResult,
    );
    return result.build();
  }
}

class EdpItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'feature')
  static const EdpItemTypeEnum feature = _$edpItemTypeEnum_feature;
  @BuiltValueEnumConst(wireName: r'event')
  static const EdpItemTypeEnum event = _$edpItemTypeEnum_event;
  @BuiltValueEnumConst(wireName: r'observation')
  static const EdpItemTypeEnum observation = _$edpItemTypeEnum_observation;
  @BuiltValueEnumConst(wireName: r'document')
  static const EdpItemTypeEnum document = _$edpItemTypeEnum_document;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const EdpItemTypeEnum forecast = _$edpItemTypeEnum_forecast;
  @BuiltValueEnumConst(wireName: r'delete')
  static const EdpItemTypeEnum delete = _$edpItemTypeEnum_delete;
  @BuiltValueEnumConst(wireName: r'status')
  static const EdpItemTypeEnum status = _$edpItemTypeEnum_status;

  static Serializer<EdpItemTypeEnum> get serializer =>
      _$edpItemTypeEnumSerializer;

  const EdpItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpItemTypeEnum> get values => _$edpItemTypeEnumValues;
  static EdpItemTypeEnum valueOf(String name) => _$edpItemTypeEnumValueOf(name);
}

class EdpItemDocumentTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social-post')
  static const EdpItemDocumentTypeEnum socialPost =
      _$edpItemDocumentTypeEnum_socialPost;
  @BuiltValueEnumConst(wireName: r'article')
  static const EdpItemDocumentTypeEnum article =
      _$edpItemDocumentTypeEnum_article;
  @BuiltValueEnumConst(wireName: r'report')
  static const EdpItemDocumentTypeEnum report =
      _$edpItemDocumentTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'transcript')
  static const EdpItemDocumentTypeEnum transcript =
      _$edpItemDocumentTypeEnum_transcript;
  @BuiltValueEnumConst(wireName: r'note')
  static const EdpItemDocumentTypeEnum note = _$edpItemDocumentTypeEnum_note;

  static Serializer<EdpItemDocumentTypeEnum> get serializer =>
      _$edpItemDocumentTypeEnumSerializer;

  const EdpItemDocumentTypeEnum._(String name) : super(name);

  static BuiltSet<EdpItemDocumentTypeEnum> get values =>
      _$edpItemDocumentTypeEnumValues;
  static EdpItemDocumentTypeEnum valueOf(String name) =>
      _$edpItemDocumentTypeEnumValueOf(name);
}

class EdpItemHealthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const EdpItemHealthEnum ok = _$edpItemHealthEnum_ok;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const EdpItemHealthEnum degraded = _$edpItemHealthEnum_degraded;
  @BuiltValueEnumConst(wireName: r'blocked')
  static const EdpItemHealthEnum blocked = _$edpItemHealthEnum_blocked;
  @BuiltValueEnumConst(wireName: r'layout-changed')
  static const EdpItemHealthEnum layoutChanged =
      _$edpItemHealthEnum_layoutChanged;
  @BuiltValueEnumConst(wireName: r'geo-restricted')
  static const EdpItemHealthEnum geoRestricted =
      _$edpItemHealthEnum_geoRestricted;

  static Serializer<EdpItemHealthEnum> get serializer =>
      _$edpItemHealthEnumSerializer;

  const EdpItemHealthEnum._(String name) : super(name);

  static BuiltSet<EdpItemHealthEnum> get values => _$edpItemHealthEnumValues;
  static EdpItemHealthEnum valueOf(String name) =>
      _$edpItemHealthEnumValueOf(name);
}
