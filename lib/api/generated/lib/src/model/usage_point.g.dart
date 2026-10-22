// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsagePoint extends UsagePoint {
  @override
  final DateTime t;
  @override
  final int requests;
  @override
  final int bytes;
  @override
  final int errors;
  @override
  final int refused;
  @override
  final int? recordsSeen;
  @override
  final int? versions;
  @override
  final int? liveUpdates;
  @override
  final int? touches;
  @override
  final int? late_;
  @override
  final int? skipped;
  @override
  final int? rejected;
  @override
  final int? versionBytes;

  factory _$UsagePoint([void Function(UsagePointBuilder)? updates]) =>
      (UsagePointBuilder()..update(updates))._build();

  _$UsagePoint._(
      {required this.t,
      required this.requests,
      required this.bytes,
      required this.errors,
      required this.refused,
      this.recordsSeen,
      this.versions,
      this.liveUpdates,
      this.touches,
      this.late_,
      this.skipped,
      this.rejected,
      this.versionBytes})
      : super._();
  @override
  UsagePoint rebuild(void Function(UsagePointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsagePointBuilder toBuilder() => UsagePointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsagePoint &&
        t == other.t &&
        requests == other.requests &&
        bytes == other.bytes &&
        errors == other.errors &&
        refused == other.refused &&
        recordsSeen == other.recordsSeen &&
        versions == other.versions &&
        liveUpdates == other.liveUpdates &&
        touches == other.touches &&
        late_ == other.late_ &&
        skipped == other.skipped &&
        rejected == other.rejected &&
        versionBytes == other.versionBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, refused.hashCode);
    _$hash = $jc(_$hash, recordsSeen.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, liveUpdates.hashCode);
    _$hash = $jc(_$hash, touches.hashCode);
    _$hash = $jc(_$hash, late_.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, versionBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsagePoint')
          ..add('t', t)
          ..add('requests', requests)
          ..add('bytes', bytes)
          ..add('errors', errors)
          ..add('refused', refused)
          ..add('recordsSeen', recordsSeen)
          ..add('versions', versions)
          ..add('liveUpdates', liveUpdates)
          ..add('touches', touches)
          ..add('late_', late_)
          ..add('skipped', skipped)
          ..add('rejected', rejected)
          ..add('versionBytes', versionBytes))
        .toString();
  }
}

class UsagePointBuilder implements Builder<UsagePoint, UsagePointBuilder> {
  _$UsagePoint? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _requests;
  int? get requests => _$this._requests;
  set requests(int? requests) => _$this._requests = requests;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  int? _errors;
  int? get errors => _$this._errors;
  set errors(int? errors) => _$this._errors = errors;

  int? _refused;
  int? get refused => _$this._refused;
  set refused(int? refused) => _$this._refused = refused;

  int? _recordsSeen;
  int? get recordsSeen => _$this._recordsSeen;
  set recordsSeen(int? recordsSeen) => _$this._recordsSeen = recordsSeen;

  int? _versions;
  int? get versions => _$this._versions;
  set versions(int? versions) => _$this._versions = versions;

  int? _liveUpdates;
  int? get liveUpdates => _$this._liveUpdates;
  set liveUpdates(int? liveUpdates) => _$this._liveUpdates = liveUpdates;

  int? _touches;
  int? get touches => _$this._touches;
  set touches(int? touches) => _$this._touches = touches;

  int? _late_;
  int? get late_ => _$this._late_;
  set late_(int? late_) => _$this._late_ = late_;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  int? _versionBytes;
  int? get versionBytes => _$this._versionBytes;
  set versionBytes(int? versionBytes) => _$this._versionBytes = versionBytes;

  UsagePointBuilder() {
    UsagePoint._defaults(this);
  }

  UsagePointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _requests = $v.requests;
      _bytes = $v.bytes;
      _errors = $v.errors;
      _refused = $v.refused;
      _recordsSeen = $v.recordsSeen;
      _versions = $v.versions;
      _liveUpdates = $v.liveUpdates;
      _touches = $v.touches;
      _late_ = $v.late_;
      _skipped = $v.skipped;
      _rejected = $v.rejected;
      _versionBytes = $v.versionBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsagePoint other) {
    _$v = other as _$UsagePoint;
  }

  @override
  void update(void Function(UsagePointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsagePoint build() => _build();

  _$UsagePoint _build() {
    final _$result = _$v ??
        _$UsagePoint._(
          t: BuiltValueNullFieldError.checkNotNull(t, r'UsagePoint', 't'),
          requests: BuiltValueNullFieldError.checkNotNull(
              requests, r'UsagePoint', 'requests'),
          bytes: BuiltValueNullFieldError.checkNotNull(
              bytes, r'UsagePoint', 'bytes'),
          errors: BuiltValueNullFieldError.checkNotNull(
              errors, r'UsagePoint', 'errors'),
          refused: BuiltValueNullFieldError.checkNotNull(
              refused, r'UsagePoint', 'refused'),
          recordsSeen: recordsSeen,
          versions: versions,
          liveUpdates: liveUpdates,
          touches: touches,
          late_: late_,
          skipped: skipped,
          rejected: rejected,
          versionBytes: versionBytes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
