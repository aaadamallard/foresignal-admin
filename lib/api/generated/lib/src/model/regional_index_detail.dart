//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/index_fit_result.dart';
import 'package:foresignal_api/src/model/regional_index_def.dart';
import 'package:foresignal_api/src/model/regional_index_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_detail.g.dart';

/// An index definition with values for a region and time window
///
/// Properties:
/// * [index]
/// * [region]
/// * [from]
/// * [to]
/// * [values]
/// * [latestFit]
@BuiltValue()
abstract class RegionalIndexDetail
    implements Built<RegionalIndexDetail, RegionalIndexDetailBuilder> {
  @BuiltValueField(wireName: r'index')
  RegionalIndexDef get index;

  @BuiltValueField(wireName: r'region')
  String? get region;

  @BuiltValueField(wireName: r'from')
  Date? get from;

  @BuiltValueField(wireName: r'to')
  Date? get to;

  @BuiltValueField(wireName: r'values')
  BuiltList<RegionalIndexValue> get values;

  @BuiltValueField(wireName: r'latestFit')
  IndexFitResult? get latestFit;

  RegionalIndexDetail._();

  factory RegionalIndexDetail([void updates(RegionalIndexDetailBuilder b)]) =
      _$RegionalIndexDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDetail> get serializer =>
      _$RegionalIndexDetailSerializer();
}

class _$RegionalIndexDetailSerializer
    implements PrimitiveSerializer<RegionalIndexDetail> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDetail,
    _$RegionalIndexDetail
  ];

  @override
  final String wireName = r'RegionalIndexDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(RegionalIndexDef),
    );
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(Date),
      );
    }
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(RegionalIndexValue)]),
    );
    if (object.latestFit != null) {
      yield r'latestFit';
      yield serializers.serialize(
        object.latestFit,
        specifiedType: const FullType.nullable(IndexFitResult),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegionalIndexDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegionalIndexDef),
          ) as RegionalIndexDef;
          result.index.replace(valueDes);
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(RegionalIndexValue)]),
          ) as BuiltList<RegionalIndexValue>;
          result.values.replace(valueDes);
          break;
        case r'latestFit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IndexFitResult),
          ) as IndexFitResult?;
          if (valueDes == null) continue;
          result.latestFit.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDetailBuilder();
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
