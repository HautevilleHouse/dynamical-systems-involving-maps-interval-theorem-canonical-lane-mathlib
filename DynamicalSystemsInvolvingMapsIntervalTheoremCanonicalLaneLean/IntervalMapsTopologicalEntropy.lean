import canonicalLaneMathlib.AdmissibleClass

/-!
# Topological Entropy for Interval Maps Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure TopologicalEntropyPackage (I : Type) [TopologicalSpace I] (φ : IntervalMap I) where
  entropyValue : ℝ
  entropyPositive : Prop
  entropyBounds : Prop
  entropyVariationalPrinciple : Prop
  entropyComputation : Prop

def TopologicalEntropyPackageClosed (I : Type) [TopologicalSpace I] {φ : IntervalMap I} (E : TopologicalEntropyPackage I φ) : Prop :=
  E.entropyPositive ∧ E.entropyBounds ∧ E.entropyVariationalPrinciple ∧ E.entropyComputation

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse