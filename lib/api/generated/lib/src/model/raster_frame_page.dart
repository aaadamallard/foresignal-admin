//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/raster_frame.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/raster_frame_page_prefetch.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raster_frame_page.g.dart';

/// Cursor page of frames
///
/// Properties:
/// * [items]
/// * [nextCursor]
/// * [prefetch]
/// * [serverTime]
/// * [earliest] - Oldest retained frame
@BuiltValue()
abstract class RasterFramePage
    implements Built<RasterFramePage, RasterFramePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RasterFrame> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'prefetch')
  RasterFramePagePrefetch? get prefetch;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  /// Oldest retained frame
  @BuiltValueField(wireName: r'earliest')
  DateTime? get earliest;

  RasterFramePage._();

  factory RasterFramePage([void updates(RasterFramePageBuilder b)]) =
      _$RasterFramePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RasterFramePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RasterFramePage> get serializer =>
      _$RasterFramePageSerializer();
}

class _$RasterFramePageSerializer
    implements PrimitiveSerializer<RasterFramePage> {
  @override
  final Iterable<Type> types = const [RasterFramePage, _$RasterFramePage];

  @override
  final String wireName = r'RasterFramePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RasterFramePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RasterFrame)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.prefetch != null) {
      yield r'prefetch';
      yield serializers.serialize(
        object.prefetch,
        specifiedType: const FullType(RasterFramePagePrefetch),
      );
    }
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.earliest != null) {
      yield r'earliest';
      yield serializers.serialize(
        object.earliest,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RasterFramePage object, {
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
    required RasterFramePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RasterFrame),
                    ]),
                  )
                  as BuiltList<RasterFrame>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        case r'prefetch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RasterFramePagePrefetch,
                    ),
                  )
                  as RasterFramePagePrefetch?;
          if (valueDes == null) continue;
          result.prefetch.replace(valueDes);
          break;
        case r'serverTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.serverTime = valueDes;
          break;
        case r'earliest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.earliest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RasterFramePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RasterFramePageBuilder();
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
