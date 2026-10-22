// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportEvent extends ReportEvent {
  @override
  final String reportRef;
  @override
  final String title;
  @override
  final String tlp;
  @override
  final int? revision;
  @override
  final PrincipalSummary? from;
  @override
  final String? message;
  @override
  final String? reason;
  @override
  final DateTime at;

  factory _$ReportEvent([void Function(ReportEventBuilder)? updates]) =>
      (ReportEventBuilder()..update(updates))._build();

  _$ReportEvent._({
    required this.reportRef,
    required this.title,
    required this.tlp,
    this.revision,
    this.from,
    this.message,
    this.reason,
    required this.at,
  }) : super._();
  @override
  ReportEvent rebuild(void Function(ReportEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportEventBuilder toBuilder() => ReportEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportEvent &&
        reportRef == other.reportRef &&
        title == other.title &&
        tlp == other.tlp &&
        revision == other.revision &&
        from == other.from &&
        message == other.message &&
        reason == other.reason &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportRef.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportEvent')
          ..add('reportRef', reportRef)
          ..add('title', title)
          ..add('tlp', tlp)
          ..add('revision', revision)
          ..add('from', from)
          ..add('message', message)
          ..add('reason', reason)
          ..add('at', at))
        .toString();
  }
}

class ReportEventBuilder implements Builder<ReportEvent, ReportEventBuilder> {
  _$ReportEvent? _$v;

  String? _reportRef;
  String? get reportRef => _$this._reportRef;
  set reportRef(String? reportRef) => _$this._reportRef = reportRef;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  PrincipalSummaryBuilder? _from;
  PrincipalSummaryBuilder get from =>
      _$this._from ??= PrincipalSummaryBuilder();
  set from(PrincipalSummaryBuilder? from) => _$this._from = from;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ReportEventBuilder() {
    ReportEvent._defaults(this);
  }

  ReportEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportRef = $v.reportRef;
      _title = $v.title;
      _tlp = $v.tlp;
      _revision = $v.revision;
      _from = $v.from?.toBuilder();
      _message = $v.message;
      _reason = $v.reason;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportEvent other) {
    _$v = other as _$ReportEvent;
  }

  @override
  void update(void Function(ReportEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportEvent build() => _build();

  _$ReportEvent _build() {
    _$ReportEvent _$result;
    try {
      _$result =
          _$v ??
          _$ReportEvent._(
            reportRef: BuiltValueNullFieldError.checkNotNull(
              reportRef,
              r'ReportEvent',
              'reportRef',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ReportEvent',
              'title',
            ),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'ReportEvent',
              'tlp',
            ),
            revision: revision,
            from: _from?.build(),
            message: message,
            reason: reason,
            at: BuiltValueNullFieldError.checkNotNull(at, r'ReportEvent', 'at'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'from';
        _from?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportEvent',
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
