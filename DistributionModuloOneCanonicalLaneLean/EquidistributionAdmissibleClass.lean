import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure EquidistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : ∀ s : Set carrier, Prop
  ergodic : Prop

def equidistributionAdmittedObject (E : EquidistributionSpace) : Prop :=
  E.ergodic

structure AdmissibleClass where
  object : EquidistributionSpace
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse