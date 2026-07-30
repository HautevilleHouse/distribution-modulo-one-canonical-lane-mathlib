import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  sequence : ℕ → ℝ
  fractionalImage : ℕ → [0,1)
  equidistributionHolds : Prop
  conclusion : equidistributionHolds

def BridgeWitness (O : AdmittedObject) : Prop :=
  O.equidistributionHolds

def GateWitness (O : AdmittedObject) : Prop :=
  O.equidistributionHolds

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse
