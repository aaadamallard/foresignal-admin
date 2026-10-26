//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/egress_route.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_route_page.g.dart';

/// A page of egress routes
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class EgressRoutePage
    implements Built<EgressRoutePage, EgressRoutePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<EgressRoute> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  EgressRoutePage._();

  factory EgressRoutePage([void updates(EgressRoutePageBuilder b)]) =
      _$EgressRoutePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressRoutePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressRoutePage> get serializer =>
      _$EgressRoutePageSerializer();
}

class _$EgressRoutePageSerializer
    implements PrimitiveSerializer<EgressRoutePage> {
  @override
  final Iterable<Type> types = const [EgressRoutePage, _$EgressRoutePage];

  @override
  final String wireName = r'EgressRoutePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressRoutePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EgressRoute)]),
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
    EgressRoutePage object, {
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
    required EgressRoutePageBuilder result,
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
                      FullType(EgressRoute),
                    ]),
                  )
                  as BuiltList<EgressRoute>;
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
  EgressRoutePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressRoutePageBuilder();
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
