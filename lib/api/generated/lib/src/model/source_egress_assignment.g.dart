// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_egress_assignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceEgressAssignment extends SourceEgressAssignment {
  @override
  final String? routeId;
  @override
  final bool? excludeFromRotation;

  factory _$SourceEgressAssignment([
    void Function(SourceEgressAssignmentBuilder)? updates,
  ]) => (SourceEgressAssignmentBuilder()..update(updates))._build();

  _$SourceEgressAssignment._({this.routeId, this.excludeFromRotation})
    : super._();
  @override
  SourceEgressAssignment rebuild(
    void Function(SourceEgressAssignmentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceEgressAssignmentBuilder toBuilder() =>
      SourceEgressAssignmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceEgressAssignment &&
        routeId == other.routeId &&
        excludeFromRotation == other.excludeFromRotation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, excludeFromRotation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceEgressAssignment')
          ..add('routeId', routeId)
          ..add('excludeFromRotation', excludeFromRotation))
        .toString();
  }
}

class SourceEgressAssignmentBuilder
    implements Builder<SourceEgressAssignment, SourceEgressAssignmentBuilder> {
  _$SourceEgressAssignment? _$v;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  bool? _excludeFromRotation;
  bool? get excludeFromRotation => _$this._excludeFromRotation;
  set excludeFromRotation(bool? excludeFromRotation) =>
      _$this._excludeFromRotation = excludeFromRotation;

  SourceEgressAssignmentBuilder() {
    SourceEgressAssignment._defaults(this);
  }

  SourceEgressAssignmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _excludeFromRotation = $v.excludeFromRotation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceEgressAssignment other) {
    _$v = other as _$SourceEgressAssignment;
  }

  @override
  void update(void Function(SourceEgressAssignmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceEgressAssignment build() => _build();

  _$SourceEgressAssignment _build() {
    final _$result =
        _$v ??
        _$SourceEgressAssignment._(
          routeId: routeId,
          excludeFromRotation: excludeFromRotation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
