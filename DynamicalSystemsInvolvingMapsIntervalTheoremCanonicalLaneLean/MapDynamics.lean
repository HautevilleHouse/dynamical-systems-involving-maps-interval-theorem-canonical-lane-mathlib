import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure MapDynamicsPackage (I : IntervalDomainPackage) where
  map : I.intervalType → I.intervalType
  continuity : Prop
  piecewiseConditions : Prop
  criticalPoints : Prop
  periodicPoints : Prop
  topologicalEntropy : Prop
  invariantMeasures : Prop
  shadowingProperty : Prop

structure MapDynamicsEvidence {I : IntervalDomainPackage} (M : MapDynamicsPackage I) where
  continuityClosed : M.continuity
  piecewiseConditionsClosed : M.piecewiseConditions
  criticalPointsClosed : M.criticalPoints
  periodicPointsClosed : M.periodicPoints
  topologicalEntropyClosed : M.topologicalEntropy
  invariantMeasuresClosed : M.invariantMeasures
  shadowingPropertyClosed : M.shadowingProperty

def MapDynamicsClosed {I : IntervalDomainPackage} (M : MapDynamicsPackage I) : Prop :=
  M.continuity ∧ M.piecewiseConditions ∧ M.criticalPoints ∧ M.periodicPoints ∧ M.topologicalEntropy ∧ M.invariantMeasures ∧ M.shadowingProperty

theorem map_dynamics_closed_from_evidence {I : IntervalDomainPackage} (M : MapDynamicsPackage I) (E : MapDynamicsEvidence M) : MapDynamicsClosed M := by
  exact And.intro E.continuityClosed (And.intro E.piecewiseConditionsClosed (And.intro E.criticalPointsClosed (And.intro E.periodicPointsClosed (And.intro E.topologicalEntropyClosed (And.intro E.invariantMeasuresClosed E.shadowingPropertyClosed)))))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
