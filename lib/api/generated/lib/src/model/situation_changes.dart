//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/situation_changes_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/situation_changes_severity.dart';
import 'package:foresignal_api/src/model/situation_changes_area.dart';
import 'package:foresignal_api/src/model/situation_changes_new_members.dart';
import 'package:foresignal_api/src/model/situation_changes_key_values_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_changes.g.dart';

/// What changed since a day: diff of the daily snapshot and the current state (no LLM)
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [since] - Requested time; the snapshot of its UTC day is the baseline
/// * [baselineDay] - Snapshot day used; null when the situation started after `since`
/// * [now]
/// * [status]
/// * [severity]
/// * [newMembers]
/// * [area]
/// * [regionsAdded]
/// * [regionsRemoved]
/// * [keyValues]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SituationChanges
    implements Built<SituationChanges, SituationChangesBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  /// Requested time; the snapshot of its UTC day is the baseline
  @BuiltValueField(wireName: r'since')
  DateTime get since;

  /// Snapshot day used; null when the situation started after `since`
  @BuiltValueField(wireName: r'baselineDay')
  Date? get baselineDay;

  @BuiltValueField(wireName: r'now')
  DateTime get now;

  @BuiltValueField(wireName: r'status')
  SituationChangesStatus get status;

  @BuiltValueField(wireName: r'severity')
  SituationChangesSeverity get severity;

  @BuiltValueField(wireName: r'newMembers')
  SituationChangesNewMembers get newMembers;

  @BuiltValueField(wireName: r'area')
  SituationChangesArea? get area;

  @BuiltValueField(wireName: r'regionsAdded')
  BuiltList<String> get regionsAdded;

  @BuiltValueField(wireName: r'regionsRemoved')
  BuiltList<String>? get regionsRemoved;

  @BuiltValueField(wireName: r'keyValues')
  BuiltList<SituationChangesKeyValuesInner>? get keyValues;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SituationChanges._();

  factory SituationChanges([void updates(SituationChangesBuilder b)]) =
      _$SituationChanges;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationChangesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationChanges> get serializer =>
      _$SituationChangesSerializer();
}

class _$SituationChangesSerializer
    implements PrimitiveSerializer<SituationChanges> {
  @override
  final Iterable<Type> types = const [SituationChanges, _$SituationChanges];

  @override
  final String wireName = r'SituationChanges';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationChanges object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    if (object.baselineDay != null) {
      yield r'baselineDay';
      yield serializers.serialize(
        object.baselineDay,
        specifiedType: const FullType.nullable(Date),
      );
    }
    yield r'now';
    yield serializers.serialize(
      object.now,
      specifiedType: const FullType(DateTime),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SituationChangesStatus),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(SituationChangesSeverity),
    );
    yield r'newMembers';
    yield serializers.serialize(
      object.newMembers,
      specifiedType: const FullType(SituationChangesNewMembers),
    );
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(SituationChangesArea),
      );
    }
    yield r'regionsAdded';
    yield serializers.serialize(
      object.regionsAdded,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.regionsRemoved != null) {
      yield r'regionsRemoved';
      yield serializers.serialize(
        object.regionsRemoved,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.keyValues != null) {
      yield r'keyValues';
      yield serializers.serialize(
        object.keyValues,
        specifiedType: const FullType(
            BuiltList, [FullType(SituationChangesKeyValuesInner)]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationChanges object, {
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
    required SituationChangesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.situationId = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.since = valueDes;
          break;
        case r'baselineDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.baselineDay = valueDes;
          break;
        case r'now':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.now = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationChangesStatus),
          ) as SituationChangesStatus;
          result.status.replace(valueDes);
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationChangesSeverity),
          ) as SituationChangesSeverity;
          result.severity.replace(valueDes);
          break;
        case r'newMembers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationChangesNewMembers),
          ) as SituationChangesNewMembers;
          result.newMembers.replace(valueDes);
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationChangesArea),
          ) as SituationChangesArea?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'regionsAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.regionsAdded.replace(valueDes);
          break;
        case r'regionsRemoved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionsRemoved.replace(valueDes);
          break;
        case r'keyValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SituationChangesKeyValuesInner)]),
          ) as BuiltList<SituationChangesKeyValuesInner>?;
          if (valueDes == null) continue;
          result.keyValues.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationChanges deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationChangesBuilder();
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
