import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure AdmissibleClass where
  object : DistributionModOneObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  UniformModOneClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse