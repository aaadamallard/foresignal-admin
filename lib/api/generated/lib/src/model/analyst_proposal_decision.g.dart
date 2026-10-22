// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_proposal_decision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystProposalDecision extends AnalystProposalDecision {
  @override
  final String? reason;

  factory _$AnalystProposalDecision(
          [void Function(AnalystProposalDecisionBuilder)? updates]) =>
      (AnalystProposalDecisionBuilder()..update(updates))._build();

  _$AnalystProposalDecision._({this.reason}) : super._();
  @override
  AnalystProposalDecision rebuild(
          void Function(AnalystProposalDecisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProposalDecisionBuilder toBuilder() =>
      AnalystProposalDecisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProposalDecision && reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProposalDecision')
          ..add('reason', reason))
        .toString();
  }
}

class AnalystProposalDecisionBuilder
    implements
        Builder<AnalystProposalDecision, AnalystProposalDecisionBuilder> {
  _$AnalystProposalDecision? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  AnalystProposalDecisionBuilder() {
    AnalystProposalDecision._defaults(this);
  }

  AnalystProposalDecisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProposalDecision other) {
    _$v = other as _$AnalystProposalDecision;
  }

  @override
  void update(void Function(AnalystProposalDecisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProposalDecision build() => _build();

  _$AnalystProposalDecision _build() {
    final _$result = _$v ??
        _$AnalystProposalDecision._(
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
