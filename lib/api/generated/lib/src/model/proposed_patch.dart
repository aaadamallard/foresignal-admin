//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/proposed_patch_sanity_checks.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proposed_patch.g.dart';

/// A parser patch proposed by the LLM as text; validated in memory, never written, compiled or applied
///
/// Properties:
/// * [file]
/// * [unifiedDiff]
/// * [patchApplies]
/// * [sanityChecks]
/// * [label]
/// * [error] - Why the patch does not apply, or why its file was refused (not in the adapter source catalog)
@BuiltValue()
abstract class ProposedPatch
    implements Built<ProposedPatch, ProposedPatchBuilder> {
  @BuiltValueField(wireName: r'file')
  String get file;

  @BuiltValueField(wireName: r'unifiedDiff')
  String get unifiedDiff;

  @BuiltValueField(wireName: r'patchApplies')
  bool get patchApplies;

  @BuiltValueField(wireName: r'sanityChecks')
  ProposedPatchSanityChecks? get sanityChecks;

  @BuiltValueField(wireName: r'label')
  String get label;

  /// Why the patch does not apply, or why its file was refused (not in the adapter source catalog)
  @BuiltValueField(wireName: r'error')
  String? get error;

  ProposedPatch._();

  factory ProposedPatch([void updates(ProposedPatchBuilder b)]) =
      _$ProposedPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProposedPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProposedPatch> get serializer =>
      _$ProposedPatchSerializer();
}

class _$ProposedPatchSerializer implements PrimitiveSerializer<ProposedPatch> {
  @override
  final Iterable<Type> types = const [ProposedPatch, _$ProposedPatch];

  @override
  final String wireName = r'ProposedPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProposedPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'file';
    yield serializers.serialize(
      object.file,
      specifiedType: const FullType(String),
    );
    yield r'unifiedDiff';
    yield serializers.serialize(
      object.unifiedDiff,
      specifiedType: const FullType(String),
    );
    yield r'patchApplies';
    yield serializers.serialize(
      object.patchApplies,
      specifiedType: const FullType(bool),
    );
    if (object.sanityChecks != null) {
      yield r'sanityChecks';
      yield serializers.serialize(
        object.sanityChecks,
        specifiedType: const FullType(ProposedPatchSanityChecks),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProposedPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProposedPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.file = valueDes;
          break;
        case r'unifiedDiff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unifiedDiff = valueDes;
          break;
        case r'patchApplies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.patchApplies = valueDes;
          break;
        case r'sanityChecks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ProposedPatchSanityChecks),
          ) as ProposedPatchSanityChecks?;
          if (valueDes == null) continue;
          result.sanityChecks.replace(valueDes);
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProposedPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProposedPatchBuilder();
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
