//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_packet_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet_outlooks.g.dart';

/// Outlook and index changes
///
/// Properties:
/// * [indexChanges]
/// * [windowsOutsideP10P90]
@BuiltValue()
abstract class CyclePacketOutlooks
    implements Built<CyclePacketOutlooks, CyclePacketOutlooksBuilder> {
  @BuiltValueField(wireName: r'indexChanges')
  BuiltList<CyclePacketItem>? get indexChanges;

  @BuiltValueField(wireName: r'windowsOutsideP10P90')
  BuiltList<CyclePacketItem>? get windowsOutsideP10P90;

  CyclePacketOutlooks._();

  factory CyclePacketOutlooks([void updates(CyclePacketOutlooksBuilder b)]) =
      _$CyclePacketOutlooks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketOutlooksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacketOutlooks> get serializer =>
      _$CyclePacketOutlooksSerializer();
}

class _$CyclePacketOutlooksSerializer
    implements PrimitiveSerializer<CyclePacketOutlooks> {
  @override
  final Iterable<Type> types = const [
    CyclePacketOutlooks,
    _$CyclePacketOutlooks,
  ];

  @override
  final String wireName = r'CyclePacketOutlooks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacketOutlooks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.indexChanges != null) {
      yield r'indexChanges';
      yield serializers.serialize(
        object.indexChanges,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.windowsOutsideP10P90 != null) {
      yield r'windowsOutsideP10P90';
      yield serializers.serialize(
        object.windowsOutsideP10P90,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketOutlooks object, {
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
    required CyclePacketOutlooksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indexChanges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.indexChanges.replace(valueDes);
          break;
        case r'windowsOutsideP10P90':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.windowsOutsideP10P90.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacketOutlooks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketOutlooksBuilder();
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
