//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/infra_build.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_status.g.dart';

/// Graph status: the last build and counts
///
/// Properties:
/// * [built]
/// * [building]
/// * [lastBuild]
/// * [nodesByType]
/// * [osmExtractDate]
@BuiltValue()
abstract class InfraStatus implements Built<InfraStatus, InfraStatusBuilder> {
  @BuiltValueField(wireName: r'built')
  bool get built;

  @BuiltValueField(wireName: r'building')
  bool get building;

  @BuiltValueField(wireName: r'lastBuild')
  InfraBuild? get lastBuild;

  @BuiltValueField(wireName: r'nodesByType')
  BuiltMap<String, int>? get nodesByType;

  @BuiltValueField(wireName: r'osmExtractDate')
  DateTime? get osmExtractDate;

  InfraStatus._();

  factory InfraStatus([void updates(InfraStatusBuilder b)]) = _$InfraStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraStatus> get serializer => _$InfraStatusSerializer();
}

class _$InfraStatusSerializer implements PrimitiveSerializer<InfraStatus> {
  @override
  final Iterable<Type> types = const [InfraStatus, _$InfraStatus];

  @override
  final String wireName = r'InfraStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'built';
    yield serializers.serialize(
      object.built,
      specifiedType: const FullType(bool),
    );
    yield r'building';
    yield serializers.serialize(
      object.building,
      specifiedType: const FullType(bool),
    );
    if (object.lastBuild != null) {
      yield r'lastBuild';
      yield serializers.serialize(
        object.lastBuild,
        specifiedType: const FullType.nullable(InfraBuild),
      );
    }
    if (object.nodesByType != null) {
      yield r'nodesByType';
      yield serializers.serialize(
        object.nodesByType,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.osmExtractDate != null) {
      yield r'osmExtractDate';
      yield serializers.serialize(
        object.osmExtractDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraStatus object, {
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
    required InfraStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'built':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.built = valueDes;
          break;
        case r'building':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.building = valueDes;
          break;
        case r'lastBuild':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(InfraBuild),
          ) as InfraBuild?;
          if (valueDes == null) continue;
          result.lastBuild.replace(valueDes);
          break;
        case r'nodesByType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.nodesByType.replace(valueDes);
          break;
        case r'osmExtractDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.osmExtractDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraStatusBuilder();
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
