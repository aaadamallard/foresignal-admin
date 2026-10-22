// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_question_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactQuestionWindow extends ProjectedImpactQuestionWindow {
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  factory _$ProjectedImpactQuestionWindow(
          [void Function(ProjectedImpactQuestionWindowBuilder)? updates]) =>
      (ProjectedImpactQuestionWindowBuilder()..update(updates))._build();

  _$ProjectedImpactQuestionWindow._({this.start, this.end}) : super._();
  @override
  ProjectedImpactQuestionWindow rebuild(
          void Function(ProjectedImpactQuestionWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactQuestionWindowBuilder toBuilder() =>
      ProjectedImpactQuestionWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactQuestionWindow &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactQuestionWindow')
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class ProjectedImpactQuestionWindowBuilder
    implements
        Builder<ProjectedImpactQuestionWindow,
            ProjectedImpactQuestionWindowBuilder> {
  _$ProjectedImpactQuestionWindow? _$v;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  ProjectedImpactQuestionWindowBuilder() {
    ProjectedImpactQuestionWindow._defaults(this);
  }

  ProjectedImpactQuestionWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactQuestionWindow other) {
    _$v = other as _$ProjectedImpactQuestionWindow;
  }

  @override
  void update(void Function(ProjectedImpactQuestionWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactQuestionWindow build() => _build();

  _$ProjectedImpactQuestionWindow _build() {
    final _$result = _$v ??
        _$ProjectedImpactQuestionWindow._(
          start: start,
          end: end,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
