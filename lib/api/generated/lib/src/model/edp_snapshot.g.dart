// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpSnapshot extends EdpSnapshot {
  @override
  final String id;
  @override
  final String stream;
  @override
  final String? scope;
  @override
  final int page;
  @override
  final bool final_;

  factory _$EdpSnapshot([void Function(EdpSnapshotBuilder)? updates]) =>
      (EdpSnapshotBuilder()..update(updates))._build();

  _$EdpSnapshot._({
    required this.id,
    required this.stream,
    this.scope,
    required this.page,
    required this.final_,
  }) : super._();
  @override
  EdpSnapshot rebuild(void Function(EdpSnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpSnapshotBuilder toBuilder() => EdpSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSnapshot &&
        id == other.id &&
        stream == other.stream &&
        scope == other.scope &&
        page == other.page &&
        final_ == other.final_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, stream.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, final_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSnapshot')
          ..add('id', id)
          ..add('stream', stream)
          ..add('scope', scope)
          ..add('page', page)
          ..add('final_', final_))
        .toString();
  }
}

class EdpSnapshotBuilder implements Builder<EdpSnapshot, EdpSnapshotBuilder> {
  _$EdpSnapshot? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _stream;
  String? get stream => _$this._stream;
  set stream(String? stream) => _$this._stream = stream;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  bool? _final_;
  bool? get final_ => _$this._final_;
  set final_(bool? final_) => _$this._final_ = final_;

  EdpSnapshotBuilder() {
    EdpSnapshot._defaults(this);
  }

  EdpSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _stream = $v.stream;
      _scope = $v.scope;
      _page = $v.page;
      _final_ = $v.final_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSnapshot other) {
    _$v = other as _$EdpSnapshot;
  }

  @override
  void update(void Function(EdpSnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSnapshot build() => _build();

  _$EdpSnapshot _build() {
    final _$result =
        _$v ??
        _$EdpSnapshot._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EdpSnapshot', 'id'),
          stream: BuiltValueNullFieldError.checkNotNull(
            stream,
            r'EdpSnapshot',
            'stream',
          ),
          scope: scope,
          page: BuiltValueNullFieldError.checkNotNull(
            page,
            r'EdpSnapshot',
            'page',
          ),
          final_: BuiltValueNullFieldError.checkNotNull(
            final_,
            r'EdpSnapshot',
            'final_',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
