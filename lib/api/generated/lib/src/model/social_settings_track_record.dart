//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_settings_track_record_overrides_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_track_record.g.dart';

/// Admiralty source-reliability grading of accounts and channels
///
/// Properties:
/// * [minAssessed]
/// * [gradeEShare]
/// * [gradeDShare]
/// * [overrides]
@BuiltValue()
abstract class SocialSettingsTrackRecord
    implements
        Built<SocialSettingsTrackRecord, SocialSettingsTrackRecordBuilder> {
  @BuiltValueField(wireName: r'minAssessed')
  int? get minAssessed;

  @BuiltValueField(wireName: r'gradeEShare')
  num? get gradeEShare;

  @BuiltValueField(wireName: r'gradeDShare')
  num? get gradeDShare;

  @BuiltValueField(wireName: r'overrides')
  BuiltList<SocialSettingsTrackRecordOverridesInner>? get overrides;

  SocialSettingsTrackRecord._();

  factory SocialSettingsTrackRecord(
          [void updates(SocialSettingsTrackRecordBuilder b)]) =
      _$SocialSettingsTrackRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsTrackRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsTrackRecord> get serializer =>
      _$SocialSettingsTrackRecordSerializer();
}

class _$SocialSettingsTrackRecordSerializer
    implements PrimitiveSerializer<SocialSettingsTrackRecord> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsTrackRecord,
    _$SocialSettingsTrackRecord
  ];

  @override
  final String wireName = r'SocialSettingsTrackRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsTrackRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minAssessed != null) {
      yield r'minAssessed';
      yield serializers.serialize(
        object.minAssessed,
        specifiedType: const FullType(int),
      );
    }
    if (object.gradeEShare != null) {
      yield r'gradeEShare';
      yield serializers.serialize(
        object.gradeEShare,
        specifiedType: const FullType(num),
      );
    }
    if (object.gradeDShare != null) {
      yield r'gradeDShare';
      yield serializers.serialize(
        object.gradeDShare,
        specifiedType: const FullType(num),
      );
    }
    if (object.overrides != null) {
      yield r'overrides';
      yield serializers.serialize(
        object.overrides,
        specifiedType: const FullType(
            BuiltList, [FullType(SocialSettingsTrackRecordOverridesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsTrackRecord object, {
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
    required SocialSettingsTrackRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minAssessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAssessed = valueDes;
          break;
        case r'gradeEShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gradeEShare = valueDes;
          break;
        case r'gradeDShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gradeDShare = valueDes;
          break;
        case r'overrides':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SocialSettingsTrackRecordOverridesInner)]),
          ) as BuiltList<SocialSettingsTrackRecordOverridesInner>?;
          if (valueDes == null) continue;
          result.overrides.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsTrackRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsTrackRecordBuilder();
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
