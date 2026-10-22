// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_thread.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnotationThread extends AnnotationThread {
  @override
  final Annotation root;
  @override
  final BuiltList<Annotation> replies;
  @override
  final int replyCount;
  @override
  final bool resolved;
  @override
  final DateTime lastActivityAt;

  factory _$AnnotationThread([
    void Function(AnnotationThreadBuilder)? updates,
  ]) => (AnnotationThreadBuilder()..update(updates))._build();

  _$AnnotationThread._({
    required this.root,
    required this.replies,
    required this.replyCount,
    required this.resolved,
    required this.lastActivityAt,
  }) : super._();
  @override
  AnnotationThread rebuild(void Function(AnnotationThreadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationThreadBuilder toBuilder() =>
      AnnotationThreadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationThread &&
        root == other.root &&
        replies == other.replies &&
        replyCount == other.replyCount &&
        resolved == other.resolved &&
        lastActivityAt == other.lastActivityAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, root.hashCode);
    _$hash = $jc(_$hash, replies.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, resolved.hashCode);
    _$hash = $jc(_$hash, lastActivityAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationThread')
          ..add('root', root)
          ..add('replies', replies)
          ..add('replyCount', replyCount)
          ..add('resolved', resolved)
          ..add('lastActivityAt', lastActivityAt))
        .toString();
  }
}

class AnnotationThreadBuilder
    implements Builder<AnnotationThread, AnnotationThreadBuilder> {
  _$AnnotationThread? _$v;

  AnnotationBuilder? _root;
  AnnotationBuilder get root => _$this._root ??= AnnotationBuilder();
  set root(AnnotationBuilder? root) => _$this._root = root;

  ListBuilder<Annotation>? _replies;
  ListBuilder<Annotation> get replies =>
      _$this._replies ??= ListBuilder<Annotation>();
  set replies(ListBuilder<Annotation>? replies) => _$this._replies = replies;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  bool? _resolved;
  bool? get resolved => _$this._resolved;
  set resolved(bool? resolved) => _$this._resolved = resolved;

  DateTime? _lastActivityAt;
  DateTime? get lastActivityAt => _$this._lastActivityAt;
  set lastActivityAt(DateTime? lastActivityAt) =>
      _$this._lastActivityAt = lastActivityAt;

  AnnotationThreadBuilder() {
    AnnotationThread._defaults(this);
  }

  AnnotationThreadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _root = $v.root.toBuilder();
      _replies = $v.replies.toBuilder();
      _replyCount = $v.replyCount;
      _resolved = $v.resolved;
      _lastActivityAt = $v.lastActivityAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationThread other) {
    _$v = other as _$AnnotationThread;
  }

  @override
  void update(void Function(AnnotationThreadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationThread build() => _build();

  _$AnnotationThread _build() {
    _$AnnotationThread _$result;
    try {
      _$result =
          _$v ??
          _$AnnotationThread._(
            root: root.build(),
            replies: replies.build(),
            replyCount: BuiltValueNullFieldError.checkNotNull(
              replyCount,
              r'AnnotationThread',
              'replyCount',
            ),
            resolved: BuiltValueNullFieldError.checkNotNull(
              resolved,
              r'AnnotationThread',
              'resolved',
            ),
            lastActivityAt: BuiltValueNullFieldError.checkNotNull(
              lastActivityAt,
              r'AnnotationThread',
              'lastActivityAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'root';
        root.build();
        _$failedField = 'replies';
        replies.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnnotationThread',
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
