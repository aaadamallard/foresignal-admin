//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/object_acl_entry_input.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_acl_input.g.dart';

/// Replace an object's access list, visibility and TLP label; changing `owner` (transfer) or granting `owner` is allowed only to owners
///
/// Properties:
/// * [visibility]
/// * [entries]
/// * [owner] - Principal id or handle of the new owner (owners only)
/// * [tlp] - Change the TLP label (owner or editor); grants and visibility are checked against the new label
@BuiltValue()
abstract class ObjectAclInput
    implements Built<ObjectAclInput, ObjectAclInputBuilder> {
  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  @BuiltValueField(wireName: r'entries')
  BuiltList<ObjectAclEntryInput> get entries;

  /// Principal id or handle of the new owner (owners only)
  @BuiltValueField(wireName: r'owner')
  String? get owner;

  /// Change the TLP label (owner or editor); grants and visibility are checked against the new label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  ObjectAclInput._();

  factory ObjectAclInput([void updates(ObjectAclInputBuilder b)]) =
      _$ObjectAclInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectAclInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAclInput> get serializer =>
      _$ObjectAclInputSerializer();
}

class _$ObjectAclInputSerializer
    implements PrimitiveSerializer<ObjectAclInput> {
  @override
  final Iterable<Type> types = const [ObjectAclInput, _$ObjectAclInput];

  @override
  final String wireName = r'ObjectAclInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectAclInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(ObjectAclEntryInput)]),
    );
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectAclInput object, {
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
    required ObjectAclInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'entries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ObjectAclEntryInput),
                    ]),
                  )
                  as BuiltList<ObjectAclEntryInput>;
          result.entries.replace(valueDes);
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectAclInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectAclInputBuilder();
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
