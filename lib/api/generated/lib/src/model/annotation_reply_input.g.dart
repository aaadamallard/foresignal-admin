// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_reply_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnotationReplyInput extends AnnotationReplyInput {
  @override
  final String body;
  @override
  final bool? private;

  factory _$AnnotationReplyInput([
    void Function(AnnotationReplyInputBuilder)? updates,
  ]) => (AnnotationReplyInputBuilder()..update(updates))._build();

  _$AnnotationReplyInput._({required this.body, this.private}) : super._();
  @override
  AnnotationReplyInput rebuild(
    void Function(AnnotationReplyInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnnotationReplyInputBuilder toBuilder() =>
      AnnotationReplyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationReplyInput &&
        body == other.body &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationReplyInput')
          ..add('body', body)
          ..add('private', private))
        .toString();
  }
}

class AnnotationReplyInputBuilder
    implements Builder<AnnotationReplyInput, AnnotationReplyInputBuilder> {
  _$AnnotationReplyInput? _$v;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  AnnotationReplyInputBuilder() {
    AnnotationReplyInput._defaults(this);
  }

  AnnotationReplyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationReplyInput other) {
    _$v = other as _$AnnotationReplyInput;
  }

  @override
  void update(void Function(AnnotationReplyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationReplyInput build() => _build();

  _$AnnotationReplyInput _build() {
    final _$result =
        _$v ??
        _$AnnotationReplyInput._(
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'AnnotationReplyInput',
            'body',
          ),
          private: private,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
