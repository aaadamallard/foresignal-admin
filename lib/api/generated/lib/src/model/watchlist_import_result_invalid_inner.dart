//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_import_result_invalid_inner.g.dart';

/// Rejected row
///
/// Properties:
/// * [row]
/// * [value]
/// * [reason]
@BuiltValue()
abstract class WatchlistImportResultInvalidInner
    implements
        Built<WatchlistImportResultInvalidInner,
            WatchlistImportResultInvalidInnerBuilder> {
  @BuiltValueField(wireName: r'row')
  int? get row;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  WatchlistImportResultInvalidInner._();

  factory WatchlistImportResultInvalidInner(
          [void updates(WatchlistImportResultInvalidInnerBuilder b)]) =
      _$WatchlistImportResultInvalidInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistImportResultInvalidInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistImportResultInvalidInner> get serializer =>
      _$WatchlistImportResultInvalidInnerSerializer();
}

class _$WatchlistImportResultInvalidInnerSerializer
    implements PrimitiveSerializer<WatchlistImportResultInvalidInner> {
  @override
  final Iterable<Type> types = const [
    WatchlistImportResultInvalidInner,
    _$WatchlistImportResultInvalidInner
  ];

  @override
  final String wireName = r'WatchlistImportResultInvalidInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistImportResultInvalidInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.row != null) {
      yield r'row';
      yield serializers.serialize(
        object.row,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistImportResultInvalidInner object, {
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
    required WatchlistImportResultInvalidInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'row':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.row = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  WatchlistImportResultInvalidInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistImportResultInvalidInnerBuilder();
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
