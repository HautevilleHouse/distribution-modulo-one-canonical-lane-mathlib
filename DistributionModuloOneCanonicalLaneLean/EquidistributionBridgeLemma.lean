import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  equidistributionAdmittedObject A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.ergodic

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse