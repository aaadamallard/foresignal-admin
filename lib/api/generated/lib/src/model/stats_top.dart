//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stats_top_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_top.g.dart';

/// Top-N by source, kind, cell or entity (038)
///
/// Properties:
/// * [by]
/// * [measure]
/// * [from]
/// * [to]
/// * [backend]
/// * [items]
@BuiltValue()
abstract class StatsTop implements Built<StatsTop, StatsTopBuilder> {
  @BuiltValueField(wireName: r'by')
  StatsTopByEnum get by;
  // enum byEnum {  source,  kind,  cell,  entity,  };

  @BuiltValueField(wireName: r'measure')
  String get measure;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'backend')
  StatsTopBackendEnum? get backend;
  // enum backendEnum {  rollup,  raw,  mixed,  };

  @BuiltValueField(wireName: r'items')
  BuiltList<StatsTopItemsInner> get items;

  StatsTop._();

  factory StatsTop([void updates(StatsTopBuilder b)]) = _$StatsTop;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsTopBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsTop> get serializer => _$StatsTopSerializer();
}

class _$StatsTopSerializer implements PrimitiveSerializer<StatsTop> {
  @override
  final Iterable<Type> types = const [StatsTop, _$StatsTop];

  @override
  final String wireName = r'StatsTop';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsTop object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(StatsTopByEnum),
    );
    yield r'measure';
    yield serializers.serialize(
      object.measure,
      specifiedType: const FullType(String),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.backend != null) {
      yield r'backend';
      yield serializers.serialize(
        object.backend,
        specifiedType: const FullType(StatsTopBackendEnum),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(StatsTopItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsTop object, {
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
    required StatsTopBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'by':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatsTopByEnum),
                  )
                  as StatsTopByEnum;
          result.by = valueDes;
          break;
        case r'measure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.measure = valueDes;
          break;
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
        case r'backend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StatsTopBackendEnum),
                  )
                  as StatsTopBackendEnum?;
          if (valueDes == null) continue;
          result.backend = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(StatsTopItemsInner),
                    ]),
                  )
                  as BuiltList<StatsTopItemsInner>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsTop deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsTopBuilder();
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

class StatsTopByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'source')
  static const StatsTopByEnum source_ = _$statsTopByEnum_source_;
  @BuiltValueEnumConst(wireName: r'kind')
  static const StatsTopByEnum kind = _$statsTopByEnum_kind;
  @BuiltValueEnumConst(wireName: r'cell')
  static const StatsTopByEnum cell = _$statsTopByEnum_cell;
  @BuiltValueEnumConst(wireName: r'entity')
  static const StatsTopByEnum entity = _$statsTopByEnum_entity;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsTopByEnum unknownDefaultOpenApi =
      _$statsTopByEnum_unknownDefaultOpenApi;

  static Serializer<StatsTopByEnum> get serializer =>
      _$statsTopByEnumSerializer;

  const StatsTopByEnum._(String name) : super(name);

  static BuiltSet<StatsTopByEnum> get values => _$statsTopByEnumValues;
  static StatsTopByEnum valueOf(String name) => _$statsTopByEnumValueOf(name);
}

class StatsTopBackendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rollup')
  static const StatsTopBackendEnum rollup = _$statsTopBackendEnum_rollup;
  @BuiltValueEnumConst(wireName: r'raw')
  static const StatsTopBackendEnum raw = _$statsTopBackendEnum_raw;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const StatsTopBackendEnum mixed = _$statsTopBackendEnum_mixed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsTopBackendEnum unknownDefaultOpenApi =
      _$statsTopBackendEnum_unknownDefaultOpenApi;

  static Serializer<StatsTopBackendEnum> get serializer =>
      _$statsTopBackendEnumSerializer;

  const StatsTopBackendEnum._(String name) : super(name);

  static BuiltSet<StatsTopBackendEnum> get values =>
      _$statsTopBackendEnumValues;
  static StatsTopBackendEnum valueOf(String name) =>
      _$statsTopBackendEnumValueOf(name);
}
