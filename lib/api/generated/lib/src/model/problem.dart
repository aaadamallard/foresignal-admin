//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/problem_errors_inner.dart';
import 'package:foresignal_api/src/model/problem_references.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'problem.g.dart';

/// Problem
///
/// Properties:
/// * [type]
/// * [title]
/// * [status]
/// * [detail]
/// * [instance]
/// * [code] - Stable machine code
/// * [errors]
/// * [purgeHorizon] - RESYNC_REQUIRED: purge horizon seq
/// * [watermarkSeq] - RESYNC_REQUIRED: current watermark
/// * [horizon] - ASOF_BEYOND_RETENTION: earliest supported asOf
/// * [capUsd] - BUDGET_EXCEEDED: monthly money cap
/// * [spentUsd] - BUDGET_EXCEEDED: spent this month
/// * [estimateUsd] - BUDGET_EXCEEDED: estimated cost of the refused call
/// * [requiredScope] - INSUFFICIENT_SCOPE: the scope the operation needs (023)
/// * [class_] - RATE_LIMITED: the rate-limit class that refused the request (035)
/// * [retryAfterSeconds] - RATE_LIMITED: seconds to wait, as in Retry-After (035)
/// * [references]
/// * [reason] - VALIDATION_FAILED from ImageGuard (043): the refusal (file-too-large, unknown-format, bigtiff, content-type-mismatch, truncated, side-too-long, too-many-pixels, multi-image, unreadable)
@BuiltValue()
abstract class Problem implements Built<Problem, ProblemBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  int get status;

  @BuiltValueField(wireName: r'detail')
  String? get detail;

  @BuiltValueField(wireName: r'instance')
  String? get instance;

  /// Stable machine code
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ProblemErrorsInner>? get errors;

  /// RESYNC_REQUIRED: purge horizon seq
  @BuiltValueField(wireName: r'purgeHorizon')
  int? get purgeHorizon;

  /// RESYNC_REQUIRED: current watermark
  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  /// ASOF_BEYOND_RETENTION: earliest supported asOf
  @BuiltValueField(wireName: r'horizon')
  DateTime? get horizon;

  /// BUDGET_EXCEEDED: monthly money cap
  @BuiltValueField(wireName: r'capUsd')
  num? get capUsd;

  /// BUDGET_EXCEEDED: spent this month
  @BuiltValueField(wireName: r'spentUsd')
  num? get spentUsd;

  /// BUDGET_EXCEEDED: estimated cost of the refused call
  @BuiltValueField(wireName: r'estimateUsd')
  num? get estimateUsd;

  /// INSUFFICIENT_SCOPE: the scope the operation needs (023)
  @BuiltValueField(wireName: r'requiredScope')
  ProblemRequiredScopeEnum? get requiredScope;
  // enum requiredScopeEnum {  read,  agent,  admin,  };

  /// RATE_LIMITED: the rate-limit class that refused the request (035)
  @BuiltValueField(wireName: r'class')
  ProblemClass_Enum? get class_;
  // enum class_Enum {  read,  tiles,  stream,  expensive,  write,  anonymous,  metrics,  };

  /// RATE_LIMITED: seconds to wait, as in Retry-After (035)
  @BuiltValueField(wireName: r'retryAfterSeconds')
  int? get retryAfterSeconds;

  @BuiltValueField(wireName: r'references')
  ProblemReferences? get references;

  /// VALIDATION_FAILED from ImageGuard (043): the refusal (file-too-large, unknown-format, bigtiff, content-type-mismatch, truncated, side-too-long, too-many-pixels, multi-image, unreadable)
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  Problem._();

  factory Problem([void updates(ProblemBuilder b)]) = _$Problem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProblemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Problem> get serializer => _$ProblemSerializer();
}

class _$ProblemSerializer implements PrimitiveSerializer<Problem> {
  @override
  final Iterable<Type> types = const [Problem, _$Problem];

  @override
  final String wireName = r'Problem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Problem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(int),
    );
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(String),
      );
    }
    if (object.instance != null) {
      yield r'instance';
      yield serializers.serialize(
        object.instance,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(BuiltList, [
          FullType(ProblemErrorsInner),
        ]),
      );
    }
    if (object.purgeHorizon != null) {
      yield r'purgeHorizon';
      yield serializers.serialize(
        object.purgeHorizon,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.capUsd != null) {
      yield r'capUsd';
      yield serializers.serialize(
        object.capUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.spentUsd != null) {
      yield r'spentUsd';
      yield serializers.serialize(
        object.spentUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimateUsd != null) {
      yield r'estimateUsd';
      yield serializers.serialize(
        object.estimateUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.requiredScope != null) {
      yield r'requiredScope';
      yield serializers.serialize(
        object.requiredScope,
        specifiedType: const FullType.nullable(ProblemRequiredScopeEnum),
      );
    }
    if (object.class_ != null) {
      yield r'class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType.nullable(ProblemClass_Enum),
      );
    }
    if (object.retryAfterSeconds != null) {
      yield r'retryAfterSeconds';
      yield serializers.serialize(
        object.retryAfterSeconds,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.references != null) {
      yield r'references';
      yield serializers.serialize(
        object.references,
        specifiedType: const FullType.nullable(ProblemReferences),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Problem object, {
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
    required ProblemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.status = valueDes;
          break;
        case r'detail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        case r'instance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instance = valueDes;
          break;
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'errors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProblemErrorsInner),
                    ]),
                  )
                  as BuiltList<ProblemErrorsInner>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'purgeHorizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.purgeHorizon = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'capUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.capUsd = valueDes;
          break;
        case r'spentUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.spentUsd = valueDes;
          break;
        case r'estimateUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.estimateUsd = valueDes;
          break;
        case r'requiredScope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProblemRequiredScopeEnum,
                    ),
                  )
                  as ProblemRequiredScopeEnum?;
          if (valueDes == null) continue;
          result.requiredScope = valueDes;
          break;
        case r'class':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProblemClass_Enum),
                  )
                  as ProblemClass_Enum?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        case r'retryAfterSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.retryAfterSeconds = valueDes;
          break;
        case r'references':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProblemReferences),
                  )
                  as ProblemReferences?;
          if (valueDes == null) continue;
          result.references.replace(valueDes);
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Problem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProblemBuilder();
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

/// INSUFFICIENT_SCOPE: the scope the operation needs (023)
class ProblemRequiredScopeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ProblemRequiredScopeEnum read = _$problemRequiredScopeEnum_read;
  @BuiltValueEnumConst(wireName: r'agent')
  static const ProblemRequiredScopeEnum agent =
      _$problemRequiredScopeEnum_agent;
  @BuiltValueEnumConst(wireName: r'admin')
  static const ProblemRequiredScopeEnum admin =
      _$problemRequiredScopeEnum_admin;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProblemRequiredScopeEnum unknownDefaultOpenApi =
      _$problemRequiredScopeEnum_unknownDefaultOpenApi;

  static Serializer<ProblemRequiredScopeEnum> get serializer =>
      _$problemRequiredScopeEnumSerializer;

  const ProblemRequiredScopeEnum._(String name) : super(name);

  static BuiltSet<ProblemRequiredScopeEnum> get values =>
      _$problemRequiredScopeEnumValues;
  static ProblemRequiredScopeEnum valueOf(String name) =>
      _$problemRequiredScopeEnumValueOf(name);
}

/// RATE_LIMITED: the rate-limit class that refused the request (035)
class ProblemClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'read')
  static const ProblemClass_Enum read = _$problemClassEnum_read;
  @BuiltValueEnumConst(wireName: r'tiles')
  static const ProblemClass_Enum tiles = _$problemClassEnum_tiles;
  @BuiltValueEnumConst(wireName: r'stream')
  static const ProblemClass_Enum stream = _$problemClassEnum_stream;
  @BuiltValueEnumConst(wireName: r'expensive')
  static const ProblemClass_Enum expensive = _$problemClassEnum_expensive;
  @BuiltValueEnumConst(wireName: r'write')
  static const ProblemClass_Enum write = _$problemClassEnum_write;
  @BuiltValueEnumConst(wireName: r'anonymous')
  static const ProblemClass_Enum anonymous = _$problemClassEnum_anonymous;
  @BuiltValueEnumConst(wireName: r'metrics')
  static const ProblemClass_Enum metrics = _$problemClassEnum_metrics;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProblemClass_Enum unknownDefaultOpenApi =
      _$problemClassEnum_unknownDefaultOpenApi;

  static Serializer<ProblemClass_Enum> get serializer =>
      _$problemClassEnumSerializer;

  const ProblemClass_Enum._(String name) : super(name);

  static BuiltSet<ProblemClass_Enum> get values => _$problemClassEnumValues;
  static ProblemClass_Enum valueOf(String name) =>
      _$problemClassEnumValueOf(name);
}
