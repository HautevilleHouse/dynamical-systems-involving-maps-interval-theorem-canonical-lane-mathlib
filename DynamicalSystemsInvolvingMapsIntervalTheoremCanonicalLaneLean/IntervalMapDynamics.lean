import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalMapSystem where
  interval : Set ℝ
  map : ℝ → ℝ
  invariantMeasure : Prop
  topologicalEntropy : Prop
  periodicPoints : Prop
  chaoticBehavior : Prop

def intervalMapSystemClosed (S : IntervalMapSystem) : Prop :=
  S.invariantMeasure ∧ S.topologicalEntropy ∧ S.periodicPoints ∧ S.chaoticBehavior

structure IntervalMapEvidence (S : IntervalMapSystem) where
  invariantMeasureClosed : S.invariantMeasure
  topologicalEntropyClosed : S.topologicalEntropy
  periodicPointsClosed : S.periodicPoints
  chaoticBehaviorClosed : S.chaoticBehavior

theorem interval_map_system_closed_from_evidence (S : IntervalMapSystem) (E : IntervalMapEvidence S) :
    intervalMapSystemClosed S := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.topologicalEntropyClosed
      (And.intro E.periodicPointsClosed E.chaoticBehaviorClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
