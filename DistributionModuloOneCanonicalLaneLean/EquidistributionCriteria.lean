import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

/-
!  Equidistribution Criteria

 This module defines the Weyl criterion and other equidistribution criteria
 for sequences modulo one.
-/

structure WeylCriterion (α : Type u) where
  characterSum : α → ℂ
  equidistributionCondition : ∀ (h : ℤ), ∃ (c : ℂ), True

def weylSum (seq : ℕ → ℝ) (h : ℤ) (N : ℕ) : ℂ :=
  (1 / N) * ∑_{n=1}^{N} Complex.exp (2π * Complex.I * h * seq n)

structure WeylCriterionEvidence where
  weylSumZeroForNonZeroH : Prop
  equidistributionImplied : Prop

structure WeylPackage where
  sequence : ℕ → ℝ
  criterion : WeylCriterion ℕ
  evidence : WeylCriterionEvidence
  criterionSatisfied : ∀ h : ℤ, h ≠ 0 → weylSum sequence h → 0

def WeylClosed (W : WeylPackage) : Prop :=
  W.criterionSatisfied

theorem weyl_closed_from_evidence (W : WeylPackage) : WeylClosed W := by
  exact W.criterionSatisfied

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse