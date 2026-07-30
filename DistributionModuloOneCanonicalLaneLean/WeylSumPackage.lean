import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure WeylSumPackage where
  polynomial : ℕ -> ℝ
  weylSum : ℕ -> ℂ
  weylInequality : Prop
  vanderCorputDifference : Prop
  exponentialSumBound : Prop

structure WeylSumEvidence (W : WeylSumPackage) where
  weylInequalityClosed : W.weylInequality
  vanderCorputDifferenceClosed : W.vanderCorputDifference
  exponentialSumBoundClosed : W.exponentialSumBound

def WeylSumClosed (W : WeylSumPackage) : Prop :=
  W.weylInequality ∧ W.vanderCorputDifference ∧ W.exponentialSumBound

theorem weyl_sum_closed_from_evidence
    (W : WeylSumPackage) (E : WeylSumEvidence W) : WeylSumClosed W := by
  exact And.intro E.weylInequalityClosed
    (And.intro E.vanderCorputDifferenceClosed E.exponentialSumBoundClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse