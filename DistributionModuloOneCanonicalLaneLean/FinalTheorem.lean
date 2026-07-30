import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.DistributionModOne
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

def ConstrainedDistributionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_endgame (A : AdmissibleClass) :
    ConstrainedDistributionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse