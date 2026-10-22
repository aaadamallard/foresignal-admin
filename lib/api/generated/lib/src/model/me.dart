//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/notification_preference.dart';
import 'package:foresignal_api/src/model/me_groups_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/me_token.dart';
import 'package:foresignal_api/src/model/principal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me.g.dart';

/// The calling principal with its token, effective scopes, groups and notification preferences
///
/// Properties:
/// * [principal]
/// * [token]
/// * [scopes] - Scopes the token may call (scope hierarchy expanded)
/// * [groups]
/// * [notificationPreferences]
/// * [defaultTlp] - Traffic Light Protocol 2.0 label
@BuiltValue()
abstract class Me implements Built<Me, MeBuilder> {
  @BuiltValueField(wireName: r'principal')
  Principal get principal;

  @BuiltValueField(wireName: r'token')
  MeToken get token;

  /// Scopes the token may call (scope hierarchy expanded)
  @BuiltValueField(wireName: r'scopes')
  BuiltList<MeScopesEnum> get scopes;
  // enum scopesEnum {  read,  agent,  admin,  };

  @BuiltValueField(wireName: r'groups')
  BuiltList<MeGroupsInner> get groups;

  @BuiltValueField(wireName: r'notificationPreferences')
  BuiltList<NotificationPreference> get notificationPreferences;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'defaultTlp')
  String? get defaultTlp;

  Me._();

  factory Me([void updates(MeBuilder b)]) = _$Me;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Me> get serializer => _$MeSerializer();
}

class _$MeSerializer implements PrimitiveSerializer<Me> {
  @override
  final Iterable<Type> types = const [Me, _$Me];

  @override
  final String wireName = r'Me';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Me object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principal';
    yield serializers.serialize(
      object.principal,
      specifiedType: const FullType(Principal),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(MeToken),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(MeScopesEnum)]),
    );
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType: const FullType(BuiltList, [FullType(MeGroupsInner)]),
    );
    yield r'notificationPreferences';
    yield serializers.serialize(
      object.notificationPreferences,
      specifiedType: const FullType(BuiltList, [
        FullType(NotificationPreference),
      ]),
    );
    if (object.defaultTlp != null) {
      yield r'defaultTlp';
      yield serializers.serialize(
        object.defaultTlp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Me object, {
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
    required MeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Principal),
                  )
                  as Principal;
          result.principal.replace(valueDes);
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MeToken),
                  )
                  as MeToken;
          result.token.replace(valueDes);
          break;
        case r'scopes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MeScopesEnum),
                    ]),
                  )
                  as BuiltList<MeScopesEnum>;
          result.scopes.replace(valueDes);
          break;
        case r'groups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MeGroupsInner),
                    ]),
                  )
                  as BuiltList<MeGroupsInner>;
          result.groups.replace(valueDes);
          break;
        case r'notificationPreferences':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(NotificationPreference),
                    ]),
                  )
                  as BuiltList<NotificationPreference>;
          result.notificationPreferences.replace(valueDes);
          break;
        case r'defaultTlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultTlp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Me deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeBuilder();
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

class MeScopesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const MeScopesEnum read = _$meScopesEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const MeScopesEnum agent = _$meScopesEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const MeScopesEnum admin = _$meScopesEnum_admin;

  static Serializer<MeScopesEnum> get serializer => _$meScopesEnumSerializer;

  const MeScopesEnum._(String name) : super(name);

  static BuiltSet<MeScopesEnum> get values => _$meScopesEnumValues;
  static MeScopesEnum valueOf(String name) => _$meScopesEnumValueOf(name);
}
