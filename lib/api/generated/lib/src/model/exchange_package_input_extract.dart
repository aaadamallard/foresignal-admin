//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_package_input_extract.g.dart';

/// Chronicle extract bounds
///
/// Properties:
/// * [from]
/// * [to]
/// * [layers]
@BuiltValue()
abstract class ExchangePackageInputExtract
    implements
        Built<ExchangePackageInputExtract, ExchangePackageInputExtractBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'layers')
  BuiltList<String>? get layers;

  ExchangePackageInputExtract._();

  factory ExchangePackageInputExtract([
    void updates(ExchangePackageInputExtractBuilder b),
  ]) = _$ExchangePackageInputExtract;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangePackageInputExtractBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangePackageInputExtract> get serializer =>
      _$ExchangePackageInputExtractSerializer();
}

class _$ExchangePackageInputExtractSerializer
    implements PrimitiveSerializer<ExchangePackageInputExtract> {
  @override
  final Iterable<Type> types = const [
    ExchangePackageInputExtract,
    _$ExchangePackageInputExtract,
  ];

  @override
  final String wireName = r'ExchangePackageInputExtract';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangePackageInputExtract object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangePackageInputExtract object, {
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
    required ExchangePackageInputExtractBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangePackageInputExtract deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangePackageInputExtractBuilder();
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
