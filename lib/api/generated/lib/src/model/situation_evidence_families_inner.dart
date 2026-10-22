//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_evidence_families_inner.g.dart';

/// Members of one signal family (most recent first, up to 20)
///
/// Properties:
/// * [family] - Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
/// * [count]
/// * [coreCount]
/// * [members]
/// * [more] - True when the family has more members than listed
@BuiltValue()
abstract class SituationEvidenceFamiliesInner
    implements
        Built<
          SituationEvidenceFamiliesInner,
          SituationEvidenceFamiliesInnerBuilder
        > {
  /// Signal family from the 119 registry (`intel/signal-families.json`, operator-extensible), e.g. `ais-behaviour`, `aviation-military`, `aviation-ops`, `conflict`, `outage`, `internet-measurement`, `gnss-interference`, `nav-warning`, `attention`, `seismic`, `fire`, `weather-severe`, `cyber`, `markets`, `sanctions`, `health`, `space`
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'coreCount')
  int? get coreCount;

  @BuiltValueField(wireName: r'members')
  BuiltList<SituationMember> get members;

  /// True when the family has more members than listed
  @BuiltValueField(wireName: r'more')
  bool? get more;

  SituationEvidenceFamiliesInner._();

  factory SituationEvidenceFamiliesInner([
    void updates(SituationEvidenceFamiliesInnerBuilder b),
  ]) = _$SituationEvidenceFamiliesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationEvidenceFamiliesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationEvidenceFamiliesInner> get serializer =>
      _$SituationEvidenceFamiliesInnerSerializer();
}

class _$SituationEvidenceFamiliesInnerSerializer
    implements PrimitiveSerializer<SituationEvidenceFamiliesInner> {
  @override
  final Iterable<Type> types = const [
    SituationEvidenceFamiliesInner,
    _$SituationEvidenceFamiliesInner,
  ];

  @override
  final String wireName = r'SituationEvidenceFamiliesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationEvidenceFamiliesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.coreCount != null) {
      yield r'coreCount';
      yield serializers.serialize(
        object.coreCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(SituationMember)]),
    );
    if (object.more != null) {
      yield r'more';
      yield serializers.serialize(
        object.more,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationEvidenceFamiliesInner object, {
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
    required SituationEvidenceFamiliesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        case r'coreCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.coreCount = valueDes;
          break;
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SituationMember),
                    ]),
                  )
                  as BuiltList<SituationMember>;
          result.members.replace(valueDes);
          break;
        case r'more':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.more = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationEvidenceFamiliesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationEvidenceFamiliesInnerBuilder();
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
