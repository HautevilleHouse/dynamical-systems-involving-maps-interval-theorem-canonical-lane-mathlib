import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalMapSpace where
  carrier : Set ℝ
  topology : TopologicalSpace carrier

structure IntervalMapAdmittedObject where
  space : IntervalMapSpace
  map : carrier → carrier
  continuous : Prop
  intervalInvariant : Prop
  conclusion : intervalInvariant

structure AdmissibleClass where
  object : IntervalMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.continuous ∧ A.object.intervalInvariant) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse