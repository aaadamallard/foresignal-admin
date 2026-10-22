//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_member_page.g.dart';

/// A page of situation members
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class SituationMemberPage
    implements Built<SituationMemberPage, SituationMemberPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SituationMember> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SituationMemberPage._();

  factory SituationMemberPage([void updates(SituationMemberPageBuilder b)]) =
      _$SituationMemberPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationMemberPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationMemberPage> get serializer =>
      _$SituationMemberPageSerializer();
}

class _$SituationMemberPageSerializer
    implements PrimitiveSerializer<SituationMemberPage> {
  @override
  final Iterable<Type> types = const [
    SituationMemberPage,
    _$SituationMemberPage,
  ];

  @override
  final String wireName = r'SituationMemberPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationMemberPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SituationMember)]),
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
    SituationMemberPage object, {
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
    required SituationMemberPageBuilder result,
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
                      FullType(SituationMember),
                    ]),
                  )
                  as BuiltList<SituationMember>;
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
  SituationMemberPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationMemberPageBuilder();
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
