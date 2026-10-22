//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_build.g.dart';

/// A graph build record
///
/// Properties:
/// * [id] - ULID identifier
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [rulesVersion]
/// * [inputs] - sourceId → last seq read
/// * [nodes]
/// * [edgesByMethod]
/// * [edgesByLabel]
/// * [warnings]
@BuiltValue()
abstract class InfraBuild implements Built<InfraBuild, InfraBuildBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'status')
  InfraBuildStatusEnum get status;
  // enum statusEnum {  running,  done,  failed,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'rulesVersion')
  String get rulesVersion;

  /// sourceId → last seq read
  @BuiltValueField(wireName: r'inputs')
  BuiltMap<String, int>? get inputs;

  @BuiltValueField(wireName: r'nodes')
  int? get nodes;

  @BuiltValueField(wireName: r'edgesByMethod')
  BuiltMap<String, int>? get edgesByMethod;

  @BuiltValueField(wireName: r'edgesByLabel')
  BuiltMap<String, int>? get edgesByLabel;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  InfraBuild._();

  factory InfraBuild([void updates(InfraBuildBuilder b)]) = _$InfraBuild;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraBuildBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraBuild> get serializer => _$InfraBuildSerializer();
}

class _$InfraBuildSerializer implements PrimitiveSerializer<InfraBuild> {
  @override
  final Iterable<Type> types = const [InfraBuild, _$InfraBuild];

  @override
  final String wireName = r'InfraBuild';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraBuild object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(InfraBuildStatusEnum),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'rulesVersion';
    yield serializers.serialize(
      object.rulesVersion,
      specifiedType: const FullType(String),
    );
    if (object.inputs != null) {
      yield r'inputs';
      yield serializers.serialize(
        object.inputs,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.nodes != null) {
      yield r'nodes';
      yield serializers.serialize(
        object.nodes,
        specifiedType: const FullType(int),
      );
    }
    if (object.edgesByMethod != null) {
      yield r'edgesByMethod';
      yield serializers.serialize(
        object.edgesByMethod,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.edgesByLabel != null) {
      yield r'edgesByLabel';
      yield serializers.serialize(
        object.edgesByLabel,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraBuild object, {
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
    required InfraBuildBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraBuildStatusEnum),
                  )
                  as InfraBuildStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'rulesVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rulesVersion = valueDes;
          break;
        case r'inputs':
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
          result.inputs.replace(valueDes);
          break;
        case r'nodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nodes = valueDes;
          break;
        case r'edgesByMethod':
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
          result.edgesByMethod.replace(valueDes);
          break;
        case r'edgesByLabel':
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
          result.edgesByLabel.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraBuild deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraBuildBuilder();
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

class InfraBuildStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const InfraBuildStatusEnum running = _$infraBuildStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const InfraBuildStatusEnum done = _$infraBuildStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const InfraBuildStatusEnum failed = _$infraBuildStatusEnum_failed;

  static Serializer<InfraBuildStatusEnum> get serializer =>
      _$infraBuildStatusEnumSerializer;

  const InfraBuildStatusEnum._(String name) : super(name);

  static BuiltSet<InfraBuildStatusEnum> get values =>
      _$infraBuildStatusEnumValues;
  static InfraBuildStatusEnum valueOf(String name) =>
      _$infraBuildStatusEnumValueOf(name);
}
