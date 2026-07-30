import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure DistributionModOneObject where
  sequence : (Nat → ℝ) × (Nat → ℝ)
  uniformModOne : Prop
  discrepancy : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def UniformModOneClosed (obj : DistributionModOneObject) : Prop :=
  obj.uniformModOne

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse