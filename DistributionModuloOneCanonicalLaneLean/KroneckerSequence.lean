import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure KroneckerSequencePackage where
  irrationalAlpha : ℝ
  sequence : ℕ -> ℝ
  fractionalParts : ℕ -> Set ℝ
  denseProperty : Prop
  equidistributionProperty : Prop
  discrepancyBound : Prop

structure KroneckerSequenceEvidence (K : KroneckerSequencePackage) where
  densePropertyClosed : K.denseProperty
  equidistributionPropertyClosed : K.equidistributionProperty
  discrepancyBoundClosed : K.discrepancyBound

def KroneckerSequenceClosed (K : KroneckerSequencePackage) : Prop :=
  K.denseProperty ∧ K.equidistributionProperty ∧ K.discrepancyBound

theorem kronecker_sequence_closed_from_evidence
    (K : KroneckerSequencePackage) (E : KroneckerSequenceEvidence K) :
    KroneckerSequenceClosed K := by
  exact And.intro E.densePropertyClosed
    (And.intro E.equidistributionPropertyClosed E.discrepancyBoundClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse