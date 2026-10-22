//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_page.g.dart';

/// A page of record versions from /v1/history with licence filtering and attributions (109)
///
/// Properties:
/// * [items] - Versions ordered by the selected timeField
/// * [nextCursor]
/// * [attributions]
/// * [licenceFiltered] - Records removed by the licence policy
@BuiltValue()
abstract class HistoryPage implements Built<HistoryPage, HistoryPageBuilder> {
  /// Versions ordered by the selected timeField
  @BuiltValueField(wireName: r'items')
  BuiltList<RecordVersion> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution>? get attributions;

  /// Records removed by the licence policy
  @BuiltValueField(wireName: r'licenceFiltered')
  int? get licenceFiltered;

  HistoryPage._();

  factory HistoryPage([void updates(HistoryPageBuilder b)]) = _$HistoryPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryPage> get serializer => _$HistoryPageSerializer();
}

class _$HistoryPageSerializer implements PrimitiveSerializer<HistoryPage> {
  @override
  final Iterable<Type> types = const [HistoryPage, _$HistoryPage];

  @override
  final String wireName = r'HistoryPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RecordVersion)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
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
    HistoryPage object, {
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
    required HistoryPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RecordVersion),
                    ]),
                  )
                  as BuiltList<RecordVersion>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attributions.replace(valueDes);
          break;
        case r'licenceFiltered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
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
  HistoryPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryPageBuilder();
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
