import DistributionModuloOneCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleClass.endpointSatisfied A ∨ AdmissibleClass.remainderRecorded A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse
