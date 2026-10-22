// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prob_severe_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProbSeverePayload extends ProbSeverePayload {
  @override
  final int probSevere;
  @override
  final int probTor;
  @override
  final int probHail;
  @override
  final int probWind;
  @override
  final num? meshIn;
  @override
  final num? compRefDbz;
  @override
  final num? vil;
  @override
  final num? echoTop50Kft;
  @override
  final num? flashRate;
  @override
  final num? muCape;
  @override
  final num? mlCape;
  @override
  final num? ebShearKt;
  @override
  final num? srh01km;
  @override
  final ProbSeverePayloadMotion? motion;
  @override
  final String label;
  @override
  final bool automated;
  @override
  final bool notAWarning;

  factory _$ProbSeverePayload(
          [void Function(ProbSeverePayloadBuilder)? updates]) =>
      (ProbSeverePayloadBuilder()..update(updates))._build();

  _$ProbSeverePayload._(
      {required this.probSevere,
      required this.probTor,
      required this.probHail,
      required this.probWind,
      this.meshIn,
      this.compRefDbz,
      this.vil,
      this.echoTop50Kft,
      this.flashRate,
      this.muCape,
      this.mlCape,
      this.ebShearKt,
      this.srh01km,
      this.motion,
      required this.label,
      required this.automated,
      required this.notAWarning})
      : super._();
  @override
  ProbSeverePayload rebuild(void Function(ProbSeverePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProbSeverePayloadBuilder toBuilder() =>
      ProbSeverePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProbSeverePayload &&
        probSevere == other.probSevere &&
        probTor == other.probTor &&
        probHail == other.probHail &&
        probWind == other.probWind &&
        meshIn == other.meshIn &&
        compRefDbz == other.compRefDbz &&
        vil == other.vil &&
        echoTop50Kft == other.echoTop50Kft &&
        flashRate == other.flashRate &&
        muCape == other.muCape &&
        mlCape == other.mlCape &&
        ebShearKt == other.ebShearKt &&
        srh01km == other.srh01km &&
        motion == other.motion &&
        label == other.label &&
        automated == other.automated &&
        notAWarning == other.notAWarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, probSevere.hashCode);
    _$hash = $jc(_$hash, probTor.hashCode);
    _$hash = $jc(_$hash, probHail.hashCode);
    _$hash = $jc(_$hash, probWind.hashCode);
    _$hash = $jc(_$hash, meshIn.hashCode);
    _$hash = $jc(_$hash, compRefDbz.hashCode);
    _$hash = $jc(_$hash, vil.hashCode);
    _$hash = $jc(_$hash, echoTop50Kft.hashCode);
    _$hash = $jc(_$hash, flashRate.hashCode);
    _$hash = $jc(_$hash, muCape.hashCode);
    _$hash = $jc(_$hash, mlCape.hashCode);
    _$hash = $jc(_$hash, ebShearKt.hashCode);
    _$hash = $jc(_$hash, srh01km.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProbSeverePayload')
          ..add('probSevere', probSevere)
          ..add('probTor', probTor)
          ..add('probHail', probHail)
          ..add('probWind', probWind)
          ..add('meshIn', meshIn)
          ..add('compRefDbz', compRefDbz)
          ..add('vil', vil)
          ..add('echoTop50Kft', echoTop50Kft)
          ..add('flashRate', flashRate)
          ..add('muCape', muCape)
          ..add('mlCape', mlCape)
          ..add('ebShearKt', ebShearKt)
          ..add('srh01km', srh01km)
          ..add('motion', motion)
          ..add('label', label)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning))
        .toString();
  }
}

class ProbSeverePayloadBuilder
    implements Builder<ProbSeverePayload, ProbSeverePayloadBuilder> {
  _$ProbSeverePayload? _$v;

  int? _probSevere;
  int? get probSevere => _$this._probSevere;
  set probSevere(int? probSevere) => _$this._probSevere = probSevere;

  int? _probTor;
  int? get probTor => _$this._probTor;
  set probTor(int? probTor) => _$this._probTor = probTor;

  int? _probHail;
  int? get probHail => _$this._probHail;
  set probHail(int? probHail) => _$this._probHail = probHail;

  int? _probWind;
  int? get probWind => _$this._probWind;
  set probWind(int? probWind) => _$this._probWind = probWind;

  num? _meshIn;
  num? get meshIn => _$this._meshIn;
  set meshIn(num? meshIn) => _$this._meshIn = meshIn;

  num? _compRefDbz;
  num? get compRefDbz => _$this._compRefDbz;
  set compRefDbz(num? compRefDbz) => _$this._compRefDbz = compRefDbz;

  num? _vil;
  num? get vil => _$this._vil;
  set vil(num? vil) => _$this._vil = vil;

  num? _echoTop50Kft;
  num? get echoTop50Kft => _$this._echoTop50Kft;
  set echoTop50Kft(num? echoTop50Kft) => _$this._echoTop50Kft = echoTop50Kft;

  num? _flashRate;
  num? get flashRate => _$this._flashRate;
  set flashRate(num? flashRate) => _$this._flashRate = flashRate;

  num? _muCape;
  num? get muCape => _$this._muCape;
  set muCape(num? muCape) => _$this._muCape = muCape;

  num? _mlCape;
  num? get mlCape => _$this._mlCape;
  set mlCape(num? mlCape) => _$this._mlCape = mlCape;

  num? _ebShearKt;
  num? get ebShearKt => _$this._ebShearKt;
  set ebShearKt(num? ebShearKt) => _$this._ebShearKt = ebShearKt;

  num? _srh01km;
  num? get srh01km => _$this._srh01km;
  set srh01km(num? srh01km) => _$this._srh01km = srh01km;

  ProbSeverePayloadMotionBuilder? _motion;
  ProbSeverePayloadMotionBuilder get motion =>
      _$this._motion ??= ProbSeverePayloadMotionBuilder();
  set motion(ProbSeverePayloadMotionBuilder? motion) => _$this._motion = motion;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  ProbSeverePayloadBuilder() {
    ProbSeverePayload._defaults(this);
  }

  ProbSeverePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _probSevere = $v.probSevere;
      _probTor = $v.probTor;
      _probHail = $v.probHail;
      _probWind = $v.probWind;
      _meshIn = $v.meshIn;
      _compRefDbz = $v.compRefDbz;
      _vil = $v.vil;
      _echoTop50Kft = $v.echoTop50Kft;
      _flashRate = $v.flashRate;
      _muCape = $v.muCape;
      _mlCape = $v.mlCape;
      _ebShearKt = $v.ebShearKt;
      _srh01km = $v.srh01km;
      _motion = $v.motion?.toBuilder();
      _label = $v.label;
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProbSeverePayload other) {
    _$v = other as _$ProbSeverePayload;
  }

  @override
  void update(void Function(ProbSeverePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProbSeverePayload build() => _build();

  _$ProbSeverePayload _build() {
    _$ProbSeverePayload _$result;
    try {
      _$result = _$v ??
          _$ProbSeverePayload._(
            probSevere: BuiltValueNullFieldError.checkNotNull(
                probSevere, r'ProbSeverePayload', 'probSevere'),
            probTor: BuiltValueNullFieldError.checkNotNull(
                probTor, r'ProbSeverePayload', 'probTor'),
            probHail: BuiltValueNullFieldError.checkNotNull(
                probHail, r'ProbSeverePayload', 'probHail'),
            probWind: BuiltValueNullFieldError.checkNotNull(
                probWind, r'ProbSeverePayload', 'probWind'),
            meshIn: meshIn,
            compRefDbz: compRefDbz,
            vil: vil,
            echoTop50Kft: echoTop50Kft,
            flashRate: flashRate,
            muCape: muCape,
            mlCape: mlCape,
            ebShearKt: ebShearKt,
            srh01km: srh01km,
            motion: _motion?.build(),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'ProbSeverePayload', 'label'),
            automated: BuiltValueNullFieldError.checkNotNull(
                automated, r'ProbSeverePayload', 'automated'),
            notAWarning: BuiltValueNullFieldError.checkNotNull(
                notAWarning, r'ProbSeverePayload', 'notAWarning'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'motion';
        _motion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProbSeverePayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
