//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_claim.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_note.g.dart';

/// An analyst note with typed, cited claims; carries the automated-analysis footer
///
/// Properties:
/// * [id] - ULID identifier
/// * [profileId] - ULID identifier
/// * [runId] - ULID identifier
/// * [title]
/// * [body] - Markdown, ≤ 2,000 words
/// * [priority]
/// * [claims]
/// * [citations]
/// * [private] - True when it cites anything private
/// * [status]
/// * [model]
/// * [footer]
/// * [createdAt]
@BuiltValue()
abstract class AnalystNote implements Built<AnalystNote, AnalystNoteBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  /// ULID identifier
  @BuiltValueField(wireName: r'runId')
  String get runId;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Markdown, ≤ 2,000 words
  @BuiltValueField(wireName: r'body')
  String get body;

  @BuiltValueField(wireName: r'priority')
  AnalystNotePriorityEnum get priority;
  // enum priorityEnum {  low,  normal,  high,  };

  @BuiltValueField(wireName: r'claims')
  BuiltList<AnalystClaim> get claims;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  /// True when it cites anything private
  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'status')
  AnalystNoteStatusEnum get status;
  // enum statusEnum {  new,  read,  dismissed,  };

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'footer')
  String? get footer;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  AnalystNote._();

  factory AnalystNote([void updates(AnalystNoteBuilder b)]) = _$AnalystNote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystNoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystNote> get serializer => _$AnalystNoteSerializer();
}

class _$AnalystNoteSerializer implements PrimitiveSerializer<AnalystNote> {
  @override
  final Iterable<Type> types = const [AnalystNote, _$AnalystNote];

  @override
  final String wireName = r'AnalystNote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystNote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    yield r'runId';
    yield serializers.serialize(
      object.runId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(AnalystNotePriorityEnum),
    );
    yield r'claims';
    yield serializers.serialize(
      object.claims,
      specifiedType: const FullType(BuiltList, [FullType(AnalystClaim)]),
    );
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AnalystNoteStatusEnum),
    );
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.footer != null) {
      yield r'footer';
      yield serializers.serialize(
        object.footer,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystNote object, {
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
    required AnalystNoteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'profileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileId = valueDes;
          break;
        case r'runId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystNotePriorityEnum),
          ) as AnalystNotePriorityEnum;
          result.priority = valueDes;
          break;
        case r'claims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AnalystClaim)]),
          ) as BuiltList<AnalystClaim>;
          result.claims.replace(valueDes);
          break;
        case r'citations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystNoteStatusEnum),
          ) as AnalystNoteStatusEnum;
          result.status = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'footer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.footer = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystNote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystNoteBuilder();
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

class AnalystNotePriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnalystNotePriorityEnum low = _$analystNotePriorityEnum_low;
  @BuiltValueEnumConst(wireName: r'normal')
  static const AnalystNotePriorityEnum normal =
      _$analystNotePriorityEnum_normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnalystNotePriorityEnum high = _$analystNotePriorityEnum_high;

  static Serializer<AnalystNotePriorityEnum> get serializer =>
      _$analystNotePriorityEnumSerializer;

  const AnalystNotePriorityEnum._(String name) : super(name);

  static BuiltSet<AnalystNotePriorityEnum> get values =>
      _$analystNotePriorityEnumValues;
  static AnalystNotePriorityEnum valueOf(String name) =>
      _$analystNotePriorityEnumValueOf(name);
}

class AnalystNoteStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'new')
  static const AnalystNoteStatusEnum new_ = _$analystNoteStatusEnum_new_;
  @BuiltValueEnumConst(wireName: r'read')
  static const AnalystNoteStatusEnum read = _$analystNoteStatusEnum_read;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const AnalystNoteStatusEnum dismissed =
      _$analystNoteStatusEnum_dismissed;

  static Serializer<AnalystNoteStatusEnum> get serializer =>
      _$analystNoteStatusEnumSerializer;

  const AnalystNoteStatusEnum._(String name) : super(name);

  static BuiltSet<AnalystNoteStatusEnum> get values =>
      _$analystNoteStatusEnumValues;
  static AnalystNoteStatusEnum valueOf(String name) =>
      _$analystNoteStatusEnumValueOf(name);
}
