# RMO 2025 Problem 2 — Lean 4 formalization

This package formalizes RMO 2025 Problem 2 exactly as printed in the official
HBCSE/TIFR solution booklet.

## Target

- theorem: `Rmo2025P2.result`
- source: `Rmo2025P2/Main.lean`
- audit: `Rmo2025P2/Audit.lean`
- Lean: `v4.33.1`
- Mathlib: `0df444a360eaa60ab8c11dca51a86af692955474`

## Build

```sh
MATHLIB_NO_CACHE_ON_UPDATE=1 lake update
lake build Rmo2025P2
lake env lean Rmo2025P2/Audit.lean
```

## Evidence

- [Statement-fidelity ledger](verification/statement-fidelity.md)
- [Verification report](verification/report.md)
- [Role-separated attribution](ATTRIBUTION.md)
- [Clean build log](verification/clean-build.log) and
  [resource record](verification/clean-build-resource.log)
- [Kernel axiom output](verification/axioms.log)
- [D strong-offline audit output](verification/d-offline-audit.log) and
  [container inspection](verification/d-offline-container-inspect.txt)
- [Package integrity manifest](verification/SHA256SUMS)

`verification/build.log` is an earlier incremental/cached sanity build of 1503
jobs. It is not clean-build evidence. The clean source reproduction is
`verification/clean-build.log`: 1510 jobs, exit status 0; its method and
resource measurements are in the verification report.

## Attribution and license boundaries

The official HBCSE/TIFR PDF is linked and cited but not redistributed; its
redistribution license was not identified. The newly generated Lean source and
project documentation use this repository's GPL-3.0 license if and when the
user authorizes public release. Dependencies retain their upstream licenses.
The public roles and unresolved limits are documented in `ATTRIBUTION.md`.
The user's legal/public identity, if later required, remains for the user to
confirm and supply; it is not inferred here.

This is local technical evidence only. It is not an award, eligibility, or
payment determination. No verified JSP catalog identifier is associated with
this problem here, so any later JSP action must use the
new-problem-recommendation route and requires explicit user authorization.
No commit, push, issue, or PR has been performed for this package.
