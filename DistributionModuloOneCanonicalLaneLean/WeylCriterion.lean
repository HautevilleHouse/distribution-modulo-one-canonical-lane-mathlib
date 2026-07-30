import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.KroneckerSequences

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure WeylCriterion where
  sequence : Nat → ℝ
  weylSum : (Nat → ℝ) → (h : ℤ) → ℂ
  weylSumLimitZero : Prop
  uniformModOne : Prop
  proofUniform : uniformModOne → weylSumLimitZero
  proofWeyl : weylSumLimitZero → uniformModOne

def WeylCriterionClosed (W : WeylCriterion) : Prop :=
  W.weylSumLimitZero ∧ W.uniformModOne

theorem weyl_criterion_iff (W : WeylCriterion) : W.uniformModOne ↔ W.weylSumLimitZero := by
  exact And.intro W.proofUniform W.proofWeyl

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse