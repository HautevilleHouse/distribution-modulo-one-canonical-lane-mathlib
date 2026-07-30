import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure DiscrepancyPackage where
  sequence : ℕ -> ℝ
  starDiscrepancy : ℕ -> ℝ
  lowDiscrepancyProperty : Prop
  koksmaInequality : Prop
  rothBound : Prop

structure DiscrepancyEvidence (D : DiscrepancyPackage) where
  lowDiscrepancyPropertyClosed : D.lowDiscrepancyProperty
  koksmaInequalityClosed : D.koksmaInequality
  rothBoundClosed : D.rothBound

def DiscrepancyClosed (D : DiscrepancyPackage) : Prop :=
  D.lowDiscrepancyProperty ∧ D.koksmaInequality ∧ D.rothBound

theorem discrepancy_closed_from_evidence
    (D : DiscrepancyPackage) (E : DiscrepancyEvidence D) : DiscrepancyClosed D := by
  exact And.intro E.lowDiscrepancyPropertyClosed
    (And.intro E.koksmaInequalityClosed E.rothBoundClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse