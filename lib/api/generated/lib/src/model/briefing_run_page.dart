//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/briefing_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_run_page.g.dart';

/// BriefingRunPage
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class BriefingRunPage
    implements Built<BriefingRunPage, BriefingRunPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<BriefingRun> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  BriefingRunPage._();

  factory BriefingRunPage([void updates(BriefingRunPageBuilder b)]) =
      _$BriefingRunPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingRunPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingRunPage> get serializer =>
      _$BriefingRunPageSerializer();
}

class _$BriefingRunPageSerializer
    implements PrimitiveSerializer<BriefingRunPage> {
  @override
  final Iterable<Type> types = const [BriefingRunPage, _$BriefingRunPage];

  @override
  final String wireName = r'BriefingRunPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingRunPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(BriefingRun)]),
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
    BriefingRunPage object, {
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
    required BriefingRunPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BriefingRun)]),
          ) as BuiltList<BriefingRun>;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingRunPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingRunPageBuilder();
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
