//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_limits.g.dart';

/// SystemInfoLimits
///
/// Properties:
/// * [pageMax]
/// * [historyPageMax]
/// * [sseClientBuffer]
/// * [liveMaxEntities]
/// * [ingestMaxBytes]
/// * [ingestMaxRecords]
/// * [tileMaxFeatures]
@BuiltValue()
abstract class SystemInfoLimits
    implements Built<SystemInfoLimits, SystemInfoLimitsBuilder> {
  @BuiltValueField(wireName: r'pageMax')
  int? get pageMax;

  @BuiltValueField(wireName: r'historyPageMax')
  int? get historyPageMax;

  @BuiltValueField(wireName: r'sseClientBuffer')
  int? get sseClientBuffer;

  @BuiltValueField(wireName: r'liveMaxEntities')
  int? get liveMaxEntities;

  @BuiltValueField(wireName: r'ingestMaxBytes')
  int? get ingestMaxBytes;

  @BuiltValueField(wireName: r'ingestMaxRecords')
  int? get ingestMaxRecords;

  @BuiltValueField(wireName: r'tileMaxFeatures')
  int? get tileMaxFeatures;

  SystemInfoLimits._();

  factory SystemInfoLimits([void updates(SystemInfoLimitsBuilder b)]) =
      _$SystemInfoLimits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoLimitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoLimits> get serializer =>
      _$SystemInfoLimitsSerializer();
}

class _$SystemInfoLimitsSerializer
    implements PrimitiveSerializer<SystemInfoLimits> {
  @override
  final Iterable<Type> types = const [SystemInfoLimits, _$SystemInfoLimits];

  @override
  final String wireName = r'SystemInfoLimits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pageMax != null) {
      yield r'pageMax';
      yield serializers.serialize(
        object.pageMax,
        specifiedType: const FullType(int),
      );
    }
    if (object.historyPageMax != null) {
      yield r'historyPageMax';
      yield serializers.serialize(
        object.historyPageMax,
        specifiedType: const FullType(int),
      );
    }
    if (object.sseClientBuffer != null) {
      yield r'sseClientBuffer';
      yield serializers.serialize(
        object.sseClientBuffer,
        specifiedType: const FullType(int),
      );
    }
    if (object.liveMaxEntities != null) {
      yield r'liveMaxEntities';
      yield serializers.serialize(
        object.liveMaxEntities,
        specifiedType: const FullType(int),
      );
    }
    if (object.ingestMaxBytes != null) {
      yield r'ingestMaxBytes';
      yield serializers.serialize(
        object.ingestMaxBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.ingestMaxRecords != null) {
      yield r'ingestMaxRecords';
      yield serializers.serialize(
        object.ingestMaxRecords,
        specifiedType: const FullType(int),
      );
    }
    if (object.tileMaxFeatures != null) {
      yield r'tileMaxFeatures';
      yield serializers.serialize(
        object.tileMaxFeatures,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoLimits object, {
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
    required SystemInfoLimitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pageMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.pageMax = valueDes;
          break;
        case r'historyPageMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.historyPageMax = valueDes;
          break;
        case r'sseClientBuffer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sseClientBuffer = valueDes;
          break;
        case r'liveMaxEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.liveMaxEntities = valueDes;
          break;
        case r'ingestMaxBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ingestMaxBytes = valueDes;
          break;
        case r'ingestMaxRecords':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ingestMaxRecords = valueDes;
          break;
        case r'tileMaxFeatures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tileMaxFeatures = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoLimits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoLimitsBuilder();
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
