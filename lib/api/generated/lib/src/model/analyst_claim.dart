//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_claim.g.dart';

/// A typed claim. `evidence` claims cite items returned by tools in the same run; uncited evidence is downgraded to speculation.
///
/// Properties:
/// * [text]
/// * [basis]
/// * [citations] - Item ids returned by tools in this run: record@seq, alert, anomaly or event
/// * [downgraded]
/// * [warning]
@BuiltValue()
abstract class AnalystClaim
    implements Built<AnalystClaim, AnalystClaimBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'basis')
  AnalystClaimBasisEnum get basis;
  // enum basisEnum {  evidence,  inference,  speculation,  };

  /// Item ids returned by tools in this run: record@seq, alert, anomaly or event
  @BuiltValueField(wireName: r'citations')
  BuiltList<String> get citations;

  @BuiltValueField(wireName: r'downgraded')
  bool? get downgraded;

  @BuiltValueField(wireName: r'warning')
  String? get warning;

  AnalystClaim._();

  factory AnalystClaim([void updates(AnalystClaimBuilder b)]) = _$AnalystClaim;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystClaimBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystClaim> get serializer => _$AnalystClaimSerializer();
}

class _$AnalystClaimSerializer implements PrimitiveSerializer<AnalystClaim> {
  @override
  final Iterable<Type> types = const [AnalystClaim, _$AnalystClaim];

  @override
  final String wireName = r'AnalystClaim';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystClaim object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'basis';
    yield serializers.serialize(
      object.basis,
      specifiedType: const FullType(AnalystClaimBasisEnum),
    );
    yield r'citations';
    yield serializers.serialize(
      object.citations,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.downgraded != null) {
      yield r'downgraded';
      yield serializers.serialize(
        object.downgraded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystClaim object, {
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
    required AnalystClaimBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        case r'basis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnalystClaimBasisEnum),
                  )
                  as AnalystClaimBasisEnum;
          result.basis = valueDes;
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.citations.replace(valueDes);
          break;
        case r'downgraded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.downgraded = valueDes;
          break;
        case r'warning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.warning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystClaim deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystClaimBuilder();
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

class AnalystClaimBasisEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'evidence')
  static const AnalystClaimBasisEnum evidence =
      _$analystClaimBasisEnum_evidence;
  @BuiltValueEnumConst(wireName: r'inference')
  static const AnalystClaimBasisEnum inference =
      _$analystClaimBasisEnum_inference;
  @BuiltValueEnumConst(wireName: r'speculation')
  static const AnalystClaimBasisEnum speculation =
      _$analystClaimBasisEnum_speculation;

  static Serializer<AnalystClaimBasisEnum> get serializer =>
      _$analystClaimBasisEnumSerializer;

  const AnalystClaimBasisEnum._(String name) : super(name);

  static BuiltSet<AnalystClaimBasisEnum> get values =>
      _$analystClaimBasisEnumValues;
  static AnalystClaimBasisEnum valueOf(String name) =>
      _$analystClaimBasisEnumValueOf(name);
}
