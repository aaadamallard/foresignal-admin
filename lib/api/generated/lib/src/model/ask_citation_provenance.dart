//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_citation_provenance.g.dart';

/// Briefing-run citations of a briefing with `includeProvenance` only: why the item is in the edition (NP-007); absent elsewhere
///
/// Properties:
/// * [refs] - The cross-linked evidence and objects that put the item in scope
/// * [reason] - A one-line \"why included\"
@BuiltValue()
abstract class AskCitationProvenance
    implements Built<AskCitationProvenance, AskCitationProvenanceBuilder> {
  /// The cross-linked evidence and objects that put the item in scope
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  /// A one-line \"why included\"
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  AskCitationProvenance._();

  factory AskCitationProvenance([
    void updates(AskCitationProvenanceBuilder b),
  ]) = _$AskCitationProvenance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskCitationProvenanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskCitationProvenance> get serializer =>
      _$AskCitationProvenanceSerializer();
}

class _$AskCitationProvenanceSerializer
    implements PrimitiveSerializer<AskCitationProvenance> {
  @override
  final Iterable<Type> types = const [
    AskCitationProvenance,
    _$AskCitationProvenance,
  ];

  @override
  final String wireName = r'AskCitationProvenance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskCitationProvenance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskCitationProvenance object, {
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
    required AskCitationProvenanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskCitationProvenance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskCitationProvenanceBuilder();
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
