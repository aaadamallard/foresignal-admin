//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_patch.g.dart';

/// Changes to an intelligence event; severity overrides are logged
///
/// Properties:
/// * [title]
/// * [status]
/// * [severity] - Override; null clears the override
/// * [notes]
@BuiltValue()
abstract class IntelEventPatch
    implements Built<IntelEventPatch, IntelEventPatchBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'status')
  IntelEventPatchStatusEnum? get status;
  // enum statusEnum {  emerging,  active,  resolved,  dismissed,  };

  /// Override; null clears the override
  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  IntelEventPatch._();

  factory IntelEventPatch([void updates(IntelEventPatchBuilder b)]) =
      _$IntelEventPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventPatch> get serializer =>
      _$IntelEventPatchSerializer();
}

class _$IntelEventPatchSerializer
    implements PrimitiveSerializer<IntelEventPatch> {
  @override
  final Iterable<Type> types = const [IntelEventPatch, _$IntelEventPatch];

  @override
  final String wireName = r'IntelEventPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(IntelEventPatchStatusEnum),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventPatch object, {
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
    required IntelEventPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntelEventPatchStatusEnum),
          ) as IntelEventPatchStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventPatchBuilder();
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

class IntelEventPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IntelEventPatchStatusEnum emerging =
      _$intelEventPatchStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const IntelEventPatchStatusEnum active =
      _$intelEventPatchStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const IntelEventPatchStatusEnum resolved =
      _$intelEventPatchStatusEnum_resolved;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const IntelEventPatchStatusEnum dismissed =
      _$intelEventPatchStatusEnum_dismissed;

  static Serializer<IntelEventPatchStatusEnum> get serializer =>
      _$intelEventPatchStatusEnumSerializer;

  const IntelEventPatchStatusEnum._(String name) : super(name);

  static BuiltSet<IntelEventPatchStatusEnum> get values =>
      _$intelEventPatchStatusEnumValues;
  static IntelEventPatchStatusEnum valueOf(String name) =>
      _$intelEventPatchStatusEnumValueOf(name);
}
