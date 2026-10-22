//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proposed_patch_sanity_checks.g.dart';

/// javac-free checks on the patched file
///
/// Properties:
/// * [bracesBalanced]
/// * [classNameUnchanged]
@BuiltValue()
abstract class ProposedPatchSanityChecks
    implements
        Built<ProposedPatchSanityChecks, ProposedPatchSanityChecksBuilder> {
  @BuiltValueField(wireName: r'bracesBalanced')
  bool? get bracesBalanced;

  @BuiltValueField(wireName: r'classNameUnchanged')
  bool? get classNameUnchanged;

  ProposedPatchSanityChecks._();

  factory ProposedPatchSanityChecks([
    void updates(ProposedPatchSanityChecksBuilder b),
  ]) = _$ProposedPatchSanityChecks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProposedPatchSanityChecksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProposedPatchSanityChecks> get serializer =>
      _$ProposedPatchSanityChecksSerializer();
}

class _$ProposedPatchSanityChecksSerializer
    implements PrimitiveSerializer<ProposedPatchSanityChecks> {
  @override
  final Iterable<Type> types = const [
    ProposedPatchSanityChecks,
    _$ProposedPatchSanityChecks,
  ];

  @override
  final String wireName = r'ProposedPatchSanityChecks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProposedPatchSanityChecks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bracesBalanced != null) {
      yield r'bracesBalanced';
      yield serializers.serialize(
        object.bracesBalanced,
        specifiedType: const FullType(bool),
      );
    }
    if (object.classNameUnchanged != null) {
      yield r'classNameUnchanged';
      yield serializers.serialize(
        object.classNameUnchanged,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProposedPatchSanityChecks object, {
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
    required ProposedPatchSanityChecksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bracesBalanced':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.bracesBalanced = valueDes;
          break;
        case r'classNameUnchanged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.classNameUnchanged = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProposedPatchSanityChecks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProposedPatchSanityChecksBuilder();
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
