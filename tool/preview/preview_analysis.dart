// The preview's fake answers for correlation, intelligence events, analysis
// cycles, assessments, the board, calibration and corroboration. Bodies
// follow their schemas in openapi/OpenAPI.json (CorrelationRecipe,
// RecipeTestResult, IntelEventPage, IntelligenceEvent, IntelEventMember,
// AnalysisCycle, CycleRun, MaintenanceRun, Assessment, AssessmentFeedback,
// IntelBoard, IntelCalibration, IntelCorroboration).

/// A fake reply.
typedef AnalysisReply = ({int status, Object? body});

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

Map<String, Object?> _member(
  String id,
  String role,
  String sourceId,
  String externalId,
  int seq,
  String kind,
  String observedAt,
  String family, {
  String? clause,
  num? km,
}) => <String, Object?>{
  'id': id,
  'role': role,
  'memberType': 'record',
  'sourceId': sourceId,
  'externalId': externalId,
  'seq': seq,
  'kind': kind,
  'observedAt': observedAt,
  'signalFamily': family,
  'weight': role == 'supporting' ? 0.8 : 0.4,
  'joinReason': <String, Object?>{
    'clause': ?clause,
    'distanceKm': ?km,
    'dtMinutes': km == null ? null : 42,
  },
  'addedAt': observedAt,
  'addedBy': 'recipe',
};

Map<String, Object?> _event({
  required String id,
  required String type,
  required String title,
  required String status,
  required String severity,
  required String origin,
  required num confidence,
  required bool calibrated,
  required String quality,
  required List<Map<String, Object?>> members,
  required String start,
  String? recipeId,
  String? narrative,
}) => <String, Object?>{
  'id': id,
  'type': type,
  'title': title,
  'status': status,
  'severity': severity,
  'severityOverridden': false,
  'origin': origin,
  'recipeId': ?recipeId,
  'recipeVersion': recipeId == null ? null : 3,
  'detector': <String, Object?>{'name': recipeId ?? 'operator', 'version': '3'},
  'version': 4,
  'createdAt': start,
  'updatedAt': '2026-10-22T15:40:00Z',
  'evidence': <String, Object?>{
    'memberCount': members.length,
    'signalFamilies': <String>{for (final m in members) m['signalFamily']! as String}.toList(),
    'members': members,
  },
  'inference': <String, Object?>{
    'confidence': confidence,
    'rawConfidence': calibrated ? confidence + 0.07 : null,
    'confidenceLabel': confidence >= 0.7
        ? 'high'
        : confidence >= 0.4
        ? 'moderate'
        : 'low',
    'confidenceMethod': calibrated ? 'platt(intel-event)' : 'weighted-members',
    'calibrated': calibrated,
    'evidenceQuality': quality,
    'startTime': start,
    'lastEvidenceAt': '2026-10-22T15:40:00Z',
    'regionTags': <String>['GB', 'GB-ENG'],
    'explanation':
        '${members.length} records from ${members.map((m) => m['signalFamily']).toSet().length} '
        'signal families within 40 km and 6 hours.',
  },
  'speculation': <String, Object?>{
    'label': 'speculation',
    'alternatives': <Object?>[
      <String, Object?>{
        'hypothesis': 'Routine maintenance window',
        'basis': 'The operator posts planned outages on Thursdays.',
      },
    ],
    'narrative': ?narrative,
    'narrativeOrigin': narrative == null ? null : 'llm',
  },
  'log': <Object?>[
    <String, Object?>{'at': start, 'actor': origin, 'action': 'created'},
    <String, Object?>{'at': '2026-10-22T15:40:00Z', 'actor': 'recipe', 'action': 'member_added'},
  ],
};

Map<String, Object?> _summary(Map<String, Object?> e) {
  final inference = e['inference']! as Map<String, Object?>;
  return <String, Object?>{
    for (final k in const <String>[
      'id',
      'type',
      'title',
      'status',
      'severity',
      'version',
      'updatedAt',
    ])
      k: e[k],
    'confidence': inference['confidence'],
    'confidenceLabel': inference['confidenceLabel'],
    'calibrated': inference['calibrated'],
    'evidenceQuality': inference['evidenceQuality'],
    'memberCount': (e['evidence']! as Map)['memberCount'],
    'startTime': inference['startTime'],
  };
}

Map<String, Object?> _run(
  String id,
  String cycleId,
  String cadence,
  String status,
  String start, {
  String trigger = 'schedule',
  String? previous,
}) => <String, Object?>{
  'id': id,
  'cycleId': cycleId,
  'cadence': cadence,
  'trigger': trigger,
  'status': status,
  'periodStart': '2026-10-21T07:00:00Z',
  'periodEnd': '2026-10-22T07:00:00Z',
  'previousRunId': ?previous,
  'startedAt': start,
  'finishedAt': status == 'running' || status == 'queued' ? null : '2026-10-22T07:03:12Z',
  'tokensUsed': 48210,
  'assessmentId': status == 'ok' ? '01JB9R2M4N6P8Q0S2T4V6W8X0Y' : null,
  'manifestId': 'mf-$id',
  'warnings': status == 'partial' ? <String>['The red team was not configured; skipped.'] : null,
  'roles': <Object?>[
    <String, Object?>{
      'role': 'analyst',
      'status': 'ok',
      'provider': 'claude',
      'model': 'claude-opus-5-5',
      'effort': 'medium',
      'inputTokens': 31200,
      'outputTokens': 4100,
      'cachedTokens': 18000,
      'promptTemplate': <String, Object?>{'id': 'analyst-daily', 'version': '7'},
    },
    <String, Object?>{
      'role': 'red-team',
      'status': status == 'partial' ? 'not-configured' : 'ok',
      'reason': status == 'partial' ? 'No provider is assigned to the red team.' : null,
      'provider': status == 'partial' ? null : 'claude',
      'model': status == 'partial' ? null : 'claude-opus-5-5',
      'inputTokens': status == 'partial' ? 0 : 9800,
      'outputTokens': status == 'partial' ? 0 : 1300,
    },
    <String, Object?>{
      'role': 'forecaster',
      'status': 'ok',
      'provider': 'claude',
      'model': 'claude-opus-5-5',
      'inputTokens': 2400,
      'outputTokens': 410,
      'forecastsSubmitted': 6,
    },
  ],
  'packet': <String, Object?>{
    'version': '4',
    'since': '2026-10-21T07:00:00Z',
    'until': '2026-10-22T07:00:00Z',
    'firstRun': previous == null,
    'findings': <Object?>[],
    'verdicts': <Object?>[],
    'collectionGaps': <Object?>[],
    'previousJudgments': <Object?>[],
    'truncatedForLlm': <String, Object?>{'findings': 12},
  },
};

/// The analysis state the fake keeps.
class PreviewAnalysis {
  /// CorrelationRecipe objects, by id.
  final Map<String, Map<String, Object?>> recipes = <String, Map<String, Object?>>{
    'vessel-dark-gap': <String, Object?>{
      'id': 'vessel-dark-gap',
      'version': 3,
      'builtIn': true,
      'origin': 'bundled',
      'enabled': true,
      'definition': <String, Object?>{
        'type': 'maritime-disruption',
        'seed': <String, Object?>{
          'kinds': <String>['ais.gap'],
          'conditions': <Object?>[
            <String, Object?>{'path': 'gapMinutes', 'op': '>=', 'value': 60},
          ],
        },
        'joins': <Object?>[
          <String, Object?>{
            'kinds': <String>['vessel.position'],
            'withinKm': 25,
            'window': <String, Object?>{'before': '6h', 'after': '6h'},
            'signalFamily': 'ais',
          },
        ],
        'minMembers': 2,
      },
      'params': <String, Object?>{'gapMinutes': 90},
      'lastRunAt': '2026-10-22T16:20:00Z',
    },
    'port-congestion': <String, Object?>{
      'id': 'port-congestion',
      'version': 2,
      'builtIn': false,
      'origin': 'operator',
      'enabled': true,
      'definition': <String, Object?>{
        'type': 'custom',
        'seed': <String, Object?>{
          'kinds': <String>['port.queue'],
          'sources': <String>['port-authority'],
        },
        'joins': <Object?>[
          <String, Object?>{
            'kinds': <String>['vessel.position'],
            'withinKm': 15,
            'sameRegion': 'admin1',
            'role': 'supporting',
            'signalFamily': 'ais',
            'weight': 0.6,
          },
        ],
        'minMembers': 3,
        'minSignalFamilies': 2,
        'activateAt': <String, Object?>{'members': 5, 'confidence': 0.6},
        'dedup': <String, Object?>{'radiusKm': 30, 'window': '24h'},
        'quietPeriod': '6h',
        'severityMap': <String, Object?>{'queue.critical': 'critical'},
      },
      'lastRunAt': '2026-10-22T16:18:00Z',
    },
    'quake-infrastructure': <String, Object?>{
      'id': 'quake-infrastructure',
      'version': 1,
      'builtIn': true,
      'origin': 'bundled',
      'enabled': false,
      'disabledReason': 'Turned off by an operator.',
      'definition': <String, Object?>{
        'type': 'seismic',
        'seed': <String, Object?>{
          'kinds': <String>['quake'],
        },
      },
      'lastError': 'The usgs source has not delivered records for 3 hours.',
      'lastRunAt': '2026-10-22T13:02:00Z',
    },
  };

  /// IntelligenceEvent objects, by id.
  final Map<String, Map<String, Object?>> events = <String, Map<String, Object?>>{
    '01JB9Q4D2F6G8H0J2K4M6N8P0R': _event(
      id: '01JB9Q4D2F6G8H0J2K4M6N8P0R',
      type: 'maritime-disruption',
      title: 'Container ship dark for 3 hours off Felixstowe',
      status: 'active',
      severity: 'warning',
      origin: 'recipe',
      recipeId: 'vessel-dark-gap',
      confidence: 0.74,
      calibrated: true,
      quality: 'strong',
      start: '2026-10-22T09:12:00Z',
      narrative:
          'The vessel went dark as it entered the anchorage, consistent with a transponder fault.',
      members: <Map<String, Object?>>[
        _member(
          'm1',
          'supporting',
          'ais',
          '235012345',
          88120,
          'ais.gap',
          '2026-10-22T09:12:00Z',
          'ais',
        ),
        _member(
          'm2',
          'supporting',
          'port-authority',
          'q-7781',
          88233,
          'port.queue',
          '2026-10-22T10:40:00Z',
          'port',
          clause: 'join[0]',
          km: 12.4,
        ),
        _member(
          'm3',
          'contradicting',
          'sentinel',
          'img-5520',
          88401,
          'imagery',
          '2026-10-22T11:05:00Z',
          'imagery',
        ),
      ],
    ),
    '01JB9Q7T3V5W7X9Y1Z3A5B7C9D': _event(
      id: '01JB9Q7T3V5W7X9Y1Z3A5B7C9D',
      type: 'custom',
      title: 'Queue building at the Port of Tilbury',
      status: 'emerging',
      severity: 'info',
      origin: 'recipe',
      recipeId: 'port-congestion',
      confidence: 0.38,
      calibrated: false,
      quality: 'moderate',
      start: '2026-10-22T13:30:00Z',
      members: <Map<String, Object?>>[
        _member(
          'm4',
          'supporting',
          'port-authority',
          'q-7790',
          88502,
          'port.queue',
          '2026-10-22T13:30:00Z',
          'port',
        ),
        _member(
          'm5',
          'supporting',
          'ais',
          '235099887',
          88544,
          'vessel.position',
          '2026-10-22T14:02:00Z',
          'ais',
          clause: 'join[0]',
          km: 4.1,
        ),
      ],
    ),
    '01JB9P1E3G5H7J9K1M3N5P7Q9R': _event(
      id: '01JB9P1E3G5H7J9K1M3N5P7Q9R',
      type: 'infrastructure-disruption',
      title: 'Substation outage reported near Ipswich',
      status: 'resolved',
      severity: 'critical',
      origin: 'operator',
      confidence: 0.91,
      calibrated: true,
      quality: 'strong',
      start: '2026-10-21T18:00:00Z',
      members: <Map<String, Object?>>[
        _member(
          'm6',
          'supporting',
          'grid',
          'out-221',
          87010,
          'grid.outage',
          '2026-10-21T18:00:00Z',
          'official',
        ),
      ],
    ),
  };

  /// AnalysisCycle objects, by id.
  final Map<String, Map<String, Object?>> cycles = <String, Map<String, Object?>>{
    '01JA0C1D2E3F4G5H6J7K8M9N0P': <String, Object?>{
      'id': '01JA0C1D2E3F4G5H6J7K8M9N0P',
      'name': 'Morning brief',
      'cadence': 'daily',
      'schedule': <String, Object?>{'cron': '0 7 * * *', 'timezone': 'Europe/London'},
      'scope': <String, Object?>{
        'regionCodes': <String>['GB'],
        'hypothesisSetIds': 'cadence-match',
      },
      'roles': <String>['analyst', 'red-team', 'forecaster'],
      'forecasterProviders': <String>['claude'],
      'samples': 3,
      'maxTokensPerCycle': 200000,
      'notifyMinPriority': 'normal',
      'enabled': true,
      'builtIn': true,
      'nextRunAt': '2026-10-23T06:00:00Z',
      'lastRunId': '01JB9R0A2B4C6D8E0F2G4H6J8K',
      'createdAt': '2026-09-01T00:00:00Z',
    },
    '01JA0C9Z8Y7X6W5V4T3S2R1Q0P': <String, Object?>{
      'id': '01JA0C9Z8Y7X6W5V4T3S2R1Q0P',
      'name': 'Weekly outlook',
      'cadence': 'weekly',
      'schedule': <String, Object?>{'cron': '0 8 * * 1', 'timezone': 'UTC'},
      'scope': <String, Object?>{},
      'roles': <String>['analyst', 'forecaster', 'proposer'],
      'samples': 5,
      'enabled': true,
      'nextRunAt': '2026-10-26T08:00:00Z',
      'createdAt': '2026-09-01T00:00:00Z',
    },
    '01JA0D5E6F7G8H9J0K1M2N3P4Q': <String, Object?>{
      'id': '01JA0D5E6F7G8H9J0K1M2N3P4Q',
      'name': 'Monthly review',
      'cadence': 'monthly',
      'schedule': <String, Object?>{'cron': '0 9 1 * *', 'timezone': 'UTC'},
      'scope': <String, Object?>{},
      'roles': <String>['analyst'],
      'samples': 3,
      'enabled': false,
      'createdAt': '2026-09-01T00:00:00Z',
    },
  };

  /// Situations (`getSituation`), by id: the two on the board.
  final Map<String, Map<String, Object?>> situations = <String, Map<String, Object?>>{
    _felixstowe: _situation(
      _felixstowe,
      'Felixstowe port disruption',
      'active',
      'warning',
      summary: 'Vessel queue at Felixstowe is three times its norm, with a crane outage reported.',
      statusBasis: '3 signal families, 2 independent evidence groups',
      severityBasis: 'Max core-member severity: warning (port-congestion event)',
      members: <Map<String, Object?>>[
        _situationMember(_felixstowe, '01JB9M1A3B5C7D9E1F3G5H7J9K', 'intel_event', 'Port congestion at Felixstowe',
            family: 'maritime', role: 'core', severity: 'warning', corroboration: 'corroborated'),
        _situationMember(_felixstowe, '01JB9M2A3B5C7D9E1F3G5H7J9K', 'record', 'Crane 7 out of service',
            family: 'infrastructure', role: 'core', severity: 'info', corroboration: 'corroborated'),
        _situationMember(_felixstowe, '01JB9M3A3B5C7D9E1F3G5H7J9K', 'finding', 'Unexplained move in freight rates',
            family: 'markets', role: 'context', severity: null, corroboration: 'uncorroborated'),
      ],
    ),
    _eastAnglia: _situation(
      _eastAnglia,
      'East Anglia grid reliability',
      'emerging',
      'info',
      summary: 'Two substation alarms in 24 hours; not yet corroborated.',
      statusBasis: '1 signal family, 1 evidence group',
      severityBasis: 'Max core-member severity: info',
      members: <Map<String, Object?>>[
        _situationMember(_eastAnglia, '01JB9M4A3B5C7D9E1F3G5H7J9K', 'alert', 'Substation alarm, Bramford',
            family: 'infrastructure', role: 'core', severity: 'info', corroboration: 'unknown'),
      ],
    ),
  };

  /// Situation timelines (`getSituationTimeline`), by situation id.
  final Map<String, List<Map<String, Object?>>> situationTimelines = <String, List<Map<String, Object?>>>{
    _felixstowe: <Map<String, Object?>>[
      <String, Object?>{'at': '2026-10-21T08:00:00Z', 'entryType': 'log', 'action': 'created', 'actor': 'linker'},
      <String, Object?>{'at': '2026-10-21T09:10:00Z', 'entryType': 'log', 'action': 'member_added', 'actor': 'linker'},
      <String, Object?>{
        'at': '2026-10-22T11:00:00Z',
        'entryType': 'log',
        'action': 'status',
        'actor': 'linker',
        'before': <String, Object?>{'status': 'emerging'},
        'after': <String, Object?>{'status': 'active'},
      },
      <String, Object?>{'at': '2026-10-22T15:40:00Z', 'entryType': 'log', 'action': 'edited', 'actor': 'admin'},
    ],
  };

  /// Situation assessments (`listSituationAssessments`), by situation id.
  final Map<String, List<Map<String, Object?>>> situationAssessments = <String, List<Map<String, Object?>>>{
    _felixstowe: <Map<String, Object?>>[
      <String, Object?>{
        'id': '01JB9A1A3B5C7D9E1F3G5H7J9K',
        'situationId': _felixstowe,
        'cadence': 'on-demand',
        'periodStart': '2026-10-21T00:00:00Z',
        'periodEnd': '2026-10-22T16:00:00Z',
        'status': 'ok',
        'headline': 'Felixstowe throughput likely to stay reduced for 48 hours',
        'bluf': <Object?>[
          <String, Object?>{
            'text': 'Throughput at Felixstowe will likely stay below 70% of normal through Friday.',
            'probability': 0.7,
            'citations': <Object?>['intel_event:01JB9M1A3B5C7D9E1F3G5H7J9K'],
            'textOrigin': 'deterministic',
          },
        ],
        'sections': <Object?>[],
        'private': false,
        'createdAt': '2026-10-22T16:05:00Z',
      },
    ],
  };

  /// CycleRun objects, by id.
  final Map<String, Map<String, Object?>> runs = <String, Map<String, Object?>>{
    '01JB9R0A2B4C6D8E0F2G4H6J8K': _run(
      '01JB9R0A2B4C6D8E0F2G4H6J8K',
      '01JA0C1D2E3F4G5H6J7K8M9N0P',
      'daily',
      'ok',
      '2026-10-22T06:00:04Z',
      previous: '01JB6M0A2B4C6D8E0F2G4H6J8K',
    ),
    '01JB6M0A2B4C6D8E0F2G4H6J8K': _run(
      '01JB6M0A2B4C6D8E0F2G4H6J8K',
      '01JA0C1D2E3F4G5H6J7K8M9N0P',
      'daily',
      'partial',
      '2026-10-21T06:00:03Z',
    ),
  };

  /// Assessments, newest first.
  final List<Map<String, Object?>> assessments = <Map<String, Object?>>[
    <String, Object?>{
      'id': '01JB9R2M4N6P8Q0S2T4V6W8X0Y',
      'cadence': 'daily',
      'periodStart': '2026-10-21T07:00:00Z',
      'periodEnd': '2026-10-22T07:00:00Z',
      'status': 'ok',
      'headline': 'Felixstowe disruption likely to persist through Friday',
      'bluf': <Object?>[
        <String, Object?>{
          'text': 'Container traffic at Felixstowe will likely stay below normal through Friday.',
          'probability': 0.7,
          'estimativeTerm': 'likely',
          'citations': <String>['event:01JB9Q4D2F6G8H0J2K4M6N8P0R'],
          'textOrigin': 'llm',
        },
        <String, Object?>{
          'text': 'A wider Thames estuary disruption is unlikely.',
          'probability': 0.2,
          'estimativeTerm': 'unlikely',
          'citations': <String>[],
          'textOrigin': 'llm',
        },
      ],
      'sections': <Object?>[
        <String, Object?>{
          'key': 'what-changed',
          'title': 'What changed',
          'markdown': 'One maritime event became active; a port queue is emerging at Tilbury.',
          'textOrigin': 'deterministic',
        },
        <String, Object?>{
          'key': 'outlook',
          'title': 'Outlook',
          'markdown': 'Expect berth delays of 6 to 12 hours while the anchorage clears.',
          'textOrigin': 'llm',
        },
      ],
      'model': 'claude-opus-5-5',
      'private': false,
      'createdAt': '2026-10-22T06:03:12Z',
    },
    <String, Object?>{
      'id': '01JB4K2M4N6P8Q0S2T4V6W8X0Y',
      'cadence': 'weekly',
      'periodStart': '2026-10-12T08:00:00Z',
      'periodEnd': '2026-10-19T08:00:00Z',
      'status': 'partial',
      'headline': 'A quiet week; grid reliability is the main watch item',
      'bluf': <Object?>[
        <String, Object?>{
          'text': 'Grid outages in East Anglia will roughly even chance recur within a month.',
          'probability': 0.5,
          'estimativeTerm': 'roughly even chance',
          'citations': <String>[],
          'textOrigin': 'llm',
        },
      ],
      'sections': <Object?>[
        <String, Object?>{
          'key': 'risks',
          'title': 'Risks',
          'markdown': 'Aging substations; winter load.',
          'textOrigin': 'mixed',
        },
      ],
      'private': false,
      'createdAt': '2026-10-19T08:04:40Z',
    },
  ];

  /// The corroboration policy.
  Map<String, Object?> corroboration = <String, Object?>{
    'eventQuality': <String, Object?>{
      'strongFamilies': 3,
      'strongGroups': 2,
      'moderateFamilies': 2,
      'requireModalities': 0,
    },
    'situationActivation': <String, Object?>{'minFamilies': 2, 'minGroups': 2},
    'autoCorroborate': <String, Object?>{
      'enabled': true,
      'withinKm': 50,
      'window': 'PT24H',
      'maxMembers': 10,
    },
  };

  int _next = 0;

  /// A fresh ULID-shaped id.
  String newId() => '01JBA${(_next++).toString().padLeft(21, '0')}';
}

const String _felixstowe = '01JB9S1A3B5C7D9E1F3G5H7J9K';
const String _eastAnglia = '01JB9S2A3B5C7D9E1F3G5H7J9K';

/// A SituationMember of situation [situationId].
Map<String, Object?> _situationMember(
  String situationId,
  String id,
  String memberType,
  String title, {
  required String family,
  required String role,
  required String? severity,
  required String corroboration,
}) => <String, Object?>{
  'id': id,
  'situationId': situationId,
  'memberType': memberType,
  'ref': id,
  'objectRef': '$memberType:$id',
  'title': title,
  'signalFamily': family,
  'severity': severity,
  'observedAt': '2026-10-22T09:00:00Z',
  'role': role,
  'corroboration': corroboration,
  'addedAt': '2026-10-22T09:05:00Z',
  'addedBy': 'linker',
};

/// A Situation with [members] as its evidence.
Map<String, Object?> _situation(
  String id,
  String title,
  String status,
  String severity, {
  required String summary,
  required String statusBasis,
  required String severityBasis,
  required List<Map<String, Object?>> members,
}) {
  final families = <String, List<Map<String, Object?>>>{};
  for (final m in members) {
    families.putIfAbsent(m['signalFamily']! as String, () => <Map<String, Object?>>[]).add(m);
  }
  final corroborated = members.where((m) => m['corroboration'] == 'corroborated').length;
  return <String, Object?>{
    'id': id,
    'title': title,
    'theme': 'infrastructure',
    'status': status,
    'severity': severity,
    'regionCodes': <Object?>['GB-ENG'],
    'startedAt': '2026-10-21T08:00:00Z',
    'lastActivityAt': '2026-10-22T15:40:00Z',
    'memberCount': members.length,
    'signalFamilies': families.keys.toList(),
    'summary': summary,
    'origin': 'auto',
    'private': false,
    'version': 3,
    'geometry': null,
    'createdAt': '2026-10-21T08:00:00Z',
    'evidence': <String, Object?>{
      'memberCounts': <String, Object?>{},
      'families': <Object?>[
        for (final f in families.entries)
          <String, Object?>{'family': f.key, 'count': f.value.length, 'members': f.value},
      ],
      'corroboration': <String, Object?>{
        'corroborated': corroborated,
        'uncorroborated': members.length - corroborated,
        'share': members.isEmpty ? null : corroborated / members.length,
      },
    },
    'inference': <String, Object?>{
      'summary': summary,
      'statusBasis': statusBasis,
      'severityBasis': severityBasis,
    },
    'speculation': <String, Object?>{'label': 'speculation', 'brief': null},
  };
}

const Map<String, Object?> _board = <String, Object?>{
  'generatedAt': '2026-10-22T16:30:00Z',
  'situations': <Object?>[
    <String, Object?>{
      'id': _felixstowe,
      'title': 'Felixstowe port disruption',
      'status': 'active',
      'severity': 'warning',
      'lastActivityAt': '2026-10-22T15:40:00Z',
    },
    <String, Object?>{
      'id': _eastAnglia,
      'title': 'East Anglia grid reliability',
      'status': 'emerging',
      'severity': 'info',
      'lastActivityAt': '2026-10-21T18:00:00Z',
    },
  ],
  'bandChanges': <Object?>[
    <String, Object?>{
      'setId': '01JB0H1A3B5C7D9E1F3G5H7J9K',
      'hypothesisId': '01JB0H2A3B5C7D9E1F3G5H7J9K',
      'question': 'Will Felixstowe throughput fall below 70% this week?',
      'fromTerm': 'unlikely',
      'toTerm': 'likely',
      'probability': 0.68,
      'at': '2026-10-22T11:00:00Z',
    },
  ],
  'indicatorsObserved': <Object?>[],
  'forecastsDue': <Object?>[
    <String, Object?>{
      'questionId': '01JB0Q1A3B5C7D9E1F3G5H7J9K',
      'title': 'Berth delays exceed 12 hours by Friday',
      'dueAt': '2026-10-24T17:00:00Z',
      'probability': 0.35,
    },
  ],
  'latestAssessments': <Object?>[
    <String, Object?>{
      'cadence': 'daily',
      'assessmentId': '01JB9R2M4N6P8Q0S2T4V6W8X0Y',
      'headline': 'Felixstowe disruption likely to persist through Friday',
      'createdAt': '2026-10-22T06:03:12Z',
    },
    <String, Object?>{
      'cadence': 'weekly',
      'assessmentId': '01JB4K2M4N6P8Q0S2T4V6W8X0Y',
      'headline': 'A quiet week; grid reliability is the main watch item',
      'createdAt': '2026-10-19T08:04:40Z',
    },
  ],
  'calibration': <String, Object?>{
    'window': 'P90D',
    'ensemble': <String, Object?>{'brierSkill': 0.214, 'calibration': 'well calibrated', 'n': 84},
    'operator': <String, Object?>{'brierSkill': 0.118, 'calibration': 'overconfident', 'n': 23},
  },
  'benchmarks': <Object?>[
    <String, Object?>{'component': 'ensemble', 'status': 'pass'},
    <String, Object?>{'component': 'precursors', 'status': 'warn'},
    <String, Object?>{'component': 'base-rates', 'status': 'unknown'},
  ],
};

const Map<String, Object?> _calibration = <String, Object?>{
  'scopes': <Object?>[
    <String, Object?>{
      'scope': 'intel-event',
      'calibrated': true,
      'sampleN': 212,
      'minSamples': 50,
      'brier': 0.142,
      'fittedAt': '2026-10-01T09:00:00Z',
      'bins': <Object?>[
        <String, Object?>{
          'lower': 0.0,
          'upper': 0.2,
          'n': 61,
          'meanForecast': 0.11,
          'observedFrequency': 0.08,
        },
        <String, Object?>{
          'lower': 0.2,
          'upper': 0.4,
          'n': 48,
          'meanForecast': 0.31,
          'observedFrequency': 0.27,
        },
        <String, Object?>{
          'lower': 0.4,
          'upper': 0.6,
          'n': 39,
          'meanForecast': 0.5,
          'observedFrequency': 0.56,
        },
        <String, Object?>{
          'lower': 0.6,
          'upper': 0.8,
          'n': 37,
          'meanForecast': 0.7,
          'observedFrequency': 0.62,
        },
        <String, Object?>{
          'lower': 0.8,
          'upper': 1.0,
          'n': 27,
          'meanForecast': 0.88,
          'observedFrequency': 0.85,
        },
      ],
    },
    <String, Object?>{
      'scope': 'precursor-active',
      'calibrated': false,
      'sampleN': 17,
      'minSamples': 50,
    },
  ],
};

List<String> _values(Map<String, List<String>> query, String key) => <String>[
  for (final v in query[key] ?? const <String>[]) ...v.split(','),
];

/// Answers the analysis operations, or `null` for any other request.
AnalysisReply? answerAnalysis(
  String method,
  String path,
  Map<String, List<String>> query,
  Map<String, Object?> headers,
  Object? body,
  PreviewAnalysis a,
) {
  final input = body is Map ? body.cast<String, Object?>() : const <String, Object?>{};
  final parts = path.split('/');
  const notFound = (
    status: 404,
    body: <String, Object?>{'title': 'Not found', 'status': 404, 'code': 'NOT_FOUND'},
  );

  // Recipes.
  if (path == '/v1/intel/recipes') {
    if (method == 'GET') {
      return (status: 200, body: a.recipes.values.toList());
    }
    if (method == 'POST') {
      final id = input['id']! as String;
      if (a.recipes.containsKey(id)) {
        return (
          status: 400,
          body: _problem(400, 'Invalid', 'VALIDATION_FAILED', 'A recipe $id exists.'),
        );
      }
      a.recipes[id] = <String, Object?>{
        'id': id,
        'version': 1,
        'builtIn': false,
        'origin': 'operator',
        'enabled': input['enabled'] ?? true,
        'definition': input['definition'],
      };
      return (status: 201, body: a.recipes[id]);
    }
  }
  if (parts.length >= 5 && path.startsWith('/v1/intel/recipes/')) {
    final r = a.recipes[Uri.decodeComponent(parts[4])];
    if (r == null) {
      return notFound;
    }
    if (parts.length == 5 && method == 'PUT') {
      if (input.containsKey('definition') && r['origin'] != 'operator') {
        return (
          status: 400,
          body: _problem(
            400,
            'Invalid',
            'VALIDATION_FAILED',
            'A bundled recipe definition is not editable.',
          ),
        );
      }
      r
        ..['enabled'] = input['enabled'] ?? r['enabled']
        ..['params'] = input['params'] ?? r['params']
        ..['version'] = (r['version']! as int) + 1;
      if (input['definition'] != null) {
        r['definition'] = input['definition'];
      }
      return (status: 200, body: r);
    }
    if (parts.length == 6 && parts[5] == 'test' && method == 'POST') {
      final from = input['fromSeq']! as int;
      final to = input['toSeq']! as int;
      final hits = <Object?>[
        for (final e in a.events.values)
          if (e['recipeId'] == r['id']) e,
      ];
      return (
        status: 200,
        body: <String, Object?>{
          'recipeId': r['id'],
          'recipeVersion': r['version'],
          'fromSeq': from,
          'toSeq': to,
          'events': hits,
          'truncated': to - from > 100000,
        },
      );
    }
  }

  // Events.
  if (path == '/v1/intel/events' && method == 'GET') {
    final statuses = _values(query, 'status');
    final types = _values(query, 'type');
    return (
      status: 200,
      body: <String, Object?>{
        'items': <Object?>[
          for (final e in a.events.values)
            if ((statuses.isEmpty || statuses.contains(e['status'])) &&
                (types.isEmpty || types.contains(e['type'])))
              _summary(e),
        ],
      },
    );
  }
  if (parts.length >= 5 && path.startsWith('/v1/intel/events/')) {
    final e = a.events[parts[4]];
    if (e == null) {
      return notFound;
    }
    final members = ((e['evidence']! as Map)['members']! as List).cast<Map<String, Object?>>();
    void recount() => (e['evidence']! as Map)['memberCount'] = members.length;
    void bump(String action) {
      e
        ..['version'] = (e['version']! as int) + 1
        ..['updatedAt'] = '2026-10-22T16:31:00Z';
      (e['log']! as List).add(<String, Object?>{
        'at': '2026-10-22T16:31:00Z',
        'actor': 'operator',
        'action': action,
      });
    }

    if (parts.length == 5 && method == 'GET') {
      return (status: 200, body: e);
    }
    if (parts.length == 5 && method == 'PATCH') {
      final ifMatch = headers['If-Match']?.toString();
      if (ifMatch != null && ifMatch != '${e['version']}') {
        return (
          status: 409,
          body: _problem(
            409,
            'Conflict',
            'EVENT_VERSION_CONFLICT',
            'The event is at version ${e['version']}.',
          ),
        );
      }
      for (final k in const <String>['title', 'status', 'notes']) {
        if (input.containsKey(k)) {
          e[k] = input[k];
        }
      }
      if (input.containsKey('severity')) {
        // null clears the override: the computed severity stands again.
        e
          ..['severity'] = input['severity'] ?? e['severity']
          ..['severityOverridden'] = input['severity'] != null;
      }
      bump(input.containsKey('status') ? 'status' : 'edited');
      return (status: 200, body: e);
    }
    if (parts.length == 6 && parts[5] == 'members' && method == 'POST') {
      final m = <String, Object?>{
        ...input,
        'id': 'm${a.newId().substring(20)}',
        'role': input['role'] ?? 'supporting',
        'weight': 0.5,
        'addedAt': '2026-10-22T16:31:00Z',
        'addedBy': 'operator',
      };
      members.add(m);
      recount();
      bump('member_added');
      return (status: 201, body: m);
    }
    if (parts.length == 7 && parts[5] == 'members' && method == 'DELETE') {
      final before = members.length;
      members.removeWhere((m) => m['id'] == parts[6]);
      if (members.length == before) {
        return notFound;
      }
      recount();
      bump('member_removed');
      return (status: 204, body: null);
    }
    if (parts.length == 6 && parts[5] == 'merge' && method == 'POST') {
      final into = a.events[input['intoId']];
      if (into == null) {
        return notFound;
      }
      final target = ((into['evidence']! as Map)['members']! as List)..addAll(members);
      (into['evidence']! as Map)['memberCount'] = target.length;
      e['mergedInto'] = input['intoId'];
      bump('merged');
      return (status: 200, body: into);
    }
  }

  // Cycles and runs.
  if (path == '/v1/analysis/cycles') {
    if (method == 'GET') {
      return (status: 200, body: <String, Object?>{'items': a.cycles.values.toList()});
    }
    if (method == 'POST') {
      final id = a.newId();
      a.cycles[id] = <String, Object?>{
        'scope': <String, Object?>{},
        'roles': <String>['analyst'],
        'samples': 3,
        'enabled': true,
        ...input,
        'id': id,
        'nextRunAt': '2026-10-23T07:00:00Z',
        'createdAt': '2026-10-22T16:31:00Z',
      };
      return (status: 201, body: a.cycles[id]);
    }
  }
  if (parts.length >= 5 && path.startsWith('/v1/analysis/cycles/')) {
    final id = parts[4];
    final c = a.cycles[id];
    if (c == null) {
      return notFound;
    }
    if (parts.length == 5) {
      switch (method) {
        case 'GET':
          return (status: 200, body: c);
        case 'PUT':
          a.cycles[id] = <String, Object?>{
            'scope': <String, Object?>{},
            'roles': <String>[],
            'samples': 3,
            'enabled': true,
            ...input,
            'id': id,
            'builtIn': ?c['builtIn'],
            'nextRunAt': input['enabled'] == false
                ? null
                : c['nextRunAt'] ?? '2026-10-23T07:00:00Z',
            'createdAt': c['createdAt'],
            'updatedAt': '2026-10-22T16:31:00Z',
          };
          return (status: 200, body: a.cycles[id]);
        case 'DELETE':
          if (a.runs.values.any((r) => r['cycleId'] == id && r['status'] == 'running')) {
            return (status: 409, body: _problem(409, 'Conflict', 'CYCLE_RUN_IN_PROGRESS'));
          }
          a.cycles.remove(id);
          return (status: 204, body: null);
      }
    }
    if (parts.length == 6 && parts[5] == 'run' && method == 'POST') {
      if (a.runs.values.any((r) => r['cycleId'] == id && r['status'] == 'running')) {
        return (
          status: 409,
          body: _problem(
            409,
            'Conflict',
            'CYCLE_RUN_IN_PROGRESS',
            'A run of this cycle is in progress.',
          ),
        );
      }
      final runId = a.newId();
      a.runs[runId] = _run(
        runId,
        id,
        c['cadence']! as String,
        'running',
        '2026-10-22T16:31:00Z',
        trigger: 'manual',
        previous: c['lastRunId'] as String?,
      );
      c['lastRunId'] = runId;
      return (status: 202, body: a.runs[runId]);
    }
    if (parts.length == 6 && parts[5] == 'runs' && method == 'GET') {
      return (
        status: 200,
        body: <String, Object?>{
          'items': <Object?>[
            for (final r in a.runs.values.toList().reversed)
              if (r['cycleId'] == id) r,
          ],
        },
      );
    }
  }
  if (parts.length == 5 && path.startsWith('/v1/analysis/runs/') && method == 'GET') {
    final r = a.runs[parts[4]];
    if (r == null) {
      return notFound;
    }
    // The fake finishes a run the first time it is read after starting.
    if (r['status'] == 'running') {
      r
        ..['status'] = 'ok'
        ..['finishedAt'] = '2026-10-22T16:33:40Z';
    }
    return (status: 200, body: r);
  }
  if (path == '/v1/analysis/maintenance/run' && method == 'POST') {
    return (
      status: 202,
      body: <String, Object?>{
        'id': a.newId(),
        'trigger': 'manual',
        'status': 'running',
        'startedAt': '2026-10-22T16:31:00Z',
        'steps': <Object?>[
          <String, Object?>{'step': 'observability-reestimation', 'status': 'done'},
          <String, Object?>{'step': 'benchmark-historical', 'status': 'done'},
          <String, Object?>{
            'step': 'base-rate-refresh',
            'status': 'failed',
            'error': 'No resolved outcomes in the window.',
          },
          <String, Object?>{'step': 'platt-refit', 'status': 'running'},
          <String, Object?>{'step': 'ensemble-weights', 'status': 'pending'},
        ],
      },
    );
  }

  // Assessments.
  final cadence = query['cadence']?.firstOrNull;
  final ofCadence = <Map<String, Object?>>[
    for (final x in a.assessments)
      if (cadence == null || x['cadence'] == cadence) x,
  ];
  if (path == '/v1/assessments' && method == 'GET') {
    return (status: 200, body: <String, Object?>{'items': ofCadence});
  }
  if (path == '/v1/assessments/latest' && method == 'GET') {
    return ofCadence.isEmpty
        ? (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND', 'No assessment yet.'))
        : (status: 200, body: ofCadence.first);
  }
  if (parts.length == 5 &&
      parts[2] == 'assessments' &&
      parts[4] == 'feedback' &&
      method == 'POST') {
    return (
      status: 201,
      body: <String, Object?>{
        'id': a.newId(),
        'assessmentId': parts[3],
        'rating': input['rating'],
        'comment': ?input['comment'],
        'by': 'admin',
        'at': '2026-10-22T16:31:00Z',
      },
    );
  }

  // Situations (read-only: the situation page).
  if (parts.length >= 4 && parts[1] == 'v1' && parts[2] == 'situations' && method == 'GET') {
    final situation = a.situations[Uri.decodeComponent(parts[3])];
    if (situation == null) {
      return notFound;
    }
    final id = situation['id']! as String;
    if (parts.length == 4) {
      return (status: 200, body: situation);
    }
    switch (parts[4]) {
      case 'members':
        final members = <Object?>[
          for (final f in ((situation['evidence']! as Map)['families']! as List<Object?>))
            ...((f! as Map)['members']! as List<Object?>),
        ];
        return (status: 200, body: <String, Object?>{'items': members, 'nextCursor': null});
      case 'timeline':
        return (
          status: 200,
          body: <String, Object?>{
            'items': <Object?>[...?a.situationTimelines[id]],
            'nextCursor': null,
          },
        );
      case 'assessments':
        return (
          status: 200,
          body: <String, Object?>{
            'items': <Object?>[...?a.situationAssessments[id]],
            'nextCursor': null,
          },
        );
    }
    return notFound;
  }

  // Board, calibration, corroboration.
  if (path == '/v1/intel/board' && method == 'GET') {
    return (status: 200, body: _board);
  }
  if (path == '/v1/intel/calibration' && method == 'GET') {
    return (status: 200, body: _calibration);
  }
  if (path == '/v1/intel/corroboration') {
    if (method == 'GET') {
      return (status: 200, body: a.corroboration);
    }
    if (method == 'PUT') {
      // A replace: members left out return to their defaults.
      const defaults = <String, Map<String, Object?>>{
        'eventQuality': <String, Object?>{
          'strongFamilies': 3,
          'strongGroups': 2,
          'moderateFamilies': 2,
          'requireModalities': 0,
        },
        'situationActivation': <String, Object?>{'minFamilies': 2, 'minGroups': 2},
        'autoCorroborate': <String, Object?>{
          'enabled': true,
          'withinKm': 50,
          'window': 'PT24H',
          'maxMembers': 10,
        },
      };
      a.corroboration = <String, Object?>{
        for (final g in defaults.entries)
          g.key: <String, Object?>{...g.value, ...?(input[g.key] as Map?)?.cast<String, Object?>()},
      };
      return (status: 200, body: a.corroboration);
    }
  }
  return null;
}
