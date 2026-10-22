// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleInput extends ChronicleInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;
  @override
  final ChronicleArea? area;
  @override
  final String? retention;
  @override
  final int? sizeCapBytes;
  @override
  final BuiltList<String>? situationIds;
  @override
  final BuiltList<String>? hypothesisSetIds;
  @override
  final BuiltList<String>? investigationIds;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<ChronicleLayerInput>? layers;
  @override
  final String? fromWorkspaceId;
  @override
  final bool? activate;

  factory _$ChronicleInput([void Function(ChronicleInputBuilder)? updates]) =>
      (ChronicleInputBuilder()..update(updates))._build();

  _$ChronicleInput._(
      {required this.name,
      this.description,
      this.visibility,
      this.tlp,
      this.area,
      this.retention,
      this.sizeCapBytes,
      this.situationIds,
      this.hypothesisSetIds,
      this.investigationIds,
      this.topicIds,
      this.layers,
      this.fromWorkspaceId,
      this.activate})
      : super._();
  @override
  ChronicleInput rebuild(void Function(ChronicleInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleInputBuilder toBuilder() => ChronicleInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleInput &&
        name == other.name &&
        description == other.description &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        area == other.area &&
        retention == other.retention &&
        sizeCapBytes == other.sizeCapBytes &&
        situationIds == other.situationIds &&
        hypothesisSetIds == other.hypothesisSetIds &&
        investigationIds == other.investigationIds &&
        topicIds == other.topicIds &&
        layers == other.layers &&
        fromWorkspaceId == other.fromWorkspaceId &&
        activate == other.activate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, sizeCapBytes.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, hypothesisSetIds.hashCode);
    _$hash = $jc(_$hash, investigationIds.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, fromWorkspaceId.hashCode);
    _$hash = $jc(_$hash, activate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleInput')
          ..add('name', name)
          ..add('description', description)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('area', area)
          ..add('retention', retention)
          ..add('sizeCapBytes', sizeCapBytes)
          ..add('situationIds', situationIds)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('investigationIds', investigationIds)
          ..add('topicIds', topicIds)
          ..add('layers', layers)
          ..add('fromWorkspaceId', fromWorkspaceId)
          ..add('activate', activate))
        .toString();
  }
}

class ChronicleInputBuilder
    implements Builder<ChronicleInput, ChronicleInputBuilder> {
  _$ChronicleInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ChronicleAreaBuilder? _area;
  ChronicleAreaBuilder get area => _$this._area ??= ChronicleAreaBuilder();
  set area(ChronicleAreaBuilder? area) => _$this._area = area;

  String? _retention;
  String? get retention => _$this._retention;
  set retention(String? retention) => _$this._retention = retention;

  int? _sizeCapBytes;
  int? get sizeCapBytes => _$this._sizeCapBytes;
  set sizeCapBytes(int? sizeCapBytes) => _$this._sizeCapBytes = sizeCapBytes;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  ListBuilder<String>? _hypothesisSetIds;
  ListBuilder<String> get hypothesisSetIds =>
      _$this._hypothesisSetIds ??= ListBuilder<String>();
  set hypothesisSetIds(ListBuilder<String>? hypothesisSetIds) =>
      _$this._hypothesisSetIds = hypothesisSetIds;

  ListBuilder<String>? _investigationIds;
  ListBuilder<String> get investigationIds =>
      _$this._investigationIds ??= ListBuilder<String>();
  set investigationIds(ListBuilder<String>? investigationIds) =>
      _$this._investigationIds = investigationIds;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ListBuilder<ChronicleLayerInput>? _layers;
  ListBuilder<ChronicleLayerInput> get layers =>
      _$this._layers ??= ListBuilder<ChronicleLayerInput>();
  set layers(ListBuilder<ChronicleLayerInput>? layers) =>
      _$this._layers = layers;

  String? _fromWorkspaceId;
  String? get fromWorkspaceId => _$this._fromWorkspaceId;
  set fromWorkspaceId(String? fromWorkspaceId) =>
      _$this._fromWorkspaceId = fromWorkspaceId;

  bool? _activate;
  bool? get activate => _$this._activate;
  set activate(bool? activate) => _$this._activate = activate;

  ChronicleInputBuilder() {
    ChronicleInput._defaults(this);
  }

  ChronicleInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _area = $v.area?.toBuilder();
      _retention = $v.retention;
      _sizeCapBytes = $v.sizeCapBytes;
      _situationIds = $v.situationIds?.toBuilder();
      _hypothesisSetIds = $v.hypothesisSetIds?.toBuilder();
      _investigationIds = $v.investigationIds?.toBuilder();
      _topicIds = $v.topicIds?.toBuilder();
      _layers = $v.layers?.toBuilder();
      _fromWorkspaceId = $v.fromWorkspaceId;
      _activate = $v.activate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleInput other) {
    _$v = other as _$ChronicleInput;
  }

  @override
  void update(void Function(ChronicleInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleInput build() => _build();

  _$ChronicleInput _build() {
    _$ChronicleInput _$result;
    try {
      _$result = _$v ??
          _$ChronicleInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChronicleInput', 'name'),
            description: description,
            visibility: visibility,
            tlp: tlp,
            area: _area?.build(),
            retention: retention,
            sizeCapBytes: sizeCapBytes,
            situationIds: _situationIds?.build(),
            hypothesisSetIds: _hypothesisSetIds?.build(),
            investigationIds: _investigationIds?.build(),
            topicIds: _topicIds?.build(),
            layers: _layers?.build(),
            fromWorkspaceId: fromWorkspaceId,
            activate: activate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        _area?.build();

        _$failedField = 'situationIds';
        _situationIds?.build();
        _$failedField = 'hypothesisSetIds';
        _hypothesisSetIds?.build();
        _$failedField = 'investigationIds';
        _investigationIds?.build();
        _$failedField = 'topicIds';
        _topicIds?.build();
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
