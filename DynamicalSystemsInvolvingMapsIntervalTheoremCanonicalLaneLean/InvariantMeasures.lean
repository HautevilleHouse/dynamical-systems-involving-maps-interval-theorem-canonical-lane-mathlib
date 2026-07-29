import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure InvariantMeasuresPackage {I : IntervalDomainPackage} {M : MapDynamicsPackage I} where
  borelSigmaAlgebra : Type
  invariantProbabilityMeasures : Prop
  ergodicDecomposition : Prop
  srmeasures : Prop
  physicalMeasures : Prop

structure InvariantMeasuresEvidence {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (P : InvariantMeasuresPackage M) where
  invariantProbabilityMeasuresClosed : P.invariantProbabilityMeasures
  ergodicDecompositionClosed : P.ergodicDecomposition
  srmeasuresClosed : P.srmeasures
  physicalMeasuresClosed : P.physicalMeasures

def InvariantMeasuresClosed {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (P : InvariantMeasuresPackage M) : Prop :=
  P.invariantProbabilityMeasures ∧ P.ergodicDecomposition ∧ P.srmeasures ∧ P.physicalMeasures

theorem invariant_measures_closed_from_evidence {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (P : InvariantMeasuresPackage M) (E : InvariantMeasuresEvidence P) : InvariantMeasuresClosed P := by
  exact And.intro E.invariantProbabilityMeasuresClosed (And.intro E.ergodicDecompositionClosed (And.intro E.srmeasuresClosed E.physicalMeasuresClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
