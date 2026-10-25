//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_spatial.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/precursor_side.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_candidate.g.dart';

/// An operator-registered candidate pair, always included in mining
///
/// Properties:
/// * [name]
/// * [kind]
/// * [antecedent]
/// * [consequent]
/// * [spatial]
/// * [lagMin] - ISO-8601 duration
/// * [lagMax] - ISO-8601 duration
/// * [regionCodes]
/// * [id] - ULID identifier
/// * [createdBy]
/// * [createdAt]
@BuiltValue()
abstract class PrecursorCandidate
    implements Built<PrecursorCandidate, PrecursorCandidateBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'kind')
  PrecursorCandidateKindEnum get kind;
  // enum kindEnum {  event,  series,  };

  @BuiltValueField(wireName: r'antecedent')
  PrecursorSide get antecedent;

  @BuiltValueField(wireName: r'consequent')
  PrecursorSide get consequent;

  @BuiltValueField(wireName: r'spatial')
  PrecursorSpatial? get spatial;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'lagMin')
  String get lagMin;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'lagMax')
  String get lagMax;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  PrecursorCandidate._();

  factory PrecursorCandidate([void updates(PrecursorCandidateBuilder b)]) =
      _$PrecursorCandidate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorCandidateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorCandidate> get serializer =>
      _$PrecursorCandidateSerializer();
}

class _$PrecursorCandidateSerializer
    implements PrimitiveSerializer<PrecursorCandidate> {
  @override
  final Iterable<Type> types = const [PrecursorCandidate, _$PrecursorCandidate];

  @override
  final String wireName = r'PrecursorCandidate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorCandidate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PrecursorCandidateKindEnum),
    );
    yield r'antecedent';
    yield serializers.serialize(
      object.antecedent,
      specifiedType: const FullType(PrecursorSide),
    );
    yield r'consequent';
    yield serializers.serialize(
      object.consequent,
      specifiedType: const FullType(PrecursorSide),
    );
    if (object.spatial != null) {
      yield r'spatial';
      yield serializers.serialize(
        object.spatial,
        specifiedType: const FullType(PrecursorSpatial),
      );
    }
    yield r'lagMin';
    yield serializers.serialize(
      object.lagMin,
      specifiedType: const FullType(String),
    );
    yield r'lagMax';
    yield serializers.serialize(
      object.lagMax,
      specifiedType: const FullType(String),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorCandidate object, {
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
    required PrecursorCandidateBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorCandidateKindEnum),
                  )
                  as PrecursorCandidateKindEnum;
          result.kind = valueDes;
          break;
        case r'antecedent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorSide),
                  )
                  as PrecursorSide;
          result.antecedent.replace(valueDes);
          break;
        case r'consequent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorSide),
                  )
                  as PrecursorSide;
          result.consequent.replace(valueDes);
          break;
        case r'spatial':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrecursorSpatial),
                  )
                  as PrecursorSpatial?;
          if (valueDes == null) continue;
          result.spatial.replace(valueDes);
          break;
        case r'lagMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.lagMin = valueDes;
          break;
        case r'lagMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.lagMax = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorCandidate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorCandidateBuilder();
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

class PrecursorCandidateKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const PrecursorCandidateKindEnum event =
      _$precursorCandidateKindEnum_event;
  @BuiltValueEnumConst(wireName: r'series')
  static const PrecursorCandidateKindEnum series =
      _$precursorCandidateKindEnum_series;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrecursorCandidateKindEnum unknownDefaultOpenApi =
      _$precursorCandidateKindEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorCandidateKindEnum> get serializer =>
      _$precursorCandidateKindEnumSerializer;

  const PrecursorCandidateKindEnum._(String name) : super(name);

  static BuiltSet<PrecursorCandidateKindEnum> get values =>
      _$precursorCandidateKindEnumValues;
  static PrecursorCandidateKindEnum valueOf(String name) =>
      _$precursorCandidateKindEnumValueOf(name);
}
