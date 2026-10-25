// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProblemRequiredScopeEnum _$problemRequiredScopeEnum_read =
    const ProblemRequiredScopeEnum._('read');
const ProblemRequiredScopeEnum _$problemRequiredScopeEnum_agent =
    const ProblemRequiredScopeEnum._('agent');
const ProblemRequiredScopeEnum _$problemRequiredScopeEnum_admin =
    const ProblemRequiredScopeEnum._('admin');
const ProblemRequiredScopeEnum
_$problemRequiredScopeEnum_unknownDefaultOpenApi =
    const ProblemRequiredScopeEnum._('unknownDefaultOpenApi');

ProblemRequiredScopeEnum _$problemRequiredScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$problemRequiredScopeEnum_read;
    case 'agent':
      return _$problemRequiredScopeEnum_agent;
    case 'admin':
      return _$problemRequiredScopeEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$problemRequiredScopeEnum_unknownDefaultOpenApi;
    default:
      return _$problemRequiredScopeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProblemRequiredScopeEnum> _$problemRequiredScopeEnumValues =
    BuiltSet<ProblemRequiredScopeEnum>(const <ProblemRequiredScopeEnum>[
      _$problemRequiredScopeEnum_read,
      _$problemRequiredScopeEnum_agent,
      _$problemRequiredScopeEnum_admin,
      _$problemRequiredScopeEnum_unknownDefaultOpenApi,
    ]);

const ProblemClass_Enum _$problemClassEnum_read = const ProblemClass_Enum._(
  'read',
);
const ProblemClass_Enum _$problemClassEnum_tiles = const ProblemClass_Enum._(
  'tiles',
);
const ProblemClass_Enum _$problemClassEnum_stream = const ProblemClass_Enum._(
  'stream',
);
const ProblemClass_Enum _$problemClassEnum_expensive =
    const ProblemClass_Enum._('expensive');
const ProblemClass_Enum _$problemClassEnum_write = const ProblemClass_Enum._(
  'write',
);
const ProblemClass_Enum _$problemClassEnum_anonymous =
    const ProblemClass_Enum._('anonymous');
const ProblemClass_Enum _$problemClassEnum_metrics = const ProblemClass_Enum._(
  'metrics',
);
const ProblemClass_Enum _$problemClassEnum_unknownDefaultOpenApi =
    const ProblemClass_Enum._('unknownDefaultOpenApi');

ProblemClass_Enum _$problemClassEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$problemClassEnum_read;
    case 'tiles':
      return _$problemClassEnum_tiles;
    case 'stream':
      return _$problemClassEnum_stream;
    case 'expensive':
      return _$problemClassEnum_expensive;
    case 'write':
      return _$problemClassEnum_write;
    case 'anonymous':
      return _$problemClassEnum_anonymous;
    case 'metrics':
      return _$problemClassEnum_metrics;
    case 'unknownDefaultOpenApi':
      return _$problemClassEnum_unknownDefaultOpenApi;
    default:
      return _$problemClassEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProblemClass_Enum> _$problemClassEnumValues =
    BuiltSet<ProblemClass_Enum>(const <ProblemClass_Enum>[
      _$problemClassEnum_read,
      _$problemClassEnum_tiles,
      _$problemClassEnum_stream,
      _$problemClassEnum_expensive,
      _$problemClassEnum_write,
      _$problemClassEnum_anonymous,
      _$problemClassEnum_metrics,
      _$problemClassEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProblemRequiredScopeEnum> _$problemRequiredScopeEnumSerializer =
    _$ProblemRequiredScopeEnumSerializer();
Serializer<ProblemClass_Enum> _$problemClassEnumSerializer =
    _$ProblemClass_EnumSerializer();

class _$ProblemRequiredScopeEnumSerializer
    implements PrimitiveSerializer<ProblemRequiredScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProblemRequiredScopeEnum];
  @override
  final String wireName = 'ProblemRequiredScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProblemRequiredScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProblemRequiredScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProblemRequiredScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProblemClass_EnumSerializer
    implements PrimitiveSerializer<ProblemClass_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'tiles': 'tiles',
    'stream': 'stream',
    'expensive': 'expensive',
    'write': 'write',
    'anonymous': 'anonymous',
    'metrics': 'metrics',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'tiles': 'tiles',
    'stream': 'stream',
    'expensive': 'expensive',
    'write': 'write',
    'anonymous': 'anonymous',
    'metrics': 'metrics',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProblemClass_Enum];
  @override
  final String wireName = 'ProblemClass_Enum';

  @override
  Object serialize(
    Serializers serializers,
    ProblemClass_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProblemClass_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProblemClass_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Problem extends Problem {
  @override
  final String? type;
  @override
  final String title;
  @override
  final int status;
  @override
  final String? detail;
  @override
  final String? instance;
  @override
  final String? code;
  @override
  final BuiltList<ProblemErrorsInner>? errors;
  @override
  final int? purgeHorizon;
  @override
  final int? watermarkSeq;
  @override
  final DateTime? horizon;
  @override
  final num? capUsd;
  @override
  final num? spentUsd;
  @override
  final num? estimateUsd;
  @override
  final ProblemRequiredScopeEnum? requiredScope;
  @override
  final ProblemClass_Enum? class_;
  @override
  final int? retryAfterSeconds;
  @override
  final ProblemReferences? references;
  @override
  final String? reason;

  factory _$Problem([void Function(ProblemBuilder)? updates]) =>
      (ProblemBuilder()..update(updates))._build();

  _$Problem._({
    this.type,
    required this.title,
    required this.status,
    this.detail,
    this.instance,
    this.code,
    this.errors,
    this.purgeHorizon,
    this.watermarkSeq,
    this.horizon,
    this.capUsd,
    this.spentUsd,
    this.estimateUsd,
    this.requiredScope,
    this.class_,
    this.retryAfterSeconds,
    this.references,
    this.reason,
  }) : super._();
  @override
  Problem rebuild(void Function(ProblemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemBuilder toBuilder() => ProblemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Problem &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        instance == other.instance &&
        code == other.code &&
        errors == other.errors &&
        purgeHorizon == other.purgeHorizon &&
        watermarkSeq == other.watermarkSeq &&
        horizon == other.horizon &&
        capUsd == other.capUsd &&
        spentUsd == other.spentUsd &&
        estimateUsd == other.estimateUsd &&
        requiredScope == other.requiredScope &&
        class_ == other.class_ &&
        retryAfterSeconds == other.retryAfterSeconds &&
        references == other.references &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, instance.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, purgeHorizon.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, capUsd.hashCode);
    _$hash = $jc(_$hash, spentUsd.hashCode);
    _$hash = $jc(_$hash, estimateUsd.hashCode);
    _$hash = $jc(_$hash, requiredScope.hashCode);
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, retryAfterSeconds.hashCode);
    _$hash = $jc(_$hash, references.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Problem')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('instance', instance)
          ..add('code', code)
          ..add('errors', errors)
          ..add('purgeHorizon', purgeHorizon)
          ..add('watermarkSeq', watermarkSeq)
          ..add('horizon', horizon)
          ..add('capUsd', capUsd)
          ..add('spentUsd', spentUsd)
          ..add('estimateUsd', estimateUsd)
          ..add('requiredScope', requiredScope)
          ..add('class_', class_)
          ..add('retryAfterSeconds', retryAfterSeconds)
          ..add('references', references)
          ..add('reason', reason))
        .toString();
  }
}

class ProblemBuilder implements Builder<Problem, ProblemBuilder> {
  _$Problem? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _instance;
  String? get instance => _$this._instance;
  set instance(String? instance) => _$this._instance = instance;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<ProblemErrorsInner>? _errors;
  ListBuilder<ProblemErrorsInner> get errors =>
      _$this._errors ??= ListBuilder<ProblemErrorsInner>();
  set errors(ListBuilder<ProblemErrorsInner>? errors) =>
      _$this._errors = errors;

  int? _purgeHorizon;
  int? get purgeHorizon => _$this._purgeHorizon;
  set purgeHorizon(int? purgeHorizon) => _$this._purgeHorizon = purgeHorizon;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  DateTime? _horizon;
  DateTime? get horizon => _$this._horizon;
  set horizon(DateTime? horizon) => _$this._horizon = horizon;

  num? _capUsd;
  num? get capUsd => _$this._capUsd;
  set capUsd(num? capUsd) => _$this._capUsd = capUsd;

  num? _spentUsd;
  num? get spentUsd => _$this._spentUsd;
  set spentUsd(num? spentUsd) => _$this._spentUsd = spentUsd;

  num? _estimateUsd;
  num? get estimateUsd => _$this._estimateUsd;
  set estimateUsd(num? estimateUsd) => _$this._estimateUsd = estimateUsd;

  ProblemRequiredScopeEnum? _requiredScope;
  ProblemRequiredScopeEnum? get requiredScope => _$this._requiredScope;
  set requiredScope(ProblemRequiredScopeEnum? requiredScope) =>
      _$this._requiredScope = requiredScope;

  ProblemClass_Enum? _class_;
  ProblemClass_Enum? get class_ => _$this._class_;
  set class_(ProblemClass_Enum? class_) => _$this._class_ = class_;

  int? _retryAfterSeconds;
  int? get retryAfterSeconds => _$this._retryAfterSeconds;
  set retryAfterSeconds(int? retryAfterSeconds) =>
      _$this._retryAfterSeconds = retryAfterSeconds;

  ProblemReferencesBuilder? _references;
  ProblemReferencesBuilder get references =>
      _$this._references ??= ProblemReferencesBuilder();
  set references(ProblemReferencesBuilder? references) =>
      _$this._references = references;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ProblemBuilder() {
    Problem._defaults(this);
  }

  ProblemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _instance = $v.instance;
      _code = $v.code;
      _errors = $v.errors?.toBuilder();
      _purgeHorizon = $v.purgeHorizon;
      _watermarkSeq = $v.watermarkSeq;
      _horizon = $v.horizon;
      _capUsd = $v.capUsd;
      _spentUsd = $v.spentUsd;
      _estimateUsd = $v.estimateUsd;
      _requiredScope = $v.requiredScope;
      _class_ = $v.class_;
      _retryAfterSeconds = $v.retryAfterSeconds;
      _references = $v.references?.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Problem other) {
    _$v = other as _$Problem;
  }

  @override
  void update(void Function(ProblemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Problem build() => _build();

  _$Problem _build() {
    _$Problem _$result;
    try {
      _$result =
          _$v ??
          _$Problem._(
            type: type,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Problem',
              'title',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Problem',
              'status',
            ),
            detail: detail,
            instance: instance,
            code: code,
            errors: _errors?.build(),
            purgeHorizon: purgeHorizon,
            watermarkSeq: watermarkSeq,
            horizon: horizon,
            capUsd: capUsd,
            spentUsd: spentUsd,
            estimateUsd: estimateUsd,
            requiredScope: requiredScope,
            class_: class_,
            retryAfterSeconds: retryAfterSeconds,
            references: _references?.build(),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();

        _$failedField = 'references';
        _references?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Problem',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
