import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.WeylCriterion

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure EquidistributionPackage (W : WeylCriterion) where
  uniformModOne : W.uniformModOne
  discrepancyControl : Prop
  closure : W.uniformModOne ∧ discrepancyControl

def EquidistributionClosed (E : EquidistributionPackage) : Prop := E.closure

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse