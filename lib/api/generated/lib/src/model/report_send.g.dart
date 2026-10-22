// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_send.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportSend extends ReportSend {
  @override
  final String id;
  @override
  final String reportId;
  @override
  final int? revision;
  @override
  final PrincipalSummary sentBy;
  @override
  final DateTime sentAt;
  @override
  final String? message;
  @override
  final BuiltList<ReportSendRecipientsInner> recipients;

  factory _$ReportSend([void Function(ReportSendBuilder)? updates]) =>
      (ReportSendBuilder()..update(updates))._build();

  _$ReportSend._(
      {required this.id,
      required this.reportId,
      this.revision,
      required this.sentBy,
      required this.sentAt,
      this.message,
      required this.recipients})
      : super._();
  @override
  ReportSend rebuild(void Function(ReportSendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportSendBuilder toBuilder() => ReportSendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportSend &&
        id == other.id &&
        reportId == other.reportId &&
        revision == other.revision &&
        sentBy == other.sentBy &&
        sentAt == other.sentAt &&
        message == other.message &&
        recipients == other.recipients;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reportId.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, sentBy.hashCode);
    _$hash = $jc(_$hash, sentAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportSend')
          ..add('id', id)
          ..add('reportId', reportId)
          ..add('revision', revision)
          ..add('sentBy', sentBy)
          ..add('sentAt', sentAt)
          ..add('message', message)
          ..add('recipients', recipients))
        .toString();
  }
}

class ReportSendBuilder implements Builder<ReportSend, ReportSendBuilder> {
  _$ReportSend? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _reportId;
  String? get reportId => _$this._reportId;
  set reportId(String? reportId) => _$this._reportId = reportId;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  PrincipalSummaryBuilder? _sentBy;
  PrincipalSummaryBuilder get sentBy =>
      _$this._sentBy ??= PrincipalSummaryBuilder();
  set sentBy(PrincipalSummaryBuilder? sentBy) => _$this._sentBy = sentBy;

  DateTime? _sentAt;
  DateTime? get sentAt => _$this._sentAt;
  set sentAt(DateTime? sentAt) => _$this._sentAt = sentAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ReportSendRecipientsInner>? _recipients;
  ListBuilder<ReportSendRecipientsInner> get recipients =>
      _$this._recipients ??= ListBuilder<ReportSendRecipientsInner>();
  set recipients(ListBuilder<ReportSendRecipientsInner>? recipients) =>
      _$this._recipients = recipients;

  ReportSendBuilder() {
    ReportSend._defaults(this);
  }

  ReportSendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _reportId = $v.reportId;
      _revision = $v.revision;
      _sentBy = $v.sentBy.toBuilder();
      _sentAt = $v.sentAt;
      _message = $v.message;
      _recipients = $v.recipients.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportSend other) {
    _$v = other as _$ReportSend;
  }

  @override
  void update(void Function(ReportSendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportSend build() => _build();

  _$ReportSend _build() {
    _$ReportSend _$result;
    try {
      _$result = _$v ??
          _$ReportSend._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ReportSend', 'id'),
            reportId: BuiltValueNullFieldError.checkNotNull(
                reportId, r'ReportSend', 'reportId'),
            revision: revision,
            sentBy: sentBy.build(),
            sentAt: BuiltValueNullFieldError.checkNotNull(
                sentAt, r'ReportSend', 'sentAt'),
            message: message,
            recipients: recipients.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sentBy';
        sentBy.build();

        _$failedField = 'recipients';
        recipients.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReportSend', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
