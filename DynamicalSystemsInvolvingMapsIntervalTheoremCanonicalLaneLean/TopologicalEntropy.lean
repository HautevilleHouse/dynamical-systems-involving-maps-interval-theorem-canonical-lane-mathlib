import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure TopologicalEntropy (f : IntervalMap) where
  entropyValue : ℝ
  positiveEntropy : Prop
  nullEntropy : Prop
  measureTheoretic : Prop

structure TopologicalEntropyEvidence {f : IntervalMap} (E : TopologicalEntropy f) where
  positiveEntropyClosed : E.positiveEntropy
  nullEntropyClosed : E.nullEntropy
  measureTheoreticClosed : E.measureTheoretic

def TopologicalEntropyClosed {f : IntervalMap} (E : TopologicalEntropy f) : Prop :=
  E.positiveEntropy ∧ E.nullEntropy ∧ E.measureTheoretic

theorem topological_entropy_closed_from_evidence {f : IntervalMap} (E : TopologicalEntropy f)
    (Ev : TopologicalEntropyEvidence E) : TopologicalEntropyClosed E := by
  exact And.intro Ev.positiveEntropyClosed (And.intro Ev.nullEntropyClosed Ev.measureTheoreticClosed)

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse