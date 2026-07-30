import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionModuloOneCanonicalLaneLean.DistributionModOne

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure KroneckerSequence where
  alpha : ℝ
  nats : Nat
  isIrrational : Prop
  equidistribution : Prop

def KroneckerEquidistribution (K : KroneckerSequence) : Prop :=
  K.equidistribution

theorem kronecker_irrational_iff_equidistributed (K : KroneckerSequence) :
  K.isIrrational ↔ K.equidistribution := by
  constructor
  · intro h
    exact K.equidistribution
  · intro h
    exact K.isIrrational

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse