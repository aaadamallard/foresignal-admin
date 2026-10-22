// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsForecastStatusEnum _$dossierSectionsForecastStatusEnum_ok =
    const DossierSectionsForecastStatusEnum._('ok');
const DossierSectionsForecastStatusEnum
    _$dossierSectionsForecastStatusEnum_empty =
    const DossierSectionsForecastStatusEnum._('empty');
const DossierSectionsForecastStatusEnum
    _$dossierSectionsForecastStatusEnum_unavailable =
    const DossierSectionsForecastStatusEnum._('unavailable');
const DossierSectionsForecastStatusEnum
    _$dossierSectionsForecastStatusEnum_notInstalled =
    const DossierSectionsForecastStatusEnum._('notInstalled');

DossierSectionsForecastStatusEnum _$dossierSectionsForecastStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsForecastStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsForecastStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsForecastStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsForecastStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsForecastStatusEnum>
    _$dossierSectionsForecastStatusEnumValues = BuiltSet<
        DossierSectionsForecastStatusEnum>(const <DossierSectionsForecastStatusEnum>[
  _$dossierSectionsForecastStatusEnum_ok,
  _$dossierSectionsForecastStatusEnum_empty,
  _$dossierSectionsForecastStatusEnum_unavailable,
  _$dossierSectionsForecastStatusEnum_notInstalled,
]);

Serializer<DossierSectionsForecastStatusEnum>
    _$dossierSectionsForecastStatusEnumSerializer =
    _$DossierSectionsForecastStatusEnumSerializer();

class _$DossierSectionsForecastStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsForecastStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[DossierSectionsForecastStatusEnum];
  @override
  final String wireName = 'DossierSectionsForecastStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsForecastStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsForecastStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsForecastStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsForecast extends DossierSectionsForecast {
  @override
  final DossierSectionsForecastStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<DossierSectionsForecastOfficialInner>? official;
  @override
  final BuiltList<LedgerQuestionBrief>? questions;

  factory _$DossierSectionsForecast(
          [void Function(DossierSectionsForecastBuilder)? updates]) =>
      (DossierSectionsForecastBuilder()..update(updates))._build();

  _$DossierSectionsForecast._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.official,
      this.questions})
      : super._();
  @override
  DossierSectionsForecast rebuild(
          void Function(DossierSectionsForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsForecastBuilder toBuilder() =>
      DossierSectionsForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsForecast &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        official == other.official &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, official.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsForecast')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('official', official)
          ..add('questions', questions))
        .toString();
  }
}

class DossierSectionsForecastBuilder
    implements
        Builder<DossierSectionsForecast, DossierSectionsForecastBuilder> {
  _$DossierSectionsForecast? _$v;

  DossierSectionsForecastStatusEnum? _status;
  DossierSectionsForecastStatusEnum? get status => _$this._status;
  set status(DossierSectionsForecastStatusEnum? status) =>
      _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DossierSectionsOverviewLinksBuilder? _links;
  DossierSectionsOverviewLinksBuilder get links =>
      _$this._links ??= DossierSectionsOverviewLinksBuilder();
  set links(DossierSectionsOverviewLinksBuilder? links) =>
      _$this._links = links;

  DossierSectionsOverviewFacetsBuilder? _facets;
  DossierSectionsOverviewFacetsBuilder get facets =>
      _$this._facets ??= DossierSectionsOverviewFacetsBuilder();
  set facets(DossierSectionsOverviewFacetsBuilder? facets) =>
      _$this._facets = facets;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ListBuilder<DossierSectionsForecastOfficialInner>? _official;
  ListBuilder<DossierSectionsForecastOfficialInner> get official =>
      _$this._official ??= ListBuilder<DossierSectionsForecastOfficialInner>();
  set official(ListBuilder<DossierSectionsForecastOfficialInner>? official) =>
      _$this._official = official;

  ListBuilder<LedgerQuestionBrief>? _questions;
  ListBuilder<LedgerQuestionBrief> get questions =>
      _$this._questions ??= ListBuilder<LedgerQuestionBrief>();
  set questions(ListBuilder<LedgerQuestionBrief>? questions) =>
      _$this._questions = questions;

  DossierSectionsForecastBuilder() {
    DossierSectionsForecast._defaults(this);
  }

  DossierSectionsForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _official = $v.official?.toBuilder();
      _questions = $v.questions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsForecast other) {
    _$v = other as _$DossierSectionsForecast;
  }

  @override
  void update(void Function(DossierSectionsForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsForecast build() => _build();

  _$DossierSectionsForecast _build() {
    _$DossierSectionsForecast _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsForecast._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsForecast', 'status'),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            official: _official?.build(),
            questions: _questions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'official';
        _official?.build();
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DossierSectionsForecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
