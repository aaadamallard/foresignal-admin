// The preview's fake answers for forecasters, calibration, scorecards,
// evaluations, forecast questions and external data providers (EDP). Bodies
// follow their schemas in openapi/OpenAPI.json (ForecasterPage, Forecaster,
// ForecastCalibration, ForecastNumericCalibration, ForecastScorecard,
// ForecasterComparison, EnsembleRefitResult, ForecastEvaluation,
// ForecastQuestionPage, ForecastQuestion, ForecastHistory,
// ExternalSourcePage, ExternalSource, ExternalSourceCreated,
// RegistrationToken, RegistrationTokenCreated, ExternalBinding,
// ExternalBindingPreview, ExternalQuestionLink, EdpProtocolInfo,
// EdpValidationReport, AnalysisRequestResult).

/// A fake reply.
typedef ForecastingReply = ({int status, Object? body});

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

const String _manifestId = '01JBK3Q8Z5N7W2X4Y6R9T1FM01';

/// The open binary question.
const String previewQuestionBinary = '01JBK3Q8Z5N7W2X4Y6R9T1FQ01';

/// The open numeric question.
const String previewQuestionNumeric = '01JBK3Q8Z5N7W2X4Y6R9T1FQ02';

/// The resolved question.
const String previewQuestionResolved = '01JBK3Q8Z5N7W2X4Y6R9T1FQ03';

Map<String, Object?> _forecaster(
  String id,
  String type,
  String name, {
  bool active = true,
  int? resolved,
  num? brier,
  Map<String, Object?> config = const <String, Object?>{},
}) => <String, Object?>{
  'id': id,
  'type': type,
  'name': name,
  'config': config,
  'version': '1.4.0',
  'active': active,
  if (resolved != null)
    'trackRecord': <String, Object?>{
      'nResolved': resolved,
      'brier': ?brier,
      'label': resolved >= 20 ? 'ok' : 'insufficient',
    },
  'createdAt': '2026-03-02T09:00:00Z',
};

Map<String, Object?> _forecast(
  String id,
  String questionId,
  String forecasterId,
  String type, {
  num? probability,
  Map<String, Object?>? quantiles,
  String? rationale,
  String madeAt = '2026-10-21T08:00:00Z',
}) => <String, Object?>{
  'id': id,
  'questionId': questionId,
  'forecasterId': forecasterId,
  'forecasterType': type,
  'madeAt': madeAt,
  'asOfSeq': 88123401,
  'probability': ?probability,
  'quantiles': ?quantiles,
  'rationale': ?rationale,
  'recalibrated': false,
  'manifestId': _manifestId,
};

Map<String, Object?> _question(
  String id,
  String title,
  String type,
  String status,
  String category,
  Map<String, Object?> resolver, {
  Map<String, Object?>? outcomes,
  List<Map<String, Object?>> forecasts = const <Map<String, Object?>>[],
  num? ensemble,
  String? term,
  Map<String, Object?>? resolution,
  List<String> tags = const <String>[],
}) => <String, Object?>{
  'id': id,
  'title': title,
  'type': type,
  'status': status,
  'category': category,
  'tags': tags,
  'resolverType': resolver['type'],
  'opensAt': '2026-10-01T00:00:00Z',
  'closesAt': '2026-11-30T00:00:00Z',
  'resolveBy': '2026-12-07T00:00:00Z',
  'origin': 'operator',
  'private': false,
  'resolutionCriteria':
      'Resolves yes if the named condition is recorded by the resolver within the window; otherwise no.',
  'resolver': <String, Object?>{...resolver, 'version': '2'},
  'outcomes': ?outcomes,
  'forecastCount': forecasts.length,
  'ensembleProbability': ?ensemble,
  'estimativeTerm': ?term,
  'latestForecasts': forecasts,
  'resolution': ?resolution,
  if (resolution != null) 'resolvedOutcome': resolution['outcome'],
};

// us-english-allow-start: EdpSourceInfo's wire member for the data license
Map<String, Object?> _sourceInfo(String id, String name, String publisher) => <String, Object?>{
  'id': id,
  'name': name,
  'description': 'Forecasts from a foundation time-series model over published series.',
  'version': '2.3.1',
  'publisher': <String, Object?>{'name': publisher, 'url': 'https://example.org'},
  'homepage': 'https://example.org/edp',
  'licence': <String, Object?>{'id': 'CC-BY-4.0', 'attribution': publisher, 'redistribution': 'allowed'},
  'terms': <String, Object?>{'summary': 'Research use; attribute the publisher.'},
  'access': <String, Object?>{'route': 'official', 'fragility': 'low'},
  'originator': <String, Object?>{'id': id, 'class': 'derived'},
};
// us-english-allow-end

/// The fake forecasting backend's state; writes change it.
class PreviewForecasting {
  /// Forecasters by id.
  final Map<String, Map<String, Object?>> forecasters = <String, Map<String, Object?>>{
    for (final f in <Map<String, Object?>>[
      _forecaster('base-rate', 'base-rate', 'Base rate', resolved: 412, brier: 0.181),
      _forecaster('climatology', 'climatology', 'Climatology', resolved: 388, brier: 0.204),
      _forecaster('llm:daily-analyst', 'llm', 'Daily analyst', resolved: 167, brier: 0.142),
      _forecaster('ensemble', 'ensemble', 'Ensemble', resolved: 412, brier: 0.128),
      _forecaster('operator:duty', 'operator', 'Duty operator', active: false, resolved: 6, brier: 0.22),
      _forecaster(
        'edp:timesfm/daily',
        'external',
        'TimesFM daily',
        resolved: 54,
        config: <String, Object?>{'sourceId': 'timesfm', 'streamId': 'daily', 'externalMinResolved': 30},
      ),
    ])
      f['id']! as String: f,
  };

  /// Questions by id.
  late final Map<String, Map<String, Object?>> questions = <String, Map<String, Object?>>{
    previewQuestionBinary: _question(
      previewQuestionBinary,
      'Will the Port of Odesa record fewer than 10 arrivals in any week of November?',
      'binary',
      'open',
      'maritime',
      <String, Object?>{
        'type': 'count-threshold',
        'selector': <String, Object?>{'intelEventType': 'port-call'},
        'area': <String, Object?>{'placeId': 'port-odesa'},
        'window': <String, Object?>{'start': '2026-11-01T00:00:00Z', 'end': '2026-12-01T00:00:00Z'},
        'op': 'lt',
        'threshold': 10,
      },
      tags: <String>['black-sea', 'ports'],
      ensemble: 0.31,
      term: 'unlikely',
      forecasts: <Map<String, Object?>>[
        _forecast(
          '01JBK3Q8Z5N7W2X4Y6R9T1FF01',
          previewQuestionBinary,
          'llm:daily-analyst',
          'llm',
          probability: 0.27,
          rationale: 'Arrivals recovered after the October strike; insurance premiums remain elevated.',
        ),
        _forecast('01JBK3Q8Z5N7W2X4Y6R9T1FF02', previewQuestionBinary, 'base-rate', 'base-rate', probability: 0.36),
        _forecast('01JBK3Q8Z5N7W2X4Y6R9T1FF03', previewQuestionBinary, 'ensemble', 'ensemble', probability: 0.31),
      ],
    ),
    previewQuestionNumeric: _question(
      previewQuestionNumeric,
      'Mean daily Bosporus transits in November',
      'numeric',
      'open',
      'maritime',
      <String, Object?>{
        'type': 'series-value',
        'ref': 'series:imf-portwatch-chokepoints/bosporus',
        'period': '2026-11',
        'aggregate': 'mean',
      },
      outcomes: <String, Object?>{'unit': 'transits/day', 'lower': 0, 'upper': 200},
      forecasts: <Map<String, Object?>>[
        _forecast(
          '01JBK3Q8Z5N7W2X4Y6R9T1FF04',
          previewQuestionNumeric,
          'edp:timesfm/daily',
          'external',
          quantiles: <String, Object?>{'p05': 98, 'p25': 109, 'p50': 116, 'p75': 123, 'p95': 134},
        ),
      ],
    ),
    previewQuestionResolved: _question(
      previewQuestionResolved,
      'Will a GNSS interference alert fire over the eastern Baltic in September?',
      'binary',
      'resolved',
      'gnss',
      <String, Object?>{
        'type': 'alert-fired',
        'ruleId': 'gnss-baltic',
        'window': <String, Object?>{'start': '2026-09-01T00:00:00Z', 'end': '2026-10-01T00:00:00Z'},
      },
      ensemble: 0.82,
      resolution: <String, Object?>{
        'outcome': 'yes',
        'resolvedAt': '2026-09-04T13:20:00Z',
        'resolvedBy': 'resolver',
        'early': true,
        'evidence': <String>['alert:01JBK3Q8Z5N7W2X4Y6R9T1FA01'],
      },
    ),
  };

  /// Providers by source id.
  final Map<String, Map<String, Object?>> sources = <String, Map<String, Object?>>{
    'timesfm': <String, Object?>{
      'sourceId': 'timesfm',
      'state': 'active',
      'registeredVia': 'operator',
      'manifest': <String, Object?>{
        'protocol': 'foresignal-edp/1.3',
        'source': _sourceInfo('timesfm', 'TimesFM forecasts', 'Example Research Lab'),
        'transport': <String, Object?>{
          'push': true,
          'analysisRequest': <String, Object?>{'url': 'https://timesfm.example.org/edp/analyze', 'auth': 'bearer'},
        },
        'streams': <Object?>[
          <String, Object?>{
            'id': 'daily',
            'mode': 'atomic',
            'itemType': 'forecast',
            'kind': 'quantile-forecast',
            'title': 'Daily quantile forecasts',
            'suggestedBindings': <Object?>[
              <String, Object?>{'target': 'forecast', 'config': <String, Object?>{'questionCategory': 'maritime'}},
            ],
          },
          <String, Object?>{
            'id': 'transits',
            'mode': 'atomic',
            'itemType': 'observation',
            'kind': 'chokepoint-transits',
            'title': 'Chokepoint transits',
            'suggestedBindings': <Object?>[
              <String, Object?>{'target': 'series', 'config': <String, Object?>{'seriesId': 'transits', 'unit': 'count'}},
            ],
          },
        ],
      },
      'manifestSha256': '9f2c41d7a0b3e65c1d8f4a92b7e03c5d6a1f8e2b4c9d07a3e5f1b6c8d2a4e7f9',
      'createdAt': '2026-06-14T10:00:00Z',
      'approvedBy': 'admin',
      'approvedAt': '2026-06-14T10:05:00Z',
      'lastItemAt': '2026-10-22T05:00:00Z',
      'health': 'ok',
      'allowPrivateNetwork': false,
      'streams': <Object?>[
        <String, Object?>{'streamId': 'daily', 'mode': 'atomic', 'kind': 'quantile-forecast', 'items': 1290, 'rejected': 3, 'lastItemAt': '2026-10-22T05:00:00Z', 'bindings': 1},
        <String, Object?>{'streamId': 'transits', 'mode': 'atomic', 'kind': 'chokepoint-transits', 'items': 8411, 'rejected': 0, 'lastItemAt': '2026-10-22T04:00:00Z', 'bindings': 0},
      ],
      'lastValidationErrors': <Object?>[
        <String, Object?>{'index': 4, 'stream': 'daily', 'id': 'f-20261019-bos', 'reason': 'quantiles are not monotone', 'schemaErrors': <Object?>[<String, Object?>{'path': r'$.quantiles.p75', 'message': 'p75 is below p50'}]},
      ],
    },
    'harbor-sensors': <String, Object?>{
      'sourceId': 'harbor-sensors',
      'state': 'pending',
      'registeredVia': 'registration-token',
      'manifest': <String, Object?>{
        'protocol': 'foresignal-edp/1.2',
        'source': _sourceInfo('harbor-sensors', 'Harbor sensor network', 'Harbor Authority'),
        'transport': <String, Object?>{
          'pull': <String, Object?>{'itemsUrl': 'https://sensors.example.net/edp/items', 'intervalSeconds': 300},
        },
        'streams': <Object?>[
          <String, Object?>{'id': 'berths', 'mode': 'layer', 'itemType': 'feature', 'kind': 'berth-occupancy', 'title': 'Berth occupancy'},
        ],
      },
      'createdAt': '2026-10-20T16:42:00Z',
      'health': 'unknown',
      'allowPrivateNetwork': false,
      'streams': <Object?>[],
    },
  };

  /// Bindings by id.
  final Map<String, Map<String, Object?>> bindings = <String, Map<String, Object?>>{
    '01JBK3Q8Z5N7W2X4Y6R9T1FB01': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1FB01',
      'sourceId': 'timesfm',
      'streamId': 'daily',
      'target': 'forecast',
      'config': <String, Object?>{'questionCategory': 'maritime'},
      'enabled': true,
      'backfill': true,
      'state': 'active',
      'applied': 1287,
      'createdBy': 'admin',
      'createdAt': '2026-06-14T10:06:00Z',
      'targetRef': 'forecaster:edp:timesfm/daily',
      'lastAppliedAt': '2026-10-22T05:00:00Z',
    },
  };

  /// Question links by id.
  final Map<String, Map<String, Object?>> links = <String, Map<String, Object?>>{
    '01JBK3Q8Z5N7W2X4Y6R9T1FK01': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1FK01',
      'sourceId': 'timesfm',
      'forecasterId': 'edp:timesfm/daily',
      'streamId': 'daily',
      'externalQuestionId': 'bosporus-nov-mean',
      'questionId': previewQuestionNumeric,
      'orientation': 'same',
      'createdAt': '2026-10-02T08:00:00Z',
      'lastForecastAt': '2026-10-21T08:00:00Z',
    },
  };

  /// Registration tokens by id.
  final Map<String, Map<String, Object?>> tokens = <String, Map<String, Object?>>{
    '01JBK3Q8Z5N7W2X4Y6R9T1FT01': <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1FT01',
      'name': 'Harbor authority onboarding',
      'prefix': 'fsx_7Hq2',
      'expiresAt': '2026-12-31T00:00:00Z',
      'maxUses': 3,
      'uses': 1,
      'sourceIdPrefix': 'harbor-',
      'createdAt': '2026-10-18T12:00:00Z',
    },
  };

  /// Evaluations by id.
  final Map<String, Map<String, Object?>> evaluations = <String, Map<String, Object?>>{};

  int _seq = 10;

  /// A fresh ULID-shaped id.
  String nextId(String tag) => '01JBK3Q8Z5N7W2X4Y6R9T1${tag.substring(0, 2)}${(_seq++).toString().padLeft(2, '0')}';
}

Map<String, Object?> _entry(String id, String type, int n, num? brier, {num? crps, num skill = 0.12}) => <String, Object?>{
  'forecasterId': id,
  'forecasterType': type,
  'category': 'maritime',
  'nResolved': n,
  'nForecasts': n * 3,
  'label': n >= 20 ? 'ok' : 'insufficient',
  'brier': ?brier,
  'logScore': ?(brier == null ? null : brier * 3.1),
  'crps': ?crps,
  'timeAveragedBrier': ?(brier == null ? null : brier * 1.04),
  'murphy': <String, Object?>{'reliability': 0.012, 'resolution': 0.061, 'uncertainty': 0.23},
  'skill': <String, Object?>{
    'value': skill,
    'reference': 'base-rate',
    'nShared': n,
    'interval': <String, Object?>{'lower': skill - 0.06, 'upper': skill + 0.05, 'level': 0.9, 'method': 'paired-bootstrap'},
  },
  'bias': <String, Object?>{'meanForecastMinusObserved': 0.03, 'hedgedShare': 0.18, 'meanForecastOnNo': 0.21},
  'ensembleWeight': 0.24,
};

Map<String, Object?> _scorecard({bool retrospective = false}) => <String, Object?>{
  'retrospective': retrospective,
  'entries': <Object?>[
    _entry('ensemble', 'ensemble', 412, 0.128, skill: 0.29),
    _entry('llm:daily-analyst', 'llm', 167, 0.142, skill: 0.21),
    _entry('base-rate', 'base-rate', 412, 0.181, skill: 0),
    _entry('edp:timesfm/daily', 'external', 54, null, crps: 6.4, skill: 0.08),
    _entry('operator:duty', 'operator', 6, 0.22, skill: -0.04),
  ],
  'scorerVersion': '3.2.0',
  'computedAt': '2026-10-22T03:00:00Z',
};

final Map<String, Object?> _binaryCalibration = <String, Object?>{
  'n': 167,
  'label': 'ok',
  'method': 'corp',
  'curve': <Object?>[
    for (final x in <double>[0.05, 0.25, 0.5, 0.75, 0.95]) <String, Object?>{'forecast': x, 'calibrated': x * 0.92 + 0.03},
  ],
  'bins': <Object?>[
    for (var i = 0; i < 10; i++)
      <String, Object?>{
        'lower': i / 10,
        'upper': (i + 1) / 10,
        'n': <int>[31, 24, 19, 17, 15, 14, 13, 12, 11, 11][i],
        'meanForecast': i / 10 + 0.05,
        'observedFrequency': (i / 10 + 0.05 + <double>[0.02, -0.03, 0.04, -0.06, 0.05, 0.08, -0.02, -0.09, 0.03, -0.04][i]).clamp(0, 1),
      },
  ],
  'decomposition': <String, Object?>{'score': 0.142, 'miscalibration': 0.009, 'discrimination': 0.097, 'uncertainty': 0.23},
  'sharpness': 0.081,
  'scorerVersion': '3.2.0',
  'computedAt': '2026-10-22T03:00:00Z',
};

final Map<String, Object?> _numericCalibration = <String, Object?>{
  'type': 'numeric',
  'n': 54,
  'label': 'ok',
  'quantileReliability': <Object?>[
    for (final (q, nominal, empirical) in <(String, double, double)>[
      ('p05', 0.05, 0.11),
      ('p25', 0.25, 0.31),
      ('p50', 0.5, 0.52),
      ('p75', 0.75, 0.70),
      ('p95', 0.95, 0.87),
    ])
      <String, Object?>{'level': nominal, 'quantile': q, 'nominal': nominal, 'empirical': empirical, 'n': 54},
  ],
  'pit': <String, Object?>{
    'n': 54,
    'bins': <Object?>[
      for (final (lo, hi, count) in <(double, double, int)>[
        (0, 0.05, 6),
        (0.05, 0.25, 11),
        (0.25, 0.5, 11),
        (0.5, 0.75, 10),
        (0.75, 0.95, 9),
        (0.95, 1, 7),
      ])
        <String, Object?>{'lower': lo, 'upper': hi, 'count': count, 'frequency': count / 54, 'expected': hi - lo},
    ],
  },
  'summary': <String, Object?>{'meanAbsoluteCoverageError': 0.052, 'maxCoverageDeviation': 0.08},
  'scorerVersion': '3.2.0',
  'computedAt': '2026-10-22T03:00:00Z',
};

Map<String, Object?> _history(String questionId, Map<String, Object?> q) {
  final numeric = q['type'] == 'numeric';
  return <String, Object?>{
    'questionId': questionId,
    'type': q['type'],
    'step': 'P1D',
    'from': '2026-10-18',
    'to': '2026-10-21',
    'series': <Object?>[
      for (final f in (q['latestForecasts']! as List<Object?>).cast<Map<String, Object?>>())
        <String, Object?>{
          'forecasterId': f['forecasterId'],
          'points': <Object?>[
            for (var d = 18; d <= 21; d++)
              <String, Object?>{
                'date': '2026-10-$d',
                if (numeric)
                  'quantiles': <String, Object?>{'p05': 96 + d - 18, 'p25': 108, 'p50': 114 + d - 18, 'p75': 122, 'p95': 133}
                else
                  'probability': ((f['probability']! as num) + (21 - d) * 0.02).clamp(0, 1),
                'forecastId': f['id'],
              },
          ],
        },
    ],
  };
}

/// Answers [method] [path] for the forecasting and EDP operations from [v],
/// or `null` when the path is not one of them.
ForecastingReply? answerForecasting(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewForecasting v,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = <String>[for (final p in path.split('/')) Uri.decodeComponent(p)];
  ForecastingReply notFound(String code) => (status: 404, body: _problem(404, 'Not found', code));
  ForecastingReply ok(Object? b) => (status: 200, body: b);

  // Forecasters.
  if (path == '/v1/forecasts/forecasters') {
    if (method == 'POST') {
      final id = input['id']! as String;
      final f = v.forecasters[id] ??= _forecaster(id, 'external', id);
      f['name'] = input['name'] ?? f['name'];
      if (input['config'] case final Map<Object?, Object?> c) {
        f['config'] = c;
      }
      return ok(f);
    }
    return ok(<String, Object?>{'items': v.forecasters.values.toList()});
  }
  if (parts.length == 5 && path.startsWith('/v1/forecasts/forecasters/') && method == 'PUT') {
    final f = v.forecasters[parts[4]];
    if (f == null) {
      return notFound('UNKNOWN_FORECASTER');
    }
    f
      ..['active'] = input['active']
      ..['config'] = input['config'] ?? <String, Object?>{};
    if (input['name'] != null) {
      f['name'] = input['name'];
    }
    return ok(f);
  }
  if (path == '/v1/forecasts/calibration') {
    final f = query['forecaster']?.firstOrNull;
    return ok(f == 'edp:timesfm/daily' ? _numericCalibration : _binaryCalibration);
  }
  if (path == '/v1/forecasts/scorecard') {
    final f = query['forecaster']?.firstOrNull;
    final card = _scorecard();
    if (f != null) {
      card['entries'] = (card['entries']! as List<Object?>).where((e) => (e! as Map)['forecasterId'] == f).toList();
    }
    return ok(card);
  }
  if (path == '/v1/forecasts/compare') {
    final a = query['a']!.first;
    final b = query['b']!.first;
    return ok(<String, Object?>{
      'a': a,
      'b': b,
      'nShared': 142,
      'label': 'ok',
      'metric': 'brier',
      'meanScoreA': 0.139,
      'meanScoreB': 0.176,
      'meanDifference': -0.037,
      'interval': <String, Object?>{'lower': -0.058, 'upper': -0.015, 'level': 0.95, 'method': 'paired-bootstrap'},
      'scorerVersion': '3.2.0',
      'computedAt': '2026-10-22T03:00:00Z',
    });
  }
  if (path == '/v1/forecasts/ensemble/refit' && method == 'POST') {
    return ok(<String, Object?>{
      'fittedAt': '2026-10-22T09:14:00Z',
      'extremizing': <String, Object?>{
        'a': 1.31,
        'enabled': true,
        'nResolutions': 412,
        'distinctForecasterTypes': 5,
        'logScoreImprovement': 0.018,
      },
      'platt': <Object?>[
        <String, Object?>{'forecasterId': 'llm:daily-analyst', 'category': 'maritime', 'a': 1.12, 'b': -0.08, 'n': 167},
        <String, Object?>{'forecasterId': 'base-rate', 'category': 'maritime', 'a': 0.97, 'b': 0.02, 'n': 412},
      ],
      'weights': <Object?>[
        <String, Object?>{'forecasterId': 'llm:daily-analyst', 'category': 'maritime', 'weight': 0.46, 'n': 167},
        <String, Object?>{'forecasterId': 'base-rate', 'category': 'maritime', 'weight': 0.31, 'n': 412},
        <String, Object?>{'forecasterId': 'edp:timesfm/daily', 'category': 'maritime', 'weight': 0.23, 'n': 54},
      ],
    });
  }

  // Evaluations: a new one runs, then finishes on the next read.
  if (path == '/v1/forecasts/evaluations' && method == 'POST') {
    final id = v.nextId('EV');
    final e = <String, Object?>{
      'id': id,
      'forecasterId': input['forecasterId'],
      'from': input['from'],
      'to': input['to'],
      'status': 'running',
      'progress': 0.35,
      'questionsConsidered': 120,
      'questionsEvaluated': 41,
      'skipped': <String, Object?>{'leakageRisk': 9, 'other': 2},
      'caveats': <Object?>[],
      'createdBy': 'admin',
      'createdAt': '2026-10-22T09:20:00Z',
      'startedAt': '2026-10-22T09:20:01Z',
    };
    v.evaluations[id] = e;
    return (status: 202, body: e);
  }
  if (parts.length == 5 && path.startsWith('/v1/forecasts/evaluations/')) {
    final e = v.evaluations[parts[4]];
    if (e == null) {
      return notFound('UNKNOWN_EVALUATION');
    }
    if (e['status'] == 'running') {
      e
        ..['status'] = 'done'
        ..['progress'] = 1
        ..['questionsEvaluated'] = 109
        ..['finishedAt'] = '2026-10-22T09:21:30Z'
        ..['scorecard'] = <String, Object?>{
          ..._scorecard(retrospective: true),
          'entries': <Object?>[_entry('${e['forecasterId']}', 'external', 109, 0.151, skill: 0.11)],
        }
        ..['caveats'] = <Object?>[
          <String, Object?>{'code': 'LEAKAGE_RISK', 'text': '9 questions opened before the knowledge cutoff were skipped.'},
        ];
    }
    return ok(e);
  }

  // Questions.
  if (path == '/v1/forecasts/questions') {
    if (method == 'POST') {
      final dedup = input['dedupKey'];
      final existing = v.questions.values.where((q) => dedup != null && q['dedupKey'] == dedup).firstOrNull;
      if (existing != null) {
        return ok(existing);
      }
      final id = v.nextId('QN');
      final resolver = (input['resolver']! as Map).cast<String, Object?>();
      final q = <String, Object?>{
        ...input,
        'id': id,
        'status': 'open',
        'resolverType': resolver['type'],
        'resolver': <String, Object?>{...resolver, 'version': '2'},
        'opensAt': input['opensAt'] ?? '2026-10-22T09:30:00Z',
        'origin': 'operator',
        'private': input['private'] ?? false,
        'forecastCount': 0,
        'latestForecasts': <Object?>[],
      };
      v.questions[id] = q;
      return (status: 201, body: q);
    }
    final statuses = query['status'] ?? const <String>[];
    final categories = query['category'] ?? const <String>[];
    return ok(<String, Object?>{
      'items': <Object?>[
        for (final q in v.questions.values)
          if ((statuses.isEmpty || statuses.contains(q['status'])) &&
              (categories.isEmpty || categories.contains(q['category'])))
            q,
      ],
    });
  }
  if (parts.length >= 5 && path.startsWith('/v1/forecasts/questions/')) {
    final q = v.questions[parts[4]];
    if (q == null) {
      return notFound('UNKNOWN_QUESTION');
    }
    if (parts.length == 5) {
      if (method == 'PATCH') {
        if (q['status'] != 'open') {
          return (status: 409, body: _problem(409, 'Question closed', 'QUESTION_CLOSED'));
        }
        for (final e in input.entries) {
          q[e.key] = e.key == 'resolver' ? <String, Object?>{...(e.value! as Map).cast<String, Object?>(), 'version': '2'} : e.value;
        }
        if (input['resolver'] case final Map<Object?, Object?> r) {
          q['resolverType'] = r['type'];
        }
      }
      return ok(q);
    }
    final action = parts[5];
    if (action == 'history') {
      return ok(_history(parts[4], q));
    }
    if (action == 'resolve' || action == 'annul') {
      if (q['status'] == 'resolved' || q['status'] == 'annulled') {
        return (status: 409, body: _problem(409, 'Question closed', 'QUESTION_CLOSED'));
      }
      if (action == 'resolve') {
        q
          ..['status'] = 'resolved'
          ..['resolvedOutcome'] = input['outcome']
          ..['resolvedValue'] = input['value']
          ..['resolution'] = <String, Object?>{
            'outcome': ?input['outcome'],
            'value': ?input['value'],
            'resolvedAt': '2026-10-22T09:40:00Z',
            'resolvedBy': 'admin',
            'early': true,
            'evidence': input['evidence'],
            'note': ?input['note'],
          };
      } else {
        q
          ..['status'] = 'annulled'
          ..['annulment'] = <String, Object?>{
            'code': 'OPERATOR',
            'reason': input['reason'],
            'at': '2026-10-22T09:40:00Z',
            'by': 'admin',
          };
      }
      return ok(q);
    }
  }

  // External data providers.
  if (path == '/v1/external/protocol') {
    return ok(<String, Object?>{
      'protocol': 'foresignal-edp/1.3',
      'supported': <String>['foresignal-edp/1.0', 'foresignal-edp/1.1', 'foresignal-edp/1.2', 'foresignal-edp/1.3'],
      'itemTypes': <String>['feature', 'event', 'observation', 'document', 'forecast'],
      'modes': <String>['layer', 'atomic'],
      'schemas': <String>['manifest', 'item', 'batch'],
      'documentation': 'docs/External-Data-Protocol.md',
      'maxMinor': 3,
    });
  }
  if (path == '/v1/external/validate' && method == 'POST') {
    final manifest = input['manifest'];
    final items = (input['items'] as List<Object?>?) ?? const <Object?>[];
    final errors = <Object?>[
      if (manifest is Map && manifest['streams'] is List && (manifest['streams']! as List).isEmpty)
        <String, Object?>{'path': r'$.streams', 'message': 'At least one stream is required.'},
    ];
    final rejected = <Object?>[
      for (var i = 0; i < items.length; i++)
        if ((items[i]! as Map)['stream'] == null)
          <String, Object?>{'index': i, 'reason': 'item has no stream', 'schemaErrors': <Object?>[<String, Object?>{'path': r'$.stream', 'message': 'required'}]},
    ];
    final current = v.sources[input['sourceId']]?['manifest'] as Map?;
    final oldStreams = <Object?>{for (final s in (current?['streams'] as List<Object?>?) ?? const <Object?>[]) (s! as Map)['id']};
    final newStreams = <Object?>{
      if (manifest is Map)
        for (final s in (manifest['streams'] as List<Object?>?) ?? const <Object?>[]) (s! as Map)['id'],
    };
    return ok(<String, Object?>{
      'manifestValid': manifest == null ? null : errors.isEmpty,
      'manifestErrors': errors,
      'breakingChanges': <String>[
        if (current != null && manifest is Map)
          for (final s in oldStreams.difference(newStreams)) 'stream $s removed',
      ],
      'itemsValid': items.length - rejected.length,
      'rejected': rejected,
    });
  }
  if (path == '/v1/external/registration-tokens') {
    if (method == 'POST') {
      final id = v.nextId('TK');
      final t = <String, Object?>{
        'id': id,
        'name': input['name'],
        'prefix': 'fsx_Pr3v',
        'expiresAt': input['expiresAt'],
        'maxUses': input['maxUses'] ?? 1,
        'uses': 0,
        'sourceIdPrefix': input['sourceIdPrefix'],
        'createdAt': '2026-10-22T09:50:00Z',
      };
      v.tokens[id] = t;
      return ok(<String, Object?>{...t, 'token': 'fsx_Pr3vIewOnlyToken0000000000000000'});
    }
    return ok(v.tokens.values.toList());
  }
  if (parts.length == 5 && path.startsWith('/v1/external/registration-tokens/') && method == 'DELETE') {
    return v.tokens.remove(parts[4]) == null ? notFound('UNKNOWN_TOKEN') : (status: 204, body: null);
  }
  if (path == '/v1/external/analysis/requests' && method == 'POST') {
    final q = v.questions[input['questionId']];
    if (q == null || q['status'] != 'open') {
      return (status: 400, body: _problem(400, 'Validation failed', 'VALIDATION_FAILED', 'The question is missing or not open.'));
    }
    return ok(<String, Object?>{'correlationId': 'corr-${v.nextId('CR')}', 'recorded': true, 'forecastId': v.nextId('FF')});
  }
  if (path == '/v1/external/sources') {
    if (method == 'POST') {
      final url = input['manifestUrl'] as String?;
      if (url != null && (url.contains('localhost') || url.contains('192.168.')) && input['allowPrivateNetwork'] != true) {
        return (status: 400, body: _problem(400, 'URL not allowed', 'URL_NOT_ALLOWED'));
      }
      final manifest = (input['manifest'] as Map?)?.cast<String, Object?>() ??
          <String, Object?>{
            'protocol': 'foresignal-edp/1.3',
            'source': _sourceInfo('fetched', 'Fetched provider', 'Remote publisher'),
            'transport': <String, Object?>{'push': true},
            'streams': <Object?>[
              <String, Object?>{'id': 'events', 'mode': 'atomic', 'itemType': 'event', 'kind': 'incident'},
            ],
          };
      final id = '${(manifest['source']! as Map)['id']}';
      if (v.sources.containsKey(id)) {
        return (status: 409, body: _problem(409, 'Source exists', 'SOURCE_EXISTS'));
      }
      final s = <String, Object?>{
        'sourceId': id,
        'state': input['approve'] == true ? 'active' : 'pending',
        'registeredVia': 'operator',
        'manifest': manifest,
        'createdAt': '2026-10-22T09:55:00Z',
        'allowPrivateNetwork': input['allowPrivateNetwork'] ?? false,
        'streams': <Object?>[],
      };
      v.sources[id] = s;
      return (status: 201, body: <String, Object?>{'source': s, 'ingestKey': 'eik_Pr3vIewOnlyIngestKey00000000000'});
    }
    final state = query['state']?.firstOrNull;
    return ok(<String, Object?>{
      'items': <Object?>[for (final s in v.sources.values) if (state == null || s['state'] == state) s],
    });
  }
  if (parts.length >= 5 && path.startsWith('/v1/external/sources/')) {
    final id = parts[4];
    final s = v.sources[id];
    if (s == null) {
      return notFound('UNKNOWN_EXTERNAL_SOURCE');
    }
    if (parts.length == 5) {
      if (method == 'DELETE') {
        v.sources.remove(id);
        v.bindings.removeWhere((_, b) => b['sourceId'] == id);
        v.links.removeWhere((_, l) => l['sourceId'] == id);
        return (status: 204, body: null);
      }
      return ok(s);
    }
    switch (parts[5]) {
      case 'approve':
        s['state'] = 'active';
        return ok(s);
      case 'suspend':
        s['state'] = 'suspended';
        return ok(s);
      case 'manifest':
        final old = <Object?>{for (final st in ((s['manifest']! as Map)['streams'] as List<Object?>)) (st! as Map)['id']};
        final now = <Object?>{for (final st in (input['streams'] as List<Object?>? ?? const <Object?>[])) (st! as Map)['id']};
        final breaking = <String>[for (final x in old.difference(now)) 'stream $x removed'];
        s['manifest'] = input;
        s['breakingChanges'] = breaking;
        if (breaking.isNotEmpty) {
          s['state'] = 'pending';
        }
        return ok(s);
      case 'bindings':
        if (parts.length == 7 && parts[6] == 'accept-suggested') {
          final made = <Object?>[];
          for (final st in ((s['manifest']! as Map)['streams'] as List<Object?>).cast<Map<Object?, Object?>>()) {
            for (final sb in (st['suggestedBindings'] as List<Object?>? ?? const <Object?>[]).cast<Map<Object?, Object?>>()) {
              final exists = v.bindings.values.any((b) => b['sourceId'] == id && b['streamId'] == st['id'] && b['target'] == sb['target']);
              if (!exists) {
                final bid = v.nextId('FB');
                final b = <String, Object?>{
                  'id': bid,
                  'sourceId': id,
                  'streamId': st['id'],
                  'target': sb['target'],
                  'config': sb['config'],
                  'enabled': true,
                  'backfill': true,
                  'state': 'backfilling',
                  'applied': 0,
                  'createdBy': 'admin',
                  'createdAt': '2026-10-22T10:00:00Z',
                };
                v.bindings[bid] = b;
                made.add(b);
              }
            }
          }
          return ok(made);
        }
        if (method == 'POST') {
          if (input['target'] == 'place' && input['config'] == null) {
            return (status: 400, body: _problem(400, 'Binding target invalid', 'BINDING_TARGET_INVALID'));
          }
          final bid = v.nextId('FB');
          final b = <String, Object?>{
            ...input,
            'id': bid,
            'sourceId': id,
            'state': input['backfill'] == true ? 'backfilling' : 'active',
            'applied': 0,
            'createdBy': 'admin',
            'createdAt': '2026-10-22T10:00:00Z',
          };
          v.bindings[bid] = b;
          return (status: 201, body: b);
        }
        return ok(<Object?>[for (final b in v.bindings.values) if (b['sourceId'] == id) b]);
      case 'question-links':
        if (method == 'POST') {
          final dup = v.links.values.any(
            (l) => l['sourceId'] == id && l['streamId'] == input['streamId'] && l['externalQuestionId'] == input['externalQuestionId'],
          );
          if (dup) {
            return (status: 409, body: _problem(409, 'Already linked', 'QUESTION_ALREADY_LINKED'));
          }
          final lid = v.nextId('FK');
          final l = <String, Object?>{
            ...input,
            'id': lid,
            'sourceId': id,
            'forecasterId': 'edp:$id/${input['streamId']}',
            'createdAt': '2026-10-22T10:05:00Z',
          };
          v.links[lid] = l;
          return (status: 201, body: l);
        }
        return ok(<Object?>[for (final l in v.links.values) if (l['sourceId'] == id) l]);
    }
  }
  if (parts.length >= 5 && path.startsWith('/v1/external/bindings/')) {
    final b = v.bindings[parts[4]];
    if (b == null) {
      return notFound('UNKNOWN_BINDING');
    }
    if (parts.length == 6 && parts[5] == 'preview') {
      return ok(<String, Object?>{
        'evaluated': 200,
        'matched': 184,
        'effects': <Object?>[
          for (var i = 0; i < 4; i++)
            <String, Object?>{
              'itemRef': 'edp:${b['sourceId']}/${b['streamId']}/item-${1290 - i}',
              'action': i == 3 ? 'skip' : 'upsert',
              'targetRef': i == 3 ? null : 'forecast:01JBK3Q8Z5N7W2X4Y6R9T1FF0$i',
            },
        ],
        'errors': <String>['16 items carry no question link and were skipped.'],
      });
    }
    if (method == 'DELETE') {
      v.bindings.remove(parts[4]);
      return (status: 204, body: null);
    }
    if (method == 'PUT') {
      b
        ..addAll(input)
        ..['state'] = input['enabled'] == false ? 'disabled' : 'active';
      if (!input.containsKey('filter')) {
        b.remove('filter');
      }
    }
    return ok(b);
  }
  if (parts.length == 5 && path.startsWith('/v1/external/question-links/') && method == 'DELETE') {
    return v.links.remove(parts[4]) == null ? notFound('UNKNOWN_LINK') : (status: 204, body: null);
  }
  return null;
}
