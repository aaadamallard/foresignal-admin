//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/regional_index_def_components_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/regional_index_def_floors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def_input.g.dart';

/// Definition and enablement of a regional index (PUT replaces)
///
/// Properties:
/// * [name]
/// * [description]
/// * [components]
/// * [weights] - Component key → weight (sums to 1)
/// * [floors]
/// * [target]
/// * [enabled]
/// * [autoApplyFittedWeights]
@BuiltValue()
abstract class RegionalIndexDefInput
    implements Built<RegionalIndexDefInput, RegionalIndexDefInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'components')
  BuiltList<RegionalIndexDefComponentsInner> get components;

  /// Component key → weight (sums to 1)
  @BuiltValueField(wireName: r'weights')
  BuiltMap<String, num> get weights;

  @BuiltValueField(wireName: r'floors')
  BuiltList<RegionalIndexDefFloorsInner>? get floors;

  @BuiltValueField(wireName: r'target')
  String get target;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'autoApplyFittedWeights')
  bool? get autoApplyFittedWeights;

  RegionalIndexDefInput._();

  factory RegionalIndexDefInput([
    void updates(RegionalIndexDefInputBuilder b),
  ]) = _$RegionalIndexDefInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDefInput> get serializer =>
      _$RegionalIndexDefInputSerializer();
}

class _$RegionalIndexDefInputSerializer
    implements PrimitiveSerializer<RegionalIndexDefInput> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDefInput,
    _$RegionalIndexDefInput,
  ];

  @override
  final String wireName = r'RegionalIndexDefInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDefInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [
        FullType(RegionalIndexDefComponentsInner),
      ]),
    );
    yield r'weights';
    yield serializers.serialize(
      object.weights,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(num),
      ]),
    );
    if (object.floors != null) {
      yield r'floors';
      yield serializers.serialize(
        object.floors,
        specifiedType: const FullType(BuiltList, [
          FullType(RegionalIndexDefFloorsInner),
        ]),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.autoApplyFittedWeights != null) {
      yield r'autoApplyFittedWeights';
      yield serializers.serialize(
        object.autoApplyFittedWeights,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefInput object, {
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
    required RegionalIndexDefInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RegionalIndexDefComponentsInner),
                    ]),
                  )
                  as BuiltList<RegionalIndexDefComponentsInner>;
          result.components.replace(valueDes);
          break;
        case r'weights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>;
          result.weights.replace(valueDes);
          break;
        case r'floors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RegionalIndexDefFloorsInner),
                    ]),
                  )
                  as BuiltList<RegionalIndexDefFloorsInner>?;
          if (valueDes == null) continue;
          result.floors.replace(valueDes);
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.target = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'autoApplyFittedWeights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.autoApplyFittedWeights = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDefInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefInputBuilder();
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
