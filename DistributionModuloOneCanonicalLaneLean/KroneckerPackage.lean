import DistributionModuloOneCanonicalLaneLean.EquidistributionPackage

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure KroneckerPackage (E : EquidistributionPackage) where
  alpha : ℝ
  irrationality : Prop
  sequenceDefined : ℕ → ℝ
  sequenceModOne : ℕ → [0,1)
  kroneckerEquidistribution : Prop
  density : Prop

structure KroneckerEvidence {E : EquidistributionPackage} (K : KroneckerPackage E) where
  irrationalityClosed : K.irrationality
  kroneckerEquidistributionClosed : K.kroneckerEquidistribution
  densityClosed : K.density

def KroneckerClosed {E : EquidistributionPackage} (K : KroneckerPackage E) : Prop :=
  K.irrationality ∧ K.kroneckerEquidistribution ∧ K.density

theorem kronecker_closed_from_evidence {E : EquidistributionPackage}
    (K : KroneckerPackage E) (ev : KroneckerEvidence K) : KroneckerClosed K := by
  exact And.intro ev.irrationalityClosed
        (And.intro ev.kroneckerEquidistributionClosed ev.densityClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse
