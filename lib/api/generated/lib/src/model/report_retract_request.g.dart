// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_retract_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportRetractRequest extends ReportRetractRequest {
  @override
  final int? revision;
  @override
  final String reason;

  factory _$ReportRetractRequest([
    void Function(ReportRetractRequestBuilder)? updates,
  ]) => (ReportRetractRequestBuilder()..update(updates))._build();

  _$ReportRetractRequest._({this.revision, required this.reason}) : super._();
  @override
  ReportRetractRequest rebuild(
    void Function(ReportRetractRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportRetractRequestBuilder toBuilder() =>
      ReportRetractRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRetractRequest &&
        revision == other.revision &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportRetractRequest')
          ..add('revision', revision)
          ..add('reason', reason))
        .toString();
  }
}

class ReportRetractRequestBuilder
    implements Builder<ReportRetractRequest, ReportRetractRequestBuilder> {
  _$ReportRetractRequest? _$v;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ReportRetractRequestBuilder() {
    ReportRetractRequest._defaults(this);
  }

  ReportRetractRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revision = $v.revision;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRetractRequest other) {
    _$v = other as _$ReportRetractRequest;
  }

  @override
  void update(void Function(ReportRetractRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportRetractRequest build() => _build();

  _$ReportRetractRequest _build() {
    final _$result =
        _$v ??
        _$ReportRetractRequest._(
          revision: revision,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ReportRetractRequest',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
