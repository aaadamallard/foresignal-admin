//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/user_source_pref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_source_view_update.g.dart';

/// Replace the caller's enabled-source view
///
/// Properties:
/// * [sources]
@BuiltValue()
abstract class UserSourceViewUpdate
    implements Built<UserSourceViewUpdate, UserSourceViewUpdateBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<UserSourcePref> get sources;

  UserSourceViewUpdate._();

  factory UserSourceViewUpdate([void updates(UserSourceViewUpdateBuilder b)]) =
      _$UserSourceViewUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSourceViewUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSourceViewUpdate> get serializer =>
      _$UserSourceViewUpdateSerializer();
}

class _$UserSourceViewUpdateSerializer
    implements PrimitiveSerializer<UserSourceViewUpdate> {
  @override
  final Iterable<Type> types = const [
    UserSourceViewUpdate,
    _$UserSourceViewUpdate,
  ];

  @override
  final String wireName = r'UserSourceViewUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSourceViewUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltList, [FullType(UserSourcePref)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSourceViewUpdate object, {
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
    required UserSourceViewUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(UserSourcePref),
                    ]),
                  )
                  as BuiltList<UserSourcePref>;
          result.sources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSourceViewUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSourceViewUpdateBuilder();
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
