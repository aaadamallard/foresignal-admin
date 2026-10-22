//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/change.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_page.g.dart';

/// ChangePage
///
/// Properties:
/// * [items]
/// * [lastSeq] - Pass as `after` next time. When `hasMore` is false it is at least the `watermarkSeq` read before the query, so a filtered client skips past seqs that matched nothing
/// * [hasMore]
/// * [watermarkSeq] - ChangeBus.lastPublishedSeq() at query time
/// * [purgeHorizon] - Max RetentionState.purgeSeq over the filtered sources; after < purgeHorizon → 410 RESYNC_REQUIRED
/// * [attributions]
/// * [licenceFiltered]
@BuiltValue()
abstract class ChangePage implements Built<ChangePage, ChangePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Change> get items;

  /// Pass as `after` next time. When `hasMore` is false it is at least the `watermarkSeq` read before the query, so a filtered client skips past seqs that matched nothing
  @BuiltValueField(wireName: r'lastSeq')
  int get lastSeq;

  @BuiltValueField(wireName: r'hasMore')
  bool get hasMore;

  /// ChangeBus.lastPublishedSeq() at query time
  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  /// Max RetentionState.purgeSeq over the filtered sources; after < purgeHorizon → 410 RESYNC_REQUIRED
  @BuiltValueField(wireName: r'purgeHorizon')
  int? get purgeHorizon;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  ChangePage._();

  factory ChangePage([void updates(ChangePageBuilder b)]) = _$ChangePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangePage> get serializer => _$ChangePageSerializer();
}

class _$ChangePageSerializer implements PrimitiveSerializer<ChangePage> {
  @override
  final Iterable<Type> types = const [ChangePage, _$ChangePage];

  @override
  final String wireName = r'ChangePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Change)]),
    );
    yield r'lastSeq';
    yield serializers.serialize(
      object.lastSeq,
      specifiedType: const FullType(int),
    );
    yield r'hasMore';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.purgeHorizon != null) {
      yield r'purgeHorizon';
      yield serializers.serialize(
        object.purgeHorizon,
        specifiedType: const FullType(int),
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
    ChangePage object, {
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
    required ChangePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Change)]),
          ) as BuiltList<Change>;
          result.items.replace(valueDes);
          break;
        case r'lastSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastSeq = valueDes;
          break;
        case r'hasMore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'purgeHorizon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.purgeHorizon = valueDes;
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
  ChangePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangePageBuilder();
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
