// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_proposal_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystProposalPage extends AnalystProposalPage {
  @override
  final BuiltList<AnalystProposal> items;
  @override
  final String? nextCursor;

  factory _$AnalystProposalPage(
          [void Function(AnalystProposalPageBuilder)? updates]) =>
      (AnalystProposalPageBuilder()..update(updates))._build();

  _$AnalystProposalPage._({required this.items, this.nextCursor}) : super._();
  @override
  AnalystProposalPage rebuild(
          void Function(AnalystProposalPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProposalPageBuilder toBuilder() =>
      AnalystProposalPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProposalPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProposalPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnalystProposalPageBuilder
    implements Builder<AnalystProposalPage, AnalystProposalPageBuilder> {
  _$AnalystProposalPage? _$v;

  ListBuilder<AnalystProposal>? _items;
  ListBuilder<AnalystProposal> get items =>
      _$this._items ??= ListBuilder<AnalystProposal>();
  set items(ListBuilder<AnalystProposal>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnalystProposalPageBuilder() {
    AnalystProposalPage._defaults(this);
  }

  AnalystProposalPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProposalPage other) {
    _$v = other as _$AnalystProposalPage;
  }

  @override
  void update(void Function(AnalystProposalPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProposalPage build() => _build();

  _$AnalystProposalPage _build() {
    _$AnalystProposalPage _$result;
    try {
      _$result = _$v ??
          _$AnalystProposalPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalystProposalPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
