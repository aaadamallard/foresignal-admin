//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contract.g.dart';

/// Client contract versions in force (Client-Contract §16)
///
/// Properties:
/// * [contractVersion]
/// * [objectTypes]
/// * [relationTypes]
/// * [contextSchemaVersion]
/// * [deepLinkVersion]
@BuiltValue()
abstract class Contract implements Built<Contract, ContractBuilder> {
  @BuiltValueField(wireName: r'contractVersion')
  String get contractVersion;

  @BuiltValueField(wireName: r'objectTypes')
  BuiltList<String> get objectTypes;

  @BuiltValueField(wireName: r'relationTypes')
  BuiltList<String> get relationTypes;

  @BuiltValueField(wireName: r'contextSchemaVersion')
  int get contextSchemaVersion;

  @BuiltValueField(wireName: r'deepLinkVersion')
  int get deepLinkVersion;

  Contract._();

  factory Contract([void updates(ContractBuilder b)]) = _$Contract;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContractBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Contract> get serializer => _$ContractSerializer();
}

class _$ContractSerializer implements PrimitiveSerializer<Contract> {
  @override
  final Iterable<Type> types = const [Contract, _$Contract];

  @override
  final String wireName = r'Contract';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Contract object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contractVersion';
    yield serializers.serialize(
      object.contractVersion,
      specifiedType: const FullType(String),
    );
    yield r'objectTypes';
    yield serializers.serialize(
      object.objectTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'relationTypes';
    yield serializers.serialize(
      object.relationTypes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'contextSchemaVersion';
    yield serializers.serialize(
      object.contextSchemaVersion,
      specifiedType: const FullType(int),
    );
    yield r'deepLinkVersion';
    yield serializers.serialize(
      object.deepLinkVersion,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Contract object, {
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
    required ContractBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contractVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.contractVersion = valueDes;
          break;
        case r'objectTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.objectTypes.replace(valueDes);
          break;
        case r'relationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.relationTypes.replace(valueDes);
          break;
        case r'contextSchemaVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.contextSchemaVersion = valueDes;
          break;
        case r'deepLinkVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.deepLinkVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Contract deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContractBuilder();
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
