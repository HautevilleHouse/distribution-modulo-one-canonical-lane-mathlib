import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure ThreeGapTheoremPackage where
  alpha : ℝ
  sortedFractionalParts : ℕ -> List ℝ
  gapNumberProperty : Prop
  atMostThreeGaps : Prop
  gapLengthsFormulas : Prop

structure ThreeGapTheoremEvidence (T : ThreeGapTheoremPackage) where
  gapNumberPropertyClosed : T.gapNumberProperty
  atMostThreeGapsClosed : T.atMostThreeGaps
  gapLengthsFormulasClosed : T.gapLengthsFormulas

def ThreeGapTheoremClosed (T : ThreeGapTheoremPackage) : Prop :=
  T.gapNumberProperty ∧ T.atMostThreeGaps ∧ T.gapLengthsFormulas

theorem three_gap_theorem_closed_from_evidence
    (T : ThreeGapTheoremPackage) (E : ThreeGapTheoremEvidence T) :
    ThreeGapTheoremClosed T := by
  exact And.intro E.gapNumberPropertyClosed
    (And.intro E.atMostThreeGapsClosed E.gapLengthsFormulasClosed)

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse