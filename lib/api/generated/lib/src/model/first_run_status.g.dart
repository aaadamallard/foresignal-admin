// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_run_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FirstRunStatus extends FirstRunStatus {
  @override
  final bool firstRun;
  @override
  final bool hasUsers;
  @override
  final bool? smtpConfigured;
  @override
  final int? sourcesEnabled;
  @override
  final String? apiVersion;

  factory _$FirstRunStatus([void Function(FirstRunStatusBuilder)? updates]) =>
      (FirstRunStatusBuilder()..update(updates))._build();

  _$FirstRunStatus._({
    required this.firstRun,
    required this.hasUsers,
    this.smtpConfigured,
    this.sourcesEnabled,
    this.apiVersion,
  }) : super._();
  @override
  FirstRunStatus rebuild(void Function(FirstRunStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirstRunStatusBuilder toBuilder() => FirstRunStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirstRunStatus &&
        firstRun == other.firstRun &&
        hasUsers == other.hasUsers &&
        smtpConfigured == other.smtpConfigured &&
        sourcesEnabled == other.sourcesEnabled &&
        apiVersion == other.apiVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstRun.hashCode);
    _$hash = $jc(_$hash, hasUsers.hashCode);
    _$hash = $jc(_$hash, smtpConfigured.hashCode);
    _$hash = $jc(_$hash, sourcesEnabled.hashCode);
    _$hash = $jc(_$hash, apiVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FirstRunStatus')
          ..add('firstRun', firstRun)
          ..add('hasUsers', hasUsers)
          ..add('smtpConfigured', smtpConfigured)
          ..add('sourcesEnabled', sourcesEnabled)
          ..add('apiVersion', apiVersion))
        .toString();
  }
}

class FirstRunStatusBuilder
    implements Builder<FirstRunStatus, FirstRunStatusBuilder> {
  _$FirstRunStatus? _$v;

  bool? _firstRun;
  bool? get firstRun => _$this._firstRun;
  set firstRun(bool? firstRun) => _$this._firstRun = firstRun;

  bool? _hasUsers;
  bool? get hasUsers => _$this._hasUsers;
  set hasUsers(bool? hasUsers) => _$this._hasUsers = hasUsers;

  bool? _smtpConfigured;
  bool? get smtpConfigured => _$this._smtpConfigured;
  set smtpConfigured(bool? smtpConfigured) =>
      _$this._smtpConfigured = smtpConfigured;

  int? _sourcesEnabled;
  int? get sourcesEnabled => _$this._sourcesEnabled;
  set sourcesEnabled(int? sourcesEnabled) =>
      _$this._sourcesEnabled = sourcesEnabled;

  String? _apiVersion;
  String? get apiVersion => _$this._apiVersion;
  set apiVersion(String? apiVersion) => _$this._apiVersion = apiVersion;

  FirstRunStatusBuilder() {
    FirstRunStatus._defaults(this);
  }

  FirstRunStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstRun = $v.firstRun;
      _hasUsers = $v.hasUsers;
      _smtpConfigured = $v.smtpConfigured;
      _sourcesEnabled = $v.sourcesEnabled;
      _apiVersion = $v.apiVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirstRunStatus other) {
    _$v = other as _$FirstRunStatus;
  }

  @override
  void update(void Function(FirstRunStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FirstRunStatus build() => _build();

  _$FirstRunStatus _build() {
    final _$result =
        _$v ??
        _$FirstRunStatus._(
          firstRun: BuiltValueNullFieldError.checkNotNull(
            firstRun,
            r'FirstRunStatus',
            'firstRun',
          ),
          hasUsers: BuiltValueNullFieldError.checkNotNull(
            hasUsers,
            r'FirstRunStatus',
            'hasUsers',
          ),
          smtpConfigured: smtpConfigured,
          sourcesEnabled: sourcesEnabled,
          apiVersion: apiVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
