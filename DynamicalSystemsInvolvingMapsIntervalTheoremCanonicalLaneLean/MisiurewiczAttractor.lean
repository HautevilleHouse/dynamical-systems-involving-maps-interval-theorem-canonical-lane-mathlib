import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure MisiurewiczAttractor (f : IntervalMap) where
  attractorSet : Set ℝ
  invariant : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop
  sensitiveDependence : Prop

structure MisiurewiczEvidence {f : IntervalMap} (M : MisiurewiczAttractor f) where
  invariantClosed : M.invariant
  topologicalTransitivityClosed : M.topologicalTransitivity
  densePeriodicPointsClosed : M.densePeriodicPoints
  sensitiveDependenceClosed : M.sensitiveDependence

def MisiurewiczClosed {f : IntervalMap} (M : MisiurewiczAttractor f) : Prop :=
  M.invariant ∧ M.topologicalTransitivity ∧ M.densePeriodicPoints ∧ M.sensitiveDependence

theorem misiurewicz_closed_from_evidence {f : IntervalMap} (M : MisiurewiczAttractor f)
    (E : MisiurewiczEvidence M) : MisiurewiczClosed M := by
  exact And.intro E.invariantClosed
    (And.intro E.topologicalTransitivityClosed
      (And.intro E.densePeriodicPointsClosed E.sensitiveDependenceClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse