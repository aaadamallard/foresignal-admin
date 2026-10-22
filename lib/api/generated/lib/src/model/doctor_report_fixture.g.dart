// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_fixture.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DoctorReportFixture extends DoctorReportFixture {
  @override
  final String file;
  @override
  final String? capturedAt;
  @override
  final String? sha256;
  @override
  final bool? truncated;

  factory _$DoctorReportFixture(
          [void Function(DoctorReportFixtureBuilder)? updates]) =>
      (DoctorReportFixtureBuilder()..update(updates))._build();

  _$DoctorReportFixture._(
      {required this.file, this.capturedAt, this.sha256, this.truncated})
      : super._();
  @override
  DoctorReportFixture rebuild(
          void Function(DoctorReportFixtureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportFixtureBuilder toBuilder() =>
      DoctorReportFixtureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportFixture &&
        file == other.file &&
        capturedAt == other.capturedAt &&
        sha256 == other.sha256 &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReportFixture')
          ..add('file', file)
          ..add('capturedAt', capturedAt)
          ..add('sha256', sha256)
          ..add('truncated', truncated))
        .toString();
  }
}

class DoctorReportFixtureBuilder
    implements Builder<DoctorReportFixture, DoctorReportFixtureBuilder> {
  _$DoctorReportFixture? _$v;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _capturedAt;
  String? get capturedAt => _$this._capturedAt;
  set capturedAt(String? capturedAt) => _$this._capturedAt = capturedAt;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  DoctorReportFixtureBuilder() {
    DoctorReportFixture._defaults(this);
  }

  DoctorReportFixtureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _capturedAt = $v.capturedAt;
      _sha256 = $v.sha256;
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportFixture other) {
    _$v = other as _$DoctorReportFixture;
  }

  @override
  void update(void Function(DoctorReportFixtureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportFixture build() => _build();

  _$DoctorReportFixture _build() {
    final _$result = _$v ??
        _$DoctorReportFixture._(
          file: BuiltValueNullFieldError.checkNotNull(
              file, r'DoctorReportFixture', 'file'),
          capturedAt: capturedAt,
          sha256: sha256,
          truncated: truncated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
