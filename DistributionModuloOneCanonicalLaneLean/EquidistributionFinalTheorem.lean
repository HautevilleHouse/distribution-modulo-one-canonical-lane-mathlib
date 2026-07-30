import distributionModuloOneCanonicalLaneLean.EquidistributionBridgeLemma

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

def ConstrainedEquidistributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_equidistribution_endgame (A : AdmissibleClass) :
    ConstrainedEquidistributionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse