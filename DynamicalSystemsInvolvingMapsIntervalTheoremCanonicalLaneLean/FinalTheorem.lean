import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

def ConstrainedIntervalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_interval_endgame (A : AdmissibleClass) :
    ConstrainedIntervalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse