import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure UniformDistributionPackage where
  sequence : Nat -> ℝ
  fractionalParts : Nat -> Set ℝ
  equidistributionProperty : Prop
  weylCriterion : Prop
  densityCharacterization : Prop

struct UniformDistributionEvidence (U : UniformDistributionPackage) where
  equidistributionPropertyClosed : U.equidistributionProperty
  weylCriterionClosed : U.weylCriterion
  densityCharacterizationClosed : U.densityCharacterization

def UniformDistributionClosed (U : UniformDistributionPackage) : Prop :=
  U.equidistributionProperty ∧ U.weylCriterion ∧ U.densityCharacterization

theorem uniform_distribution_closed_from_evidence
    (U : UniformDistributionPackage) (E : UniformDistributionEvidence U) :
    UniformDistributionClosed U := by
  exact And.intro E.equidistributionPropertyClosed
    (And.intro E.weylCriterionClosed E.densityCharacterizationClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse