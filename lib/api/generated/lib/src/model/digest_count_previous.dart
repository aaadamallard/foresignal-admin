//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_count_previous.g.dart';

/// Same counts for the previous equal-length period; null when below the retention floor
///
/// Properties:
/// * [new_]
/// * [changed]
/// * [removed]
/// * [active] - null until 038's rollups (record_live keeps only the latest receipt)
@BuiltValue()
abstract class DigestCountPrevious
    implements Built<DigestCountPrevious, DigestCountPreviousBuilder> {
  @BuiltValueField(wireName: r'new')
  int? get new_;

  @BuiltValueField(wireName: r'changed')
  int? get changed;

  @BuiltValueField(wireName: r'removed')
  int? get removed;

  /// null until 038's rollups (record_live keeps only the latest receipt)
  @BuiltValueField(wireName: r'active')
  int? get active;

  DigestCountPrevious._();

  factory DigestCountPrevious([void updates(DigestCountPreviousBuilder b)]) =
      _$DigestCountPrevious;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestCountPreviousBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestCountPrevious> get serializer =>
      _$DigestCountPreviousSerializer();
}

class _$DigestCountPreviousSerializer
    implements PrimitiveSerializer<DigestCountPrevious> {
  @override
  final Iterable<Type> types = const [
    DigestCountPrevious,
    _$DigestCountPrevious,
  ];

  @override
  final String wireName = r'DigestCountPrevious';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestCountPrevious object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.new_ != null) {
      yield r'new';
      yield serializers.serialize(
        object.new_,
        specifiedType: const FullType(int),
      );
    }
    if (object.changed != null) {
      yield r'changed';
      yield serializers.serialize(
        object.changed,
        specifiedType: const FullType(int),
      );
    }
    if (object.removed != null) {
      yield r'removed';
      yield serializers.serialize(
        object.removed,
        specifiedType: const FullType(int),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestCountPrevious object, {
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
    required DigestCountPreviousBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.new_ = valueDes;
          break;
        case r'changed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.changed = valueDes;
          break;
        case r'removed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.removed = valueDes;
          break;
        case r'active':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestCountPrevious deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestCountPreviousBuilder();
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
