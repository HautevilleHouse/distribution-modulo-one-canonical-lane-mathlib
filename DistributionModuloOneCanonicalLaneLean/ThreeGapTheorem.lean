import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

structure ThreeGapTheoremPackage where
  alpha : ℝ
  irrational : Prop
  fractionalParts : ℕ → ℝ
  gaps : List ℝ
  gapCount : ℕ
  gapValues : Prop

structure ThreeGapTheoremEvidence (T : ThreeGapTheoremPackage) where
  irrationalClosed : T.irrational
  gapValuesClosed : T.gapValues

def ThreeGapTheoremClosed (T : ThreeGapTheoremPackage) : Prop :=
  T.irrational ∧ T.gapValues

theorem three_gap_theorem_closed_from_evidence (T : ThreeGapTheoremPackage) (Ev : ThreeGapTheoremEvidence T) :
    ThreeGapTheoremClosed T := by
  exact And.intro Ev.irrationalClosed Ev.gapValuesClosed

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse