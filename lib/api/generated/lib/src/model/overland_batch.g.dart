// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overland_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OverlandBatch extends OverlandBatch {
  @override
  final BuiltList<OverlandBatchLocationsInner> locations;
  @override
  final JsonObject? trip;
  @override
  final JsonObject? current;

  factory _$OverlandBatch([void Function(OverlandBatchBuilder)? updates]) =>
      (OverlandBatchBuilder()..update(updates))._build();

  _$OverlandBatch._({required this.locations, this.trip, this.current})
    : super._();
  @override
  OverlandBatch rebuild(void Function(OverlandBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverlandBatchBuilder toBuilder() => OverlandBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverlandBatch &&
        locations == other.locations &&
        trip == other.trip &&
        current == other.current;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locations.hashCode);
    _$hash = $jc(_$hash, trip.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OverlandBatch')
          ..add('locations', locations)
          ..add('trip', trip)
          ..add('current', current))
        .toString();
  }
}

class OverlandBatchBuilder
    implements Builder<OverlandBatch, OverlandBatchBuilder> {
  _$OverlandBatch? _$v;

  ListBuilder<OverlandBatchLocationsInner>? _locations;
  ListBuilder<OverlandBatchLocationsInner> get locations =>
      _$this._locations ??= ListBuilder<OverlandBatchLocationsInner>();
  set locations(ListBuilder<OverlandBatchLocationsInner>? locations) =>
      _$this._locations = locations;

  JsonObject? _trip;
  JsonObject? get trip => _$this._trip;
  set trip(JsonObject? trip) => _$this._trip = trip;

  JsonObject? _current;
  JsonObject? get current => _$this._current;
  set current(JsonObject? current) => _$this._current = current;

  OverlandBatchBuilder() {
    OverlandBatch._defaults(this);
  }

  OverlandBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locations = $v.locations.toBuilder();
      _trip = $v.trip;
      _current = $v.current;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverlandBatch other) {
    _$v = other as _$OverlandBatch;
  }

  @override
  void update(void Function(OverlandBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverlandBatch build() => _build();

  _$OverlandBatch _build() {
    _$OverlandBatch _$result;
    try {
      _$result =
          _$v ??
          _$OverlandBatch._(
            locations: locations.build(),
            trip: trip,
            current: current,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locations';
        locations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OverlandBatch',
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
