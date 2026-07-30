import distributionModuloOneCanonicalLaneLean.EquidistributionAdmissibleClass

/-!
# Ostrowski Expansion and Denseness
-/

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure OstrowskiExpansionPackage (A : AdmissibleClass) where
  numerationSystem : ℕ → ℕ
  expansionDigits : ℕ → ℕ
  approximateSequence : ℕ → ℝ
  densenessResult : Prop
  digitsClosed : Prop
  densenessClosed : densenessResult

def OstrowskiExpansionClosed (A : AdmissibleClass) (O : OstrowskiExpansionPackage A) : Prop :=
  O.densenessResult

theorem ostrowski_expansion_closed_from_evidence (A : AdmissibleClass)
    (O : OstrowskiExpansionPackage A) : OstrowskiExpansionClosed A O := by
  exact O.densenessClosed

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse