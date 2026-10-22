// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_licence_summary_excluded_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportLicenceSummaryExcludedInnerReasonEnum
    _$exportLicenceSummaryExcludedInnerReasonEnum_licenceForbidden =
    const ExportLicenceSummaryExcludedInnerReasonEnum._('licenceForbidden');
const ExportLicenceSummaryExcludedInnerReasonEnum
    _$exportLicenceSummaryExcludedInnerReasonEnum_licenceLocalOnly =
    const ExportLicenceSummaryExcludedInnerReasonEnum._('licenceLocalOnly');
const ExportLicenceSummaryExcludedInnerReasonEnum
    _$exportLicenceSummaryExcludedInnerReasonEnum_private =
    const ExportLicenceSummaryExcludedInnerReasonEnum._('private');

ExportLicenceSummaryExcludedInnerReasonEnum
    _$exportLicenceSummaryExcludedInnerReasonEnumValueOf(String name) {
  switch (name) {
    case 'licenceForbidden':
      return _$exportLicenceSummaryExcludedInnerReasonEnum_licenceForbidden;
    case 'licenceLocalOnly':
      return _$exportLicenceSummaryExcludedInnerReasonEnum_licenceLocalOnly;
    case 'private':
      return _$exportLicenceSummaryExcludedInnerReasonEnum_private;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportLicenceSummaryExcludedInnerReasonEnum>
    _$exportLicenceSummaryExcludedInnerReasonEnumValues = BuiltSet<
        ExportLicenceSummaryExcludedInnerReasonEnum>(const <ExportLicenceSummaryExcludedInnerReasonEnum>[
  _$exportLicenceSummaryExcludedInnerReasonEnum_licenceForbidden,
  _$exportLicenceSummaryExcludedInnerReasonEnum_licenceLocalOnly,
  _$exportLicenceSummaryExcludedInnerReasonEnum_private,
]);

Serializer<ExportLicenceSummaryExcludedInnerReasonEnum>
    _$exportLicenceSummaryExcludedInnerReasonEnumSerializer =
    _$ExportLicenceSummaryExcludedInnerReasonEnumSerializer();

class _$ExportLicenceSummaryExcludedInnerReasonEnumSerializer
    implements
        PrimitiveSerializer<ExportLicenceSummaryExcludedInnerReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'licenceForbidden': 'licence-forbidden',
    'licenceLocalOnly': 'licence-local-only',
    'private': 'private',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'licence-forbidden': 'licenceForbidden',
    'licence-local-only': 'licenceLocalOnly',
    'private': 'private',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ExportLicenceSummaryExcludedInnerReasonEnum
  ];
  @override
  final String wireName = 'ExportLicenceSummaryExcludedInnerReasonEnum';

  @override
  Object serialize(Serializers serializers,
          ExportLicenceSummaryExcludedInnerReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExportLicenceSummaryExcludedInnerReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExportLicenceSummaryExcludedInnerReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExportLicenceSummaryExcludedInner
    extends ExportLicenceSummaryExcludedInner {
  @override
  final String sourceId;
  @override
  final ExportLicenceSummaryExcludedInnerReasonEnum reason;

  factory _$ExportLicenceSummaryExcludedInner(
          [void Function(ExportLicenceSummaryExcludedInnerBuilder)? updates]) =>
      (ExportLicenceSummaryExcludedInnerBuilder()..update(updates))._build();

  _$ExportLicenceSummaryExcludedInner._(
      {required this.sourceId, required this.reason})
      : super._();
  @override
  ExportLicenceSummaryExcludedInner rebuild(
          void Function(ExportLicenceSummaryExcludedInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportLicenceSummaryExcludedInnerBuilder toBuilder() =>
      ExportLicenceSummaryExcludedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportLicenceSummaryExcludedInner &&
        sourceId == other.sourceId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportLicenceSummaryExcludedInner')
          ..add('sourceId', sourceId)
          ..add('reason', reason))
        .toString();
  }
}

class ExportLicenceSummaryExcludedInnerBuilder
    implements
        Builder<ExportLicenceSummaryExcludedInner,
            ExportLicenceSummaryExcludedInnerBuilder> {
  _$ExportLicenceSummaryExcludedInner? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ExportLicenceSummaryExcludedInnerReasonEnum? _reason;
  ExportLicenceSummaryExcludedInnerReasonEnum? get reason => _$this._reason;
  set reason(ExportLicenceSummaryExcludedInnerReasonEnum? reason) =>
      _$this._reason = reason;

  ExportLicenceSummaryExcludedInnerBuilder() {
    ExportLicenceSummaryExcludedInner._defaults(this);
  }

  ExportLicenceSummaryExcludedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportLicenceSummaryExcludedInner other) {
    _$v = other as _$ExportLicenceSummaryExcludedInner;
  }

  @override
  void update(
      void Function(ExportLicenceSummaryExcludedInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportLicenceSummaryExcludedInner build() => _build();

  _$ExportLicenceSummaryExcludedInner _build() {
    final _$result = _$v ??
        _$ExportLicenceSummaryExcludedInner._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'ExportLicenceSummaryExcludedInner', 'sourceId'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'ExportLicenceSummaryExcludedInner', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
