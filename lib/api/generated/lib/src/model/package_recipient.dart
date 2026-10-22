//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_recipient.g.dart';

/// A recipient instance and principal handles there
///
/// Properties:
/// * [instanceId]
/// * [principals] - Principal handles on that instance; `*` allowed only for GREEN/CLEAR
@BuiltValue()
abstract class PackageRecipient
    implements Built<PackageRecipient, PackageRecipientBuilder> {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  /// Principal handles on that instance; `*` allowed only for GREEN/CLEAR
  @BuiltValueField(wireName: r'principals')
  BuiltList<String> get principals;

  PackageRecipient._();

  factory PackageRecipient([void updates(PackageRecipientBuilder b)]) =
      _$PackageRecipient;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackageRecipientBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackageRecipient> get serializer =>
      _$PackageRecipientSerializer();
}

class _$PackageRecipientSerializer
    implements PrimitiveSerializer<PackageRecipient> {
  @override
  final Iterable<Type> types = const [PackageRecipient, _$PackageRecipient];

  @override
  final String wireName = r'PackageRecipient';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackageRecipient object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'principals';
    yield serializers.serialize(
      object.principals,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PackageRecipient object, {
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
    required PackageRecipientBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'principals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.principals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackageRecipient deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackageRecipientBuilder();
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
