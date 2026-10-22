//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_changes_new_members.g.dart';

/// Members added since the baseline
///
/// Properties:
/// * [total]
/// * [byFamily] - Count per signal family
/// * [byType] - Count per member type
@BuiltValue()
abstract class SituationChangesNewMembers
    implements
        Built<SituationChangesNewMembers, SituationChangesNewMembersBuilder> {
  @BuiltValueField(wireName: r'total')
  int get total;

  /// Count per signal family
  @BuiltValueField(wireName: r'byFamily')
  BuiltMap<String, int> get byFamily;

  /// Count per member type
  @BuiltValueField(wireName: r'byType')
  BuiltMap<String, int>? get byType;

  SituationChangesNewMembers._();

  factory SituationChangesNewMembers([
    void updates(SituationChangesNewMembersBuilder b),
  ]) = _$SituationChangesNewMembers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationChangesNewMembersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationChangesNewMembers> get serializer =>
      _$SituationChangesNewMembersSerializer();
}

class _$SituationChangesNewMembersSerializer
    implements PrimitiveSerializer<SituationChangesNewMembers> {
  @override
  final Iterable<Type> types = const [
    SituationChangesNewMembers,
    _$SituationChangesNewMembers,
  ];

  @override
  final String wireName = r'SituationChangesNewMembers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationChangesNewMembers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'byFamily';
    yield serializers.serialize(
      object.byFamily,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(int),
      ]),
    );
    if (object.byType != null) {
      yield r'byType';
      yield serializers.serialize(
        object.byType,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationChangesNewMembers object, {
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
    required SituationChangesNewMembersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.total = valueDes;
          break;
        case r'byFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>;
          result.byFamily.replace(valueDes);
          break;
        case r'byType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byType.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationChangesNewMembers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationChangesNewMembersBuilder();
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
