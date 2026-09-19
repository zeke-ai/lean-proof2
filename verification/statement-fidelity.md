# Statement fidelity ledger: RMO 2025 Problem 2

Source: HBCSE/TIFR, *RMO 2025 Official Solutions*, Problem 2 and
Solution 1, printed/PDF page 3.

URL: <https://olympiads.hbcse.tifr.res.in/wp-content/uploads/2025/12/RMO-2025-solutions.pdf>

Downloaded 2026-09-18: SHA-256
`39a0226aafecd080f5aba59f4fdbb49155cfdaf2c85f14081801e12536a6f762`,
162233 bytes, 7 pages.

| Source clause | Lean encoding | Status |
| --- | --- | --- |
| `a,b,c` are real | `(a b c : ℝ)` | Exact |
| each is nonzero | `ha : a ≠ 0`, `hb : b ≠ 0`, `hc : c ≠ 0` | Exact |
| `a,b,c` are distinct | `hab : a ≠ b`, `hbc : b ≠ c`, `hca : c ≠ a` | Exact pairwise encoding |
| `a + 2/b = b + 2/c = c + 2/a` | `h1 : a + 2 / b = b + 2 / c`, `h2 : b + 2 / c = c + 2 / a` | Exact chain encoding |
| Determine `|a²b+b²c+c²a|` | conclusion `|a ^ 2 * b + b ^ 2 * c + c ^ 2 * a| = 6 * Real.sqrt 2` | Exact answer and scope |

The Lean proof follows official Solution 1: clear denominators and sum to
obtain the cyclic sum as `3abc`; multiply the three difference identities,
cancel the nonzero difference product, derive `(abc)^2 = 8`, and normalize
the absolute value.
