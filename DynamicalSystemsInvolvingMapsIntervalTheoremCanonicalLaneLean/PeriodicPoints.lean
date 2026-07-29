import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure PeriodicPointSet (f : IntervalMap) where
  period : ℕ
  points : Set ℝ
  fixedPoint : Prop
  closure : Prop

structure PeriodicPointEvidence {f : IntervalMap} (P : PeriodicPointSet f) where
  fixedPointClosed : P.fixedPoint
  closureClosed : P.closure

def PeriodicPointClosed {f : IntervalMap} (P : PeriodicPointSet f) : Prop :=
  P.fixedPoint ∧ P.closure

theorem periodic_point_closed_from_evidence {f : IntervalMap} (P : PeriodicPointSet f)
    (E : PeriodicPointEvidence P) : PeriodicPointClosed P := by
  exact And.intro E.fixedPointClosed E.closureClosed

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse