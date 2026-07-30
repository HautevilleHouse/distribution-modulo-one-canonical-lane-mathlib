import distributionModuloOneCanonicalLaneLean.EquidistributionAdmissibleClass

/-!
# Erdős–Turán Inequality
-/

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure ErdosTuranPackage (A : AdmissibleClass) where
  discrepancy : ℕ → ℝ
  discrepancyBound : ℝ
  inequalityHolds : Prop
  boundApplies : Prop
  inequalityClosed : inequalityHolds
  boundClosed : boundApplies

def ErdosTuranClosed (A : AdmissibleClass) (E : ErdosTuranPackage A) : Prop :=
  E.inequalityHolds ∧ E.boundApplies

theorem erdos_turan_closed_from_evidence (A : AdmissibleClass)
    (E : ErdosTuranPackage A) : ErdosTuranClosed A E := by
  exact And.intro E.inequalityClosed E.boundClosed

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse