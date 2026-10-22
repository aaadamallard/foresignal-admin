//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_summary_layers_inner_series_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_summary_layers_inner.g.dart';

/// Layer counts over time
///
/// Properties:
/// * [layerId] - ULID identifier
/// * [name]
/// * [rows]
/// * [series]
@BuiltValue()
abstract class ChronicleSummaryLayersInner
    implements
        Built<ChronicleSummaryLayersInner, ChronicleSummaryLayersInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'layerId')
  String get layerId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'rows')
  int get rows;

  @BuiltValueField(wireName: r'series')
  BuiltList<ChronicleSummaryLayersInnerSeriesInner>? get series;

  ChronicleSummaryLayersInner._();

  factory ChronicleSummaryLayersInner([
    void updates(ChronicleSummaryLayersInnerBuilder b),
  ]) = _$ChronicleSummaryLayersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSummaryLayersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSummaryLayersInner> get serializer =>
      _$ChronicleSummaryLayersInnerSerializer();
}

class _$ChronicleSummaryLayersInnerSerializer
    implements PrimitiveSerializer<ChronicleSummaryLayersInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSummaryLayersInner,
    _$ChronicleSummaryLayersInner,
  ];

  @override
  final String wireName = r'ChronicleSummaryLayersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSummaryLayersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'layerId';
    yield serializers.serialize(
      object.layerId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(int),
    );
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(BuiltList, [
          FullType(ChronicleSummaryLayersInnerSeriesInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSummaryLayersInner object, {
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
    required ChronicleSummaryLayersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'layerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.layerId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'rows':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rows = valueDes;
          break;
        case r'series':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ChronicleSummaryLayersInnerSeriesInner),
                    ]),
                  )
                  as BuiltList<ChronicleSummaryLayersInnerSeriesInner>?;
          if (valueDes == null) continue;
          result.series.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSummaryLayersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSummaryLayersInnerBuilder();
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
