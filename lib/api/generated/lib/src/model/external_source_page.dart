//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/external_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_page.g.dart';

/// A page of external sources
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class ExternalSourcePage
    implements Built<ExternalSourcePage, ExternalSourcePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ExternalSource> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ExternalSourcePage._();

  factory ExternalSourcePage([void updates(ExternalSourcePageBuilder b)]) =
      _$ExternalSourcePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourcePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourcePage> get serializer =>
      _$ExternalSourcePageSerializer();
}

class _$ExternalSourcePageSerializer
    implements PrimitiveSerializer<ExternalSourcePage> {
  @override
  final Iterable<Type> types = const [ExternalSourcePage, _$ExternalSourcePage];

  @override
  final String wireName = r'ExternalSourcePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourcePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ExternalSource)]),
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
    ExternalSourcePage object, {
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
    required ExternalSourcePageBuilder result,
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
                      FullType(ExternalSource),
                    ]),
                  )
                  as BuiltList<ExternalSource>;
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
  ExternalSourcePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourcePageBuilder();
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
