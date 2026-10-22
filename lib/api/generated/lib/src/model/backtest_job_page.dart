//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/backtest_job.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backtest_job_page.g.dart';

/// Page of backtest jobs
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null on the last page
@BuiltValue()
abstract class BacktestJobPage
    implements Built<BacktestJobPage, BacktestJobPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<BacktestJob> get items;

  /// Opaque cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  BacktestJobPage._();

  factory BacktestJobPage([void updates(BacktestJobPageBuilder b)]) =
      _$BacktestJobPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BacktestJobPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BacktestJobPage> get serializer =>
      _$BacktestJobPageSerializer();
}

class _$BacktestJobPageSerializer
    implements PrimitiveSerializer<BacktestJobPage> {
  @override
  final Iterable<Type> types = const [BacktestJobPage, _$BacktestJobPage];

  @override
  final String wireName = r'BacktestJobPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BacktestJobPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(BacktestJob)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BacktestJobPage object, {
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
    required BacktestJobPageBuilder result,
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
                      FullType(BacktestJob),
                    ]),
                  )
                  as BuiltList<BacktestJob>;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BacktestJobPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BacktestJobPageBuilder();
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
