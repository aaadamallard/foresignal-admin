//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_indicators_observed_inner.g.dart';

/// Indicator observed in the last 24 h
///
/// Properties:
/// * [indicatorId] - ULID identifier
/// * [setId] - ULID identifier
/// * [description]
/// * [at]
@BuiltValue()
abstract class IntelBoardIndicatorsObservedInner
    implements
        Built<
          IntelBoardIndicatorsObservedInner,
          IntelBoardIndicatorsObservedInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'indicatorId')
  String get indicatorId;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  IntelBoardIndicatorsObservedInner._();

  factory IntelBoardIndicatorsObservedInner([
    void updates(IntelBoardIndicatorsObservedInnerBuilder b),
  ]) = _$IntelBoardIndicatorsObservedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardIndicatorsObservedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardIndicatorsObservedInner> get serializer =>
      _$IntelBoardIndicatorsObservedInnerSerializer();
}

class _$IntelBoardIndicatorsObservedInnerSerializer
    implements PrimitiveSerializer<IntelBoardIndicatorsObservedInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardIndicatorsObservedInner,
    _$IntelBoardIndicatorsObservedInner,
  ];

  @override
  final String wireName = r'IntelBoardIndicatorsObservedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardIndicatorsObservedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indicatorId';
    yield serializers.serialize(
      object.indicatorId,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
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
    IntelBoardIndicatorsObservedInner object, {
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
    required IntelBoardIndicatorsObservedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indicatorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.indicatorId = valueDes;
          break;
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
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
  IntelBoardIndicatorsObservedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardIndicatorsObservedInnerBuilder();
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
