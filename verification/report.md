# Verification report: RMO 2025 Problem 2

Status: **proof-ready evidence package; publication not authorized**
Evidence date: 2026-09-19
Submission route: **new-problem recommendation** (no verified matching JSP
catalog entry; no JSP identifier is asserted)

## Proof contract

- Theorem: `Rmo2025P2.result`
- Source: `Rmo2025P2/Main.lean`
- Audit entry point: `Rmo2025P2/Audit.lean`
- Original source: HBCSE/TIFR, *RMO 2025 Official Solutions*, p. 3,
  Problem 2 and Solution 1
- Source URL:
  <https://olympiads.hbcse.tifr.res.in/wp-content/uploads/2025/12/RMO-2025-solutions.pdf>
- Downloaded artifact: 162233 bytes, 7 pages, SHA-256
  `39a0226aafecd080f5aba59f4fdbb49155cfdaf2c85f14081801e12536a6f762`
- Source PDF license: not identified; the PDF is not included in this package.

The bidirectional statement mapping is in
[`statement-fidelity.md`](statement-fidelity.md). It covers the real carrier,
all three nonzero hypotheses, pairwise distinctness, both equalities in the
three-term chain, and the exact absolute-value conclusion. The Lean proof
tracks official Solution 1: clear denominators, derive the cyclic sum as
`3abc`, multiply and cancel the three nonzero difference identities, obtain
`(abc)^2 = 8`, and normalize the absolute value.

## Frozen environment

- Lean toolchain: `leanprover/lean4:v4.33.1`
- Lean version: 4.33.1, commit
  `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`
- Lake: 5.0.0-src+819816b
- Mathlib: `0df444a360eaa60ab8c11dca51a86af692955474`
- Platform: Linux x86_64
- Build user: non-root UID 1001
- Project proof commit: not yet available; the package is uncommitted and no
  public proof URL is claimed.

All nine manifest pins were compared with dependency repository `HEAD`s in the
preserved clean tree; every value matched:

| Package | Revision |
| --- | --- |
| mathlib | `0df444a360eaa60ab8c11dca51a86af692955474` |
| plausible | `b7eb3304aeae834b12dda98993a37f6a41f6f0bb` |
| LeanSearchClient | `5f4d51b81cbd3f6b32b156bfad9056621a040404` |
| importGraph | `16f02aa7642864af59f1ff0e384a015994db9118` |
| proofwidgets | `4be2e3d5087eeb272cf5a8853b8f9dd025ef5957` |
| aesop | `3448c0bcc5ce01b2d1546e483ec3620e32df3d0e` |
| Qq | `92c15be17b7caf78c2ad767ec40f89052d908d81` |
| batteries | `4488d40d070b9700d4d5a6aa342f0d40c31b2a2d` |
| Cli | `6130a47896ce867c6a4a55373441e59e565bad0f` |

## Clean reproduction

The clean tree was `/dev/shm/rmo2025p2-clean2`. Project-owned files were copied
into a fresh directory. Dependency repositories were populated from pinned
source trees while every `*/.lake/build` directory was excluded; a pre-build
search confirmed that no dependency build directory was inherited. The build
command was:

```sh
/usr/bin/time -v -o verification/clean-build-resource.log \
  env MATHLIB_NO_CACHE_ON_UPDATE=1 LAKE_JOBS=2 \
  lake build Rmo2025P2 > verification/clean-build.log 2>&1
```

Recorded result:

- `1510/1510` jobs, `Build completed successfully`, exit status 0
- elapsed wall time: `58:54.24`
- maximum resident set size: `2,137,424 KB`
- swaps: 0
- socket messages sent: 0
- socket messages received: 0

The clean build is evidenced by `clean-build.log` and
`clean-build-resource.log`. By contrast, `build.log` is an earlier
incremental/cached sanity build (`1503` jobs), not clean-reproduction evidence.

## Kernel and trust audit

`Rmo2025P2/Audit.lean` checks and prints the theorem and its axioms. The
recorded axiom set is `[propext, Classical.choice, Quot.sound]`. These are
standard Lean/Mathlib principles; no project-defined axiom is reported.
Project-owned Lean sources were scanned for `sorry`, `admit`, `sorryAx`,
top-level `axiom`, `native_decide`, `unsafe`, and suspicious `constant`
declarations; no match was found.

Agent D independently reran the audit in container
`rmo2025p2-d-netnone-audit`. It exited 0 with `NetworkMode=none`, user
`1001:1001`, read-only root filesystem, and read-only source/toolchain bind
mounts. See `d-offline-container-inspect.txt` and `d-offline-audit.log`. An
unrelated Docker-declared data volume was writable, and this limitation is
recorded rather than concealed.

## Attribution and licensing

Role-separated findings are in [`../ATTRIBUTION.md`](../ATTRIBUTION.md). The
official PDF identifies HBCSE/TIFR as source but does not name an individual
solution author. The Lean work is AI-assisted under user direction;
`@zeke-ai` is operator/packager and only a qualified display fallback. Agent D
is the independent checker for the recorded audit; C does not sign for D. The
user's legal/public identity, if required by a later submission, remains
unverified and must be confirmed and supplied by the user before publication.
No recipient, eligibility, award, or payment status is asserted.

The repository contains GPL-3.0 text in `LICENSE`. The newly generated Lean
source and project documentation are to be released under GPL-3.0 if the user
authorizes publication. Dependency licenses remain upstream. The HBCSE/TIFR
PDF is not redistributed; only its URL, scope, checksum, and a paraphrase of
its mathematical route are included.

## Integrity, privacy, and publication boundary

`SHA256SUMS` covers every final package file except itself, `.git/**`, and
`.lake/**`. `sha256sum -c verification/SHA256SUMS` is the integrity check.
The package was scanned for credentials, tokens, private correspondence,
identity/payment material, internal session identifiers, and private agent
deliberation. No such material is intended for publication. Local paths in the
objective container evidence are execution metadata, not credentials.

No commit, push, issue, pull request, new-problem recommendation, JSP ID,
candidate record, award decision, or payment claim is created by this report.
