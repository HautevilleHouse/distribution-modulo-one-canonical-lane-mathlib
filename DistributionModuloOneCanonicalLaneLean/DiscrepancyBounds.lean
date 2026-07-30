import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionModuloOneCanonicalLaneLean

/-
!  Discrepancy Bounds Package

 This module records the admissible-class bridge for discrepancy estimates
 in distribution modulo one. It defines the key objects: uniform distribution,
 discrepancy function, and the admissible bound statements.
-/

structure UniformSequence (α : Type u) where
  carrier : α → ℝ
  equidistributedOnUnitInterval : Prop

def discrepancy (α : Type u) (seq : UniformSequence α) (N : ℕ) : ℝ :=
  max_{I ⊆ [0,1]} |(∑_{n=1}^{N} 1_{I}(seq.carrier n)) / N - length(I)|

structure DiscrepancyEvidence (α : Type u) (seq : UniformSequence α) where
  discrepancyBounds : ℕ → ℝ
  forallN : Prop
  admissibility : Prop

structure DiscrepancyPackage where
  sequence : UniformSequence ℕ
  evidence : DiscrepancyEvidence ℕ sequence
  boundConstant : ℝ
  boundValid : ∀ N : ℕ, discrepancy ℕ sequence N ≤ boundConstant * (log N) / N

structure DiscrepancyClosed (D : DiscrepancyPackage) : Prop where
  sequenceEquidistributed : D.sequence.equidistributedOnUnitInterval
  boundValidClosed : D.boundValid

theorem discrepancy_closed_from_package (D : DiscrepancyPackage) : DiscrepancyClosed D := by
  exact { sequenceEquidistributed := D.sequence.equidistributedOnUnitInterval, boundValidClosed := D.boundValid }

end DistributionModuloOneCanonicalLaneLean
end HautevilleHouse