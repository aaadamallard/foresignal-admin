//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_page.g.dart';

/// A page of situations, newest activity first
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class SituationPage
    implements Built<SituationPage, SituationPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SituationSummary> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SituationPage._();

  factory SituationPage([void updates(SituationPageBuilder b)]) =
      _$SituationPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationPage> get serializer =>
      _$SituationPageSerializer();
}

class _$SituationPageSerializer implements PrimitiveSerializer<SituationPage> {
  @override
  final Iterable<Type> types = const [SituationPage, _$SituationPage];

  @override
  final String wireName = r'SituationPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SituationSummary)]),
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
    SituationPage object, {
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
    required SituationPageBuilder result,
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
                      FullType(SituationSummary),
                    ]),
                  )
                  as BuiltList<SituationSummary>;
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
  SituationPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationPageBuilder();
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
