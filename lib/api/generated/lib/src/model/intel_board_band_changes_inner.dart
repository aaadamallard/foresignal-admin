//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_band_changes_inner.g.dart';

/// Band change in the last 24 h
///
/// Properties:
/// * [setId] - ULID identifier
/// * [hypothesisId] - ULID identifier
/// * [question]
/// * [label]
/// * [fromTerm]
/// * [toTerm]
/// * [probability]
/// * [at]
@BuiltValue()
abstract class IntelBoardBandChangesInner
    implements
        Built<IntelBoardBandChangesInner, IntelBoardBandChangesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisId')
  String get hypothesisId;

  @BuiltValueField(wireName: r'question')
  String? get question;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'fromTerm')
  IcdTerm? get fromTerm;
  // enum fromTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'toTerm')
  IcdTerm get toTerm;
  // enum toTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  IntelBoardBandChangesInner._();

  factory IntelBoardBandChangesInner([
    void updates(IntelBoardBandChangesInnerBuilder b),
  ]) = _$IntelBoardBandChangesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardBandChangesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardBandChangesInner> get serializer =>
      _$IntelBoardBandChangesInnerSerializer();
}

class _$IntelBoardBandChangesInnerSerializer
    implements PrimitiveSerializer<IntelBoardBandChangesInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardBandChangesInner,
    _$IntelBoardBandChangesInner,
  ];

  @override
  final String wireName = r'IntelBoardBandChangesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardBandChangesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    yield r'hypothesisId';
    yield serializers.serialize(
      object.hypothesisId,
      specifiedType: const FullType(String),
    );
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.fromTerm != null) {
      yield r'fromTerm';
      yield serializers.serialize(
        object.fromTerm,
        specifiedType: const FullType(IcdTerm),
      );
    }
    yield r'toTerm';
    yield serializers.serialize(
      object.toTerm,
      specifiedType: const FullType(IcdTerm),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType(num),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardBandChangesInner object, {
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
    required IntelBoardBandChangesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'hypothesisId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.hypothesisId = valueDes;
          break;
        case r'question':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.question = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'fromTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.fromTerm = valueDes;
          break;
        case r'toTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IcdTerm),
                  )
                  as IcdTerm;
          result.toTerm = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardBandChangesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardBandChangesInnerBuilder();
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
