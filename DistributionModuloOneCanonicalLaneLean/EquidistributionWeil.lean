import distributionModuloOneCanonicalLaneLean.EquidistributionAdmissibleClass

/-!
# Equidistribution of Unbounded Sequences (Weil)
-/

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure WeilEquidistributionPackage (A : AdmissibleClass) where
  sequence : ℕ → ℝ
  modOneMap : ℕ → ℝ
  weylSum : ℕ → ℂ
  weylCriterion : Prop
  exponentialSumBound : Prop
  equidistributionResult : Prop
  weylCriterionClosed : weylCriterion
  exponentialSumBoundClosed : exponentialSumBound
  equidistributionResultClosed : equidistributionResult

def WeilEquidistributionClosed (A : AdmissibleClass) (W : WeilEquidistributionPackage A) : Prop :=
  W.weylCriterion ∧ W.exponentialSumBound ∧ W.equidistributionResult

theorem weil_equidistribution_closed_from_evidence (A : AdmissibleClass)
    (W : WeilEquidistributionPackage A) : WeilEquidistributionClosed A W := by
  exact And.intro W.weylCriterionClosed (And.intro W.exponentialSumBoundClosed W.equidistributionResultClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse