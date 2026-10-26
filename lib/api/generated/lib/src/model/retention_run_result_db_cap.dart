//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_run_result_db_cap.g.dart';

/// What the database-size cap did this run (R2-015); null when it is off
///
/// Properties:
/// * [capBytes]
/// * [sizeBeforeBytes] - Database size after the window pass
/// * [sizeAfterBytes]
/// * [bytesReclaimed] - How far the size fell during the cap steps. Deleted rows free space Postgres reuses; files shrink only on a partition drop or VACUUM FULL.
/// * [windowDays] - History window in force at the end, or null for the configured windows
/// * [steps]
/// * [action]
/// * [deleted] - Rows deleted by the cap steps, by table
@BuiltValue()
abstract class RetentionRunResultDbCap
    implements Built<RetentionRunResultDbCap, RetentionRunResultDbCapBuilder> {
  @BuiltValueField(wireName: r'capBytes')
  int? get capBytes;

  /// Database size after the window pass
  @BuiltValueField(wireName: r'sizeBeforeBytes')
  int? get sizeBeforeBytes;

  @BuiltValueField(wireName: r'sizeAfterBytes')
  int? get sizeAfterBytes;

  /// How far the size fell during the cap steps. Deleted rows free space Postgres reuses; files shrink only on a partition drop or VACUUM FULL.
  @BuiltValueField(wireName: r'bytesReclaimed')
  int? get bytesReclaimed;

  /// History window in force at the end, or null for the configured windows
  @BuiltValueField(wireName: r'windowDays')
  int? get windowDays;

  @BuiltValueField(wireName: r'steps')
  int? get steps;

  @BuiltValueField(wireName: r'action')
  String? get action;

  /// Rows deleted by the cap steps, by table
  @BuiltValueField(wireName: r'deleted')
  BuiltMap<String, int>? get deleted;

  RetentionRunResultDbCap._();

  factory RetentionRunResultDbCap([
    void updates(RetentionRunResultDbCapBuilder b),
  ]) = _$RetentionRunResultDbCap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionRunResultDbCapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionRunResultDbCap> get serializer =>
      _$RetentionRunResultDbCapSerializer();
}

class _$RetentionRunResultDbCapSerializer
    implements PrimitiveSerializer<RetentionRunResultDbCap> {
  @override
  final Iterable<Type> types = const [
    RetentionRunResultDbCap,
    _$RetentionRunResultDbCap,
  ];

  @override
  final String wireName = r'RetentionRunResultDbCap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionRunResultDbCap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.capBytes != null) {
      yield r'capBytes';
      yield serializers.serialize(
        object.capBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.sizeBeforeBytes != null) {
      yield r'sizeBeforeBytes';
      yield serializers.serialize(
        object.sizeBeforeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.sizeAfterBytes != null) {
      yield r'sizeAfterBytes';
      yield serializers.serialize(
        object.sizeAfterBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytesReclaimed != null) {
      yield r'bytesReclaimed';
      yield serializers.serialize(
        object.bytesReclaimed,
        specifiedType: const FullType(int),
      );
    }
    if (object.windowDays != null) {
      yield r'windowDays';
      yield serializers.serialize(
        object.windowDays,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.steps != null) {
      yield r'steps';
      yield serializers.serialize(
        object.steps,
        specifiedType: const FullType(int),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionRunResultDbCap object, {
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
    required RetentionRunResultDbCapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'capBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.capBytes = valueDes;
          break;
        case r'sizeBeforeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBeforeBytes = valueDes;
          break;
        case r'sizeAfterBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeAfterBytes = valueDes;
          break;
        case r'bytesReclaimed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytesReclaimed = valueDes;
          break;
        case r'windowDays':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.windowDays = valueDes;
          break;
        case r'steps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.steps = valueDes;
          break;
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'deleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.deleted.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionRunResultDbCap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionRunResultDbCapBuilder();
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
