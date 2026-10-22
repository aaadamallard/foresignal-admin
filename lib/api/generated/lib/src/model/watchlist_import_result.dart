//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/watchlist_import_result_invalid_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_import_result.g.dart';

/// Outcome of adding or importing watchlist items (036); with dryRun nothing changes
///
/// Properties:
/// * [dryRun]
/// * [mode]
/// * [added]
/// * [updated]
/// * [removed]
/// * [unchanged]
/// * [invalid]
/// * [itemCount] - Items after the operation (or as it would be)
@BuiltValue()
abstract class WatchlistImportResult
    implements Built<WatchlistImportResult, WatchlistImportResultBuilder> {
  @BuiltValueField(wireName: r'dryRun')
  bool get dryRun;

  @BuiltValueField(wireName: r'mode')
  WatchlistImportResultModeEnum? get mode;
  // enum modeEnum {  merge,  replace,  };

  @BuiltValueField(wireName: r'added')
  int get added;

  @BuiltValueField(wireName: r'updated')
  int get updated;

  @BuiltValueField(wireName: r'removed')
  int get removed;

  @BuiltValueField(wireName: r'unchanged')
  int? get unchanged;

  @BuiltValueField(wireName: r'invalid')
  BuiltList<WatchlistImportResultInvalidInner> get invalid;

  /// Items after the operation (or as it would be)
  @BuiltValueField(wireName: r'itemCount')
  int get itemCount;

  WatchlistImportResult._();

  factory WatchlistImportResult([
    void updates(WatchlistImportResultBuilder b),
  ]) = _$WatchlistImportResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistImportResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistImportResult> get serializer =>
      _$WatchlistImportResultSerializer();
}

class _$WatchlistImportResultSerializer
    implements PrimitiveSerializer<WatchlistImportResult> {
  @override
  final Iterable<Type> types = const [
    WatchlistImportResult,
    _$WatchlistImportResult,
  ];

  @override
  final String wireName = r'WatchlistImportResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistImportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dryRun';
    yield serializers.serialize(
      object.dryRun,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(WatchlistImportResultModeEnum),
      );
    }
    yield r'added';
    yield serializers.serialize(
      object.added,
      specifiedType: const FullType(int),
    );
    yield r'updated';
    yield serializers.serialize(
      object.updated,
      specifiedType: const FullType(int),
    );
    yield r'removed';
    yield serializers.serialize(
      object.removed,
      specifiedType: const FullType(int),
    );
    if (object.unchanged != null) {
      yield r'unchanged';
      yield serializers.serialize(
        object.unchanged,
        specifiedType: const FullType(int),
      );
    }
    yield r'invalid';
    yield serializers.serialize(
      object.invalid,
      specifiedType: const FullType(BuiltList, [
        FullType(WatchlistImportResultInvalidInner),
      ]),
    );
    yield r'itemCount';
    yield serializers.serialize(
      object.itemCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistImportResult object, {
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
    required WatchlistImportResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dryRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.dryRun = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WatchlistImportResultModeEnum,
                    ),
                  )
                  as WatchlistImportResultModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'added':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.added = valueDes;
          break;
        case r'updated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.updated = valueDes;
          break;
        case r'removed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.removed = valueDes;
          break;
        case r'unchanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.unchanged = valueDes;
          break;
        case r'invalid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(WatchlistImportResultInvalidInner),
                    ]),
                  )
                  as BuiltList<WatchlistImportResultInvalidInner>;
          result.invalid.replace(valueDes);
          break;
        case r'itemCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.itemCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchlistImportResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistImportResultBuilder();
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

class WatchlistImportResultModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'merge')
  static const WatchlistImportResultModeEnum merge =
      _$watchlistImportResultModeEnum_merge;
  @BuiltValueEnumConst(wireName: r'replace')
  static const WatchlistImportResultModeEnum replace =
      _$watchlistImportResultModeEnum_replace;

  static Serializer<WatchlistImportResultModeEnum> get serializer =>
      _$watchlistImportResultModeEnumSerializer;

  const WatchlistImportResultModeEnum._(String name) : super(name);

  static BuiltSet<WatchlistImportResultModeEnum> get values =>
      _$watchlistImportResultModeEnumValues;
  static WatchlistImportResultModeEnum valueOf(String name) =>
      _$watchlistImportResultModeEnumValueOf(name);
}
