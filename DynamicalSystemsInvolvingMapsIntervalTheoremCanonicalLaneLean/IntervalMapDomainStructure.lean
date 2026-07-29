import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalDomainPackage where
  intervalType : Type
  intervalTopology : TopologicalSpace intervalType
  leftEndpoint : intervalType
  rightEndpoint : intervalType
  orderStructure : Prop
  orderTopology : Prop
  compactness : Prop
  connectedness : Prop
  lengthCompatibility : Prop

structure IntervalDomainEvidence (I : IntervalDomainPackage) where
  orderStructureClosed : I.orderStructure
  orderTopologyClosed : I.orderTopology
  compactnessClosed : I.compactness
  connectednessClosed : I.connectedness
  lengthCompatibilityClosed : I.lengthCompatibility

def IntervalDomainClosed (I : IntervalDomainPackage) : Prop :=
  I.orderStructure ∧ I.orderTopology ∧ I.compactness ∧ I.connectedness ∧ I.lengthCompatibility

theorem interval_domain_closed_from_evidence (I : IntervalDomainPackage) (E : IntervalDomainEvidence I) : IntervalDomainClosed I := by
  exact And.intro E.orderStructureClosed (And.intro E.orderTopologyClosed (And.intro E.compactnessClosed (And.intro E.connectednessClosed E.lengthCompatibilityClosed)))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
