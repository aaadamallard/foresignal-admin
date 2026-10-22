//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'usage_point.g.dart';

/// UsagePoint
///
/// Properties:
/// * [t]
/// * [requests]
/// * [bytes]
/// * [errors]
/// * [refused]
/// * [recordsSeen]
/// * [versions]
/// * [liveUpdates]
/// * [touches]
/// * [late_]
/// * [skipped]
/// * [rejected]
/// * [versionBytes]
@BuiltValue()
abstract class UsagePoint implements Built<UsagePoint, UsagePointBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'requests')
  int get requests;

  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  @BuiltValueField(wireName: r'errors')
  int get errors;

  @BuiltValueField(wireName: r'refused')
  int get refused;

  @BuiltValueField(wireName: r'recordsSeen')
  int? get recordsSeen;

  @BuiltValueField(wireName: r'versions')
  int? get versions;

  @BuiltValueField(wireName: r'liveUpdates')
  int? get liveUpdates;

  @BuiltValueField(wireName: r'touches')
  int? get touches;

  @BuiltValueField(wireName: r'late')
  int? get late_;

  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  @BuiltValueField(wireName: r'versionBytes')
  int? get versionBytes;

  UsagePoint._();

  factory UsagePoint([void updates(UsagePointBuilder b)]) = _$UsagePoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsagePointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsagePoint> get serializer => _$UsagePointSerializer();
}

class _$UsagePointSerializer implements PrimitiveSerializer<UsagePoint> {
  @override
  final Iterable<Type> types = const [UsagePoint, _$UsagePoint];

  @override
  final String wireName = r'UsagePoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsagePoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'requests';
    yield serializers.serialize(
      object.requests,
      specifiedType: const FullType(int),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(int),
    );
    yield r'refused';
    yield serializers.serialize(
      object.refused,
      specifiedType: const FullType(int),
    );
    if (object.recordsSeen != null) {
      yield r'recordsSeen';
      yield serializers.serialize(
        object.recordsSeen,
        specifiedType: const FullType(int),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(int),
      );
    }
    if (object.liveUpdates != null) {
      yield r'liveUpdates';
      yield serializers.serialize(
        object.liveUpdates,
        specifiedType: const FullType(int),
      );
    }
    if (object.touches != null) {
      yield r'touches';
      yield serializers.serialize(
        object.touches,
        specifiedType: const FullType(int),
      );
    }
    if (object.late_ != null) {
      yield r'late';
      yield serializers.serialize(
        object.late_,
        specifiedType: const FullType(int),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
    if (object.versionBytes != null) {
      yield r'versionBytes';
      yield serializers.serialize(
        object.versionBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsagePoint object, {
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
    required UsagePointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t = valueDes;
          break;
        case r'requests':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.requests = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.bytes = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.errors = valueDes;
          break;
        case r'refused':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.refused = valueDes;
          break;
        case r'recordsSeen':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.recordsSeen = valueDes;
          break;
        case r'versions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.versions = valueDes;
          break;
        case r'liveUpdates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.liveUpdates = valueDes;
          break;
        case r'touches':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.touches = valueDes;
          break;
        case r'late':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.late_ = valueDes;
          break;
        case r'skipped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'rejected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        case r'versionBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.versionBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsagePoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsagePointBuilder();
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
