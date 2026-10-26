//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/retention_preview_item.dart';
import 'package:foresignal_api/src/model/retention_preview_db_cap.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_preview.g.dart';

/// A dry run of what the next retention run would prune under the current policy, computed with the run's own plans and selects as counts only; nothing is deleted (B2/178, R2-015)
///
/// Properties:
/// * [items]
/// * [totalAffected] - Sum of the items' counts
/// * [totalBytesEstimate] - Sum of the items' byte estimates
/// * [generatedAt]
/// * [dbCap]
@BuiltValue()
abstract class RetentionPreview
    implements Built<RetentionPreview, RetentionPreviewBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RetentionPreviewItem> get items;

  /// Sum of the items' counts
  @BuiltValueField(wireName: r'totalAffected')
  int get totalAffected;

  /// Sum of the items' byte estimates
  @BuiltValueField(wireName: r'totalBytesEstimate')
  int? get totalBytesEstimate;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'dbCap')
  RetentionPreviewDbCap? get dbCap;

  RetentionPreview._();

  factory RetentionPreview([void updates(RetentionPreviewBuilder b)]) =
      _$RetentionPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionPreview> get serializer =>
      _$RetentionPreviewSerializer();
}

class _$RetentionPreviewSerializer
    implements PrimitiveSerializer<RetentionPreview> {
  @override
  final Iterable<Type> types = const [RetentionPreview, _$RetentionPreview];

  @override
  final String wireName = r'RetentionPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(RetentionPreviewItem),
      ]),
    );
    yield r'totalAffected';
    yield serializers.serialize(
      object.totalAffected,
      specifiedType: const FullType(int),
    );
    if (object.totalBytesEstimate != null) {
      yield r'totalBytesEstimate';
      yield serializers.serialize(
        object.totalBytesEstimate,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.dbCap != null) {
      yield r'dbCap';
      yield serializers.serialize(
        object.dbCap,
        specifiedType: const FullType.nullable(RetentionPreviewDbCap),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionPreview object, {
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
    required RetentionPreviewBuilder result,
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
                      FullType(RetentionPreviewItem),
                    ]),
                  )
                  as BuiltList<RetentionPreviewItem>;
          result.items.replace(valueDes);
          break;
        case r'totalAffected':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.totalAffected = valueDes;
          break;
        case r'totalBytesEstimate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalBytesEstimate = valueDes;
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'dbCap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RetentionPreviewDbCap,
                    ),
                  )
                  as RetentionPreviewDbCap?;
          if (valueDes == null) continue;
          result.dbCap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionPreviewBuilder();
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
