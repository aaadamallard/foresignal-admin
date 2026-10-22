//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/investigation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_page.g.dart';

/// Page of investigations
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null on the last page
@BuiltValue()
abstract class InvestigationPage
    implements Built<InvestigationPage, InvestigationPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Investigation> get items;

  /// Opaque cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  InvestigationPage._();

  factory InvestigationPage([void updates(InvestigationPageBuilder b)]) =
      _$InvestigationPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationPage> get serializer =>
      _$InvestigationPageSerializer();
}

class _$InvestigationPageSerializer
    implements PrimitiveSerializer<InvestigationPage> {
  @override
  final Iterable<Type> types = const [InvestigationPage, _$InvestigationPage];

  @override
  final String wireName = r'InvestigationPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Investigation)]),
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
    InvestigationPage object, {
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
    required InvestigationPageBuilder result,
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
                      FullType(Investigation),
                    ]),
                  )
                  as BuiltList<Investigation>;
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
  InvestigationPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationPageBuilder();
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
