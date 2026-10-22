//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_page.g.dart';

/// RecordPage
///
/// Properties:
/// * [items]
/// * [nextCursor]
/// * [watermarkSeq] - ChangeBus.lastPublishedSeq() read before the query; open SSE with after=watermarkSeq
/// * [asOfSeq] - Echo of the pinned snapshot seq (asOfSeq or order=id)
/// * [asOf] - Echo of asOf
/// * [approximate] - asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
/// * [horizon] - asOf only: earliest supported T over the involved sources
/// * [attributions] - Aggregated attributions of the records in this page
/// * [licenceFiltered] - Records removed by the licence policy
@BuiltValue()
abstract class RecordPage implements Built<RecordPage, RecordPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Record> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  /// ChangeBus.lastPublishedSeq() read before the query; open SSE with after=watermarkSeq
  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  /// Echo of the pinned snapshot seq (asOfSeq or order=id)
  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  /// Echo of asOf
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  /// asOf only: earliest supported T over the involved sources
  @BuiltValueField(wireName: r'horizon')
  DateTime? get horizon;

  /// Aggregated attributions of the records in this page
  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  /// Records removed by the licence policy
  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  RecordPage._();

  factory RecordPage([void updates(RecordPageBuilder b)]) = _$RecordPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordPage> get serializer => _$RecordPageSerializer();
}

class _$RecordPageSerializer implements PrimitiveSerializer<RecordPage> {
  @override
  final Iterable<Type> types = const [RecordPage, _$RecordPage];

  @override
  final String wireName = r'RecordPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Record)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.attributions != null) {
      yield r'attributions';
      yield serializers.serialize(
        object.attributions,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.licenceFiltered != null) {
      yield r'licenceFiltered';
      yield serializers.serialize(
        object.licenceFiltered,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordPage object, {
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
    required RecordPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Record)]),
          ) as BuiltList<Record>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'asOfSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'approximate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'horizon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'attributions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'licenceFiltered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.licenceFiltered = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordPageBuilder();
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
