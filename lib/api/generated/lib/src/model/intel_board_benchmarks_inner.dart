//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_benchmarks_inner.g.dart';

/// Latest benchmark status
///
/// Properties:
/// * [component]
/// * [status]
@BuiltValue()
abstract class IntelBoardBenchmarksInner
    implements
        Built<IntelBoardBenchmarksInner, IntelBoardBenchmarksInnerBuilder> {
  @BuiltValueField(wireName: r'component')
  String get component;

  @BuiltValueField(wireName: r'status')
  IntelBoardBenchmarksInnerStatusEnum get status;
  // enum statusEnum {  pass,  warn,  fail,  unknown,  };

  IntelBoardBenchmarksInner._();

  factory IntelBoardBenchmarksInner([
    void updates(IntelBoardBenchmarksInnerBuilder b),
  ]) = _$IntelBoardBenchmarksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardBenchmarksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardBenchmarksInner> get serializer =>
      _$IntelBoardBenchmarksInnerSerializer();
}

class _$IntelBoardBenchmarksInnerSerializer
    implements PrimitiveSerializer<IntelBoardBenchmarksInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardBenchmarksInner,
    _$IntelBoardBenchmarksInner,
  ];

  @override
  final String wireName = r'IntelBoardBenchmarksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardBenchmarksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'component';
    yield serializers.serialize(
      object.component,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IntelBoardBenchmarksInnerStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardBenchmarksInner object, {
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
    required IntelBoardBenchmarksInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'component':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.component = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelBoardBenchmarksInnerStatusEnum,
                    ),
                  )
                  as IntelBoardBenchmarksInnerStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardBenchmarksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardBenchmarksInnerBuilder();
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

class IntelBoardBenchmarksInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pass')
  static const IntelBoardBenchmarksInnerStatusEnum pass =
      _$intelBoardBenchmarksInnerStatusEnum_pass;
  @BuiltValueEnumConst(wireName: r'warn')
  static const IntelBoardBenchmarksInnerStatusEnum warn =
      _$intelBoardBenchmarksInnerStatusEnum_warn;
  @BuiltValueEnumConst(wireName: r'fail')
  static const IntelBoardBenchmarksInnerStatusEnum fail =
      _$intelBoardBenchmarksInnerStatusEnum_fail;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const IntelBoardBenchmarksInnerStatusEnum unknown =
      _$intelBoardBenchmarksInnerStatusEnum_unknown;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntelBoardBenchmarksInnerStatusEnum unknownDefaultOpenApi =
      _$intelBoardBenchmarksInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<IntelBoardBenchmarksInnerStatusEnum> get serializer =>
      _$intelBoardBenchmarksInnerStatusEnumSerializer;

  const IntelBoardBenchmarksInnerStatusEnum._(String name) : super(name);

  static BuiltSet<IntelBoardBenchmarksInnerStatusEnum> get values =>
      _$intelBoardBenchmarksInnerStatusEnumValues;
  static IntelBoardBenchmarksInnerStatusEnum valueOf(String name) =>
      _$intelBoardBenchmarksInnerStatusEnumValueOf(name);
}
