// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emwin_product_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmwinProductPayload extends EmwinProductPayload {
  @override
  final String heading;
  @override
  final String awipsId;
  @override
  final String? office;
  @override
  final DateTime issuedAt;
  @override
  final String text;

  factory _$EmwinProductPayload(
          [void Function(EmwinProductPayloadBuilder)? updates]) =>
      (EmwinProductPayloadBuilder()..update(updates))._build();

  _$EmwinProductPayload._(
      {required this.heading,
      required this.awipsId,
      this.office,
      required this.issuedAt,
      required this.text})
      : super._();
  @override
  EmwinProductPayload rebuild(
          void Function(EmwinProductPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmwinProductPayloadBuilder toBuilder() =>
      EmwinProductPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmwinProductPayload &&
        heading == other.heading &&
        awipsId == other.awipsId &&
        office == other.office &&
        issuedAt == other.issuedAt &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jc(_$hash, awipsId.hashCode);
    _$hash = $jc(_$hash, office.hashCode);
    _$hash = $jc(_$hash, issuedAt.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmwinProductPayload')
          ..add('heading', heading)
          ..add('awipsId', awipsId)
          ..add('office', office)
          ..add('issuedAt', issuedAt)
          ..add('text', text))
        .toString();
  }
}

class EmwinProductPayloadBuilder
    implements Builder<EmwinProductPayload, EmwinProductPayloadBuilder> {
  _$EmwinProductPayload? _$v;

  String? _heading;
  String? get heading => _$this._heading;
  set heading(String? heading) => _$this._heading = heading;

  String? _awipsId;
  String? get awipsId => _$this._awipsId;
  set awipsId(String? awipsId) => _$this._awipsId = awipsId;

  String? _office;
  String? get office => _$this._office;
  set office(String? office) => _$this._office = office;

  DateTime? _issuedAt;
  DateTime? get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime? issuedAt) => _$this._issuedAt = issuedAt;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  EmwinProductPayloadBuilder() {
    EmwinProductPayload._defaults(this);
  }

  EmwinProductPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heading = $v.heading;
      _awipsId = $v.awipsId;
      _office = $v.office;
      _issuedAt = $v.issuedAt;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmwinProductPayload other) {
    _$v = other as _$EmwinProductPayload;
  }

  @override
  void update(void Function(EmwinProductPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmwinProductPayload build() => _build();

  _$EmwinProductPayload _build() {
    final _$result = _$v ??
        _$EmwinProductPayload._(
          heading: BuiltValueNullFieldError.checkNotNull(
              heading, r'EmwinProductPayload', 'heading'),
          awipsId: BuiltValueNullFieldError.checkNotNull(
              awipsId, r'EmwinProductPayload', 'awipsId'),
          office: office,
          issuedAt: BuiltValueNullFieldError.checkNotNull(
              issuedAt, r'EmwinProductPayload', 'issuedAt'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'EmwinProductPayload', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
