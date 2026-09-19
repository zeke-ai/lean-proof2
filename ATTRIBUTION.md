# Attribution record

## Reviewed object

- Problem: RMO 2025 Problem 2; complete scope is in
  `verification/statement-fidelity.md`.
- Formal theorem: `Rmo2025P2.result` in `Rmo2025P2/Main.lean`.
- Reviewed version: the current uncommitted proof-ready working tree. A public
  proof commit does not yet exist and must not be inferred from repository
  ownership or the current `HEAD`.

## Roles and evidence

| Role | Attribution | Status and basis |
| --- | --- | --- |
| Mathematical problem and published solution | HBCSE/TIFR official *RMO 2025 Official Solutions*, p. 3, Solution 1 | **Confirmed source institution.** The PDF supplies the problem and proof route but does not identify an individual author; individual mathematical authorship is **unverified**. |
| Formal statement | AI-assisted construction under the user's direction | **Qualified.** Translated from the cited official problem and mapped in the fidelity ledger. This does not establish mathematical discovery. |
| Formal proof | AI-assisted Lean construction under the user's direction, following official Solution 1 | **Qualified.** Newly generated for this project and adapted from the published algebraic route. No exclusive or sole-human formalization claim is made. |
| Packaging and operation | GitHub account `@zeke-ai` | **Qualified.** Operator/packager and a display fallback only. Repository ownership and operation do not establish mathematical or formalization authorship. |
| Independent verification | Agent D | **Confirmed for the recorded checks.** D ran the strong-offline audit and examined statement/build evidence. Machine evidence is in `verification/d-offline-container-inspect.txt` and `verification/d-offline-audit.log`. C does not sign for D or infer a human identity for D. |
| Recipient or award claimant | None designated | **Not established.** No recipient identity, eligibility, award, or payment entitlement is established. |

The user's legal/public identity is not verified in this package. If a later
submission requires it, the user must confirm and supply it before publication;
it must not be inferred from `@zeke-ai` or repository metadata.

## Reused material and licenses

The mathematical route is paraphrased from official Solution 1. The HBCSE/TIFR
PDF is linked and cited but is not redistributed. No redistribution license was
found in the cited PDF, so its reuse license is **unverified**.

The Lean statement, proof, audit files, and documentation are newly generated
for this project and are released under the repository's GPL-3.0 license if and
when the user authorizes public release. Pinned dependencies retain their
upstream licenses and are not vendored here.

## Claims not established

This record does not establish first discovery, mathematical authorship by
`@zeke-ai`, exclusive formalization authorship, independence of the AI-assisted
construction, a JSP identifier, recipient status, award eligibility, an award,
or payment entitlement. A future public submission must cite a full immutable
proof commit and retain these distinctions.

Recommended public wording:

> The mathematical problem and proof route are sourced from the HBCSE/TIFR
> RMO 2025 official solutions, p. 3, Solution 1; the PDF does not name an
> individual solution author. The Lean statement and proof were produced with
> AI assistance under user direction. `@zeke-ai` operated and packaged the
> work and is only a qualified display fallback. Agent D independently
> reproduced the recorded checks. No recipient, award, or payment claim is
> made.
