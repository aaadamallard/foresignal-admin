// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WindowStatus extends WindowStatus {
  @override
  final WindowStatusStates states;
  @override
  final int groups;
  @override
  final bool? groupsTruncated;
  @override
  final DateTime? learningUntil;
  @override
  final DateTime? lastEvaluatedAt;
  @override
  final bool? lowConfidence;

  factory _$WindowStatus([void Function(WindowStatusBuilder)? updates]) =>
      (WindowStatusBuilder()..update(updates))._build();

  _$WindowStatus._({
    required this.states,
    required this.groups,
    this.groupsTruncated,
    this.learningUntil,
    this.lastEvaluatedAt,
    this.lowConfidence,
  }) : super._();
  @override
  WindowStatus rebuild(void Function(WindowStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowStatusBuilder toBuilder() => WindowStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowStatus &&
        states == other.states &&
        groups == other.groups &&
        groupsTruncated == other.groupsTruncated &&
        learningUntil == other.learningUntil &&
        lastEvaluatedAt == other.lastEvaluatedAt &&
        lowConfidence == other.lowConfidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, states.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, groupsTruncated.hashCode);
    _$hash = $jc(_$hash, learningUntil.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedAt.hashCode);
    _$hash = $jc(_$hash, lowConfidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowStatus')
          ..add('states', states)
          ..add('groups', groups)
          ..add('groupsTruncated', groupsTruncated)
          ..add('learningUntil', learningUntil)
          ..add('lastEvaluatedAt', lastEvaluatedAt)
          ..add('lowConfidence', lowConfidence))
        .toString();
  }
}

class WindowStatusBuilder
    implements Builder<WindowStatus, WindowStatusBuilder> {
  _$WindowStatus? _$v;

  WindowStatusStatesBuilder? _states;
  WindowStatusStatesBuilder get states =>
      _$this._states ??= WindowStatusStatesBuilder();
  set states(WindowStatusStatesBuilder? states) => _$this._states = states;

  int? _groups;
  int? get groups => _$this._groups;
  set groups(int? groups) => _$this._groups = groups;

  bool? _groupsTruncated;
  bool? get groupsTruncated => _$this._groupsTruncated;
  set groupsTruncated(bool? groupsTruncated) =>
      _$this._groupsTruncated = groupsTruncated;

  DateTime? _learningUntil;
  DateTime? get learningUntil => _$this._learningUntil;
  set learningUntil(DateTime? learningUntil) =>
      _$this._learningUntil = learningUntil;

  DateTime? _lastEvaluatedAt;
  DateTime? get lastEvaluatedAt => _$this._lastEvaluatedAt;
  set lastEvaluatedAt(DateTime? lastEvaluatedAt) =>
      _$this._lastEvaluatedAt = lastEvaluatedAt;

  bool? _lowConfidence;
  bool? get lowConfidence => _$this._lowConfidence;
  set lowConfidence(bool? lowConfidence) =>
      _$this._lowConfidence = lowConfidence;

  WindowStatusBuilder() {
    WindowStatus._defaults(this);
  }

  WindowStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _states = $v.states.toBuilder();
      _groups = $v.groups;
      _groupsTruncated = $v.groupsTruncated;
      _learningUntil = $v.learningUntil;
      _lastEvaluatedAt = $v.lastEvaluatedAt;
      _lowConfidence = $v.lowConfidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowStatus other) {
    _$v = other as _$WindowStatus;
  }

  @override
  void update(void Function(WindowStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowStatus build() => _build();

  _$WindowStatus _build() {
    _$WindowStatus _$result;
    try {
      _$result =
          _$v ??
          _$WindowStatus._(
            states: states.build(),
            groups: BuiltValueNullFieldError.checkNotNull(
              groups,
              r'WindowStatus',
              'groups',
            ),
            groupsTruncated: groupsTruncated,
            learningUntil: learningUntil,
            lastEvaluatedAt: lastEvaluatedAt,
            lowConfidence: lowConfidence,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'states';
        states.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WindowStatus',
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
