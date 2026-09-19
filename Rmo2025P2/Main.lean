import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

namespace Rmo2025P2

/--
RMO 2025, Problem 2.

Let `a`, `b`, `c` be distinct nonzero real numbers satisfying
`a + 2 / b = b + 2 / c = c + 2 / a`. Then
`|a^2 b + b^2 c + c^2 a| = 6 sqrt(2)`.
-/
theorem result
    (a b c : ℝ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : a ≠ b) (hbc : b ≠ c) (hca : c ≠ a)
    (h1 : a + 2 / b = b + 2 / c)
    (h2 : b + 2 / c = c + 2 / a) :
    |a ^ 2 * b + b ^ 2 * c + c ^ 2 * a| = 6 * Real.sqrt 2 := by
  have h3 : c + 2 / a = a + 2 / b := h2.symm.trans h1.symm
  have e1 := h1
  have e2 := h2
  have e3 := h3
  field_simp [ha, hb, hc] at e1 e2 e3
  have hs : a ^ 2 * b + b ^ 2 * c + c ^ 2 * a = 3 * (a * b * c) := by
    nlinarith [e1, e2, e3]
  have hp : (a * b * c) ^ 2 = 8 := by
    have d1 : b * c * (a - b) = 2 * (b - c) := by
      nlinarith [e1]
    have d2 : c * a * (b - c) = 2 * (c - a) := by
      nlinarith [e2]
    have d3 : a * b * (c - a) = 2 * (a - b) := by
      nlinarith [e3]
    have hprod :
        (b * c * (a - b)) * (c * a * (b - c)) * (a * b * (c - a)) =
          (2 * (b - c)) * (2 * (c - a)) * (2 * (a - b)) := by
      rw [d1, d2, d3]
    have hne : (a - b) * (b - c) * (c - a) ≠ 0 := by
      apply mul_ne_zero (mul_ne_zero (sub_ne_zero.mpr hab) (sub_ne_zero.mpr hbc))
      exact sub_ne_zero.mpr hca
    have hfactor :
        ((a - b) * (b - c) * (c - a)) * (a * b * c) ^ 2 =
          ((a - b) * (b - c) * (c - a)) * 8 := by
      calc
        ((a - b) * (b - c) * (c - a)) * (a * b * c) ^ 2 =
            (b * c * (a - b)) * (c * a * (b - c)) * (a * b * (c - a)) := by ring
        _ = (2 * (b - c)) * (2 * (c - a)) * (2 * (a - b)) := hprod
        _ = ((a - b) * (b - c) * (c - a)) * 8 := by ring
    apply (mul_left_cancel₀ hne)
    exact hfactor
  have habc : |a * b * c| = 2 * Real.sqrt 2 := by
    have hsqrt : (Real.sqrt 2) ^ 2 = 2 := by norm_num
    nlinarith [sq_abs (a * b * c), abs_nonneg (a * b * c), Real.sqrt_nonneg 2]
  calc
    |a ^ 2 * b + b ^ 2 * c + c ^ 2 * a| = |3 * (a * b * c)| := by rw [hs]
    _ = |(3 : ℝ)| * |a * b * c| := abs_mul 3 (a * b * c)
    _ = 3 * |a * b * c| := by norm_num
    _ = 3 * (2 * Real.sqrt 2) := by rw [habc]
    _ = 6 * Real.sqrt 2 := by ring

end Rmo2025P2
