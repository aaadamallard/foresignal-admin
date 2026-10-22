//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_batch_access_decisions_inner.g.dart';

/// A relayed decision
///
/// Properties:
/// * [requestId] - ULID identifier
/// * [status]
/// * [deliveredAs]
/// * [packageId] - ULID identifier
@BuiltValue()
abstract class ChronicleSketchBatchAccessDecisionsInner
    implements
        Built<
          ChronicleSketchBatchAccessDecisionsInner,
          ChronicleSketchBatchAccessDecisionsInnerBuilder
        > {
  /// ULID identifier
  @BuiltValueField(wireName: r'requestId')
  String get requestId;

  @BuiltValueField(wireName: r'status')
  ChronicleSketchBatchAccessDecisionsInnerStatusEnum get status;
  // enum statusEnum {  granted,  declined,  };

  @BuiltValueField(wireName: r'deliveredAs')
  ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum? get deliveredAs;
  // enum deliveredAsEnum {  report,  chronicle-extract,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String? get packageId;

  ChronicleSketchBatchAccessDecisionsInner._();

  factory ChronicleSketchBatchAccessDecisionsInner([
    void updates(ChronicleSketchBatchAccessDecisionsInnerBuilder b),
  ]) = _$ChronicleSketchBatchAccessDecisionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchBatchAccessDecisionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchBatchAccessDecisionsInner> get serializer =>
      _$ChronicleSketchBatchAccessDecisionsInnerSerializer();
}

class _$ChronicleSketchBatchAccessDecisionsInnerSerializer
    implements PrimitiveSerializer<ChronicleSketchBatchAccessDecisionsInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchBatchAccessDecisionsInner,
    _$ChronicleSketchBatchAccessDecisionsInner,
  ];

  @override
  final String wireName = r'ChronicleSketchBatchAccessDecisionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchBatchAccessDecisionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'requestId';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(
        ChronicleSketchBatchAccessDecisionsInnerStatusEnum,
      ),
    );
    if (object.deliveredAs != null) {
      yield r'deliveredAs';
      yield serializers.serialize(
        object.deliveredAs,
        specifiedType: const FullType.nullable(
          ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum,
        ),
      );
    }
    if (object.packageId != null) {
      yield r'packageId';
      yield serializers.serialize(
        object.packageId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchAccessDecisionsInner object, {
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
    required ChronicleSketchBatchAccessDecisionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.requestId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleSketchBatchAccessDecisionsInnerStatusEnum,
                    ),
                  )
                  as ChronicleSketchBatchAccessDecisionsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'deliveredAs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum,
                    ),
                  )
                  as ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum?;
          if (valueDes == null) continue;
          result.deliveredAs = valueDes;
          break;
        case r'packageId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.packageId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchBatchAccessDecisionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchBatchAccessDecisionsInnerBuilder();
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

class ChronicleSketchBatchAccessDecisionsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'granted')
  static const ChronicleSketchBatchAccessDecisionsInnerStatusEnum granted =
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const ChronicleSketchBatchAccessDecisionsInnerStatusEnum declined =
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnum_declined;

  static Serializer<ChronicleSketchBatchAccessDecisionsInnerStatusEnum>
  get serializer =>
      _$chronicleSketchBatchAccessDecisionsInnerStatusEnumSerializer;

  const ChronicleSketchBatchAccessDecisionsInnerStatusEnum._(String name)
    : super(name);

  static BuiltSet<ChronicleSketchBatchAccessDecisionsInnerStatusEnum>
  get values => _$chronicleSketchBatchAccessDecisionsInnerStatusEnumValues;
  static ChronicleSketchBatchAccessDecisionsInnerStatusEnum valueOf(
    String name,
  ) => _$chronicleSketchBatchAccessDecisionsInnerStatusEnumValueOf(name);
}

class ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum report =
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum
  chronicleExtract =
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum_chronicleExtract;

  static Serializer<ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum>
  get serializer =>
      _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumSerializer;

  const ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum._(String name)
    : super(name);

  static BuiltSet<ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum>
  get values => _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumValues;
  static ChronicleSketchBatchAccessDecisionsInnerDeliveredAsEnum valueOf(
    String name,
  ) => _$chronicleSketchBatchAccessDecisionsInnerDeliveredAsEnumValueOf(name);
}
