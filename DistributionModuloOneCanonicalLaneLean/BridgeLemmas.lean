import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  UniformModOneClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.endpointSatisfied

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse