// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_type_capabilities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelTypeCapabilities extends ChannelTypeCapabilities {
  @override
  final bool? editInPlace;
  @override
  final bool? attachments;
  @override
  final bool? fanOut;

  factory _$ChannelTypeCapabilities([
    void Function(ChannelTypeCapabilitiesBuilder)? updates,
  ]) => (ChannelTypeCapabilitiesBuilder()..update(updates))._build();

  _$ChannelTypeCapabilities._({this.editInPlace, this.attachments, this.fanOut})
    : super._();
  @override
  ChannelTypeCapabilities rebuild(
    void Function(ChannelTypeCapabilitiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChannelTypeCapabilitiesBuilder toBuilder() =>
      ChannelTypeCapabilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelTypeCapabilities &&
        editInPlace == other.editInPlace &&
        attachments == other.attachments &&
        fanOut == other.fanOut;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, editInPlace.hashCode);
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, fanOut.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelTypeCapabilities')
          ..add('editInPlace', editInPlace)
          ..add('attachments', attachments)
          ..add('fanOut', fanOut))
        .toString();
  }
}

class ChannelTypeCapabilitiesBuilder
    implements
        Builder<ChannelTypeCapabilities, ChannelTypeCapabilitiesBuilder> {
  _$ChannelTypeCapabilities? _$v;

  bool? _editInPlace;
  bool? get editInPlace => _$this._editInPlace;
  set editInPlace(bool? editInPlace) => _$this._editInPlace = editInPlace;

  bool? _attachments;
  bool? get attachments => _$this._attachments;
  set attachments(bool? attachments) => _$this._attachments = attachments;

  bool? _fanOut;
  bool? get fanOut => _$this._fanOut;
  set fanOut(bool? fanOut) => _$this._fanOut = fanOut;

  ChannelTypeCapabilitiesBuilder() {
    ChannelTypeCapabilities._defaults(this);
  }

  ChannelTypeCapabilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _editInPlace = $v.editInPlace;
      _attachments = $v.attachments;
      _fanOut = $v.fanOut;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelTypeCapabilities other) {
    _$v = other as _$ChannelTypeCapabilities;
  }

  @override
  void update(void Function(ChannelTypeCapabilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelTypeCapabilities build() => _build();

  _$ChannelTypeCapabilities _build() {
    final _$result =
        _$v ??
        _$ChannelTypeCapabilities._(
          editInPlace: editInPlace,
          attachments: attachments,
          fanOut: fanOut,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
