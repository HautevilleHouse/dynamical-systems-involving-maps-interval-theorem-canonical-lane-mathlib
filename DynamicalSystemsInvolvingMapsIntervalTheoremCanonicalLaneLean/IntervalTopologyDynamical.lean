import canonicalLaneMathlib.AdmissibleClass

/-!
# Interval Topology and Dynamical Systems Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

struct IntervalDynamicalPackage (I : Type) [TopologicalSpace I] where
  map : I → I
  invariantMeasures : Set (Measure I)
  topologicalTransitivity : Prop
  mixing : Prop
  chaoticBehavior : Prop
  periodicPointsDense : Prop

define IntervalDynamicalPackageClosed (I : Type) [TopologicalSpace I] (P : IntervalDynamicalPackage I) : Prop :=
  P.topologicalTransitivity ∧ P.mixing ∧ P.chaoticBehavior ∧ P.periodicPointsDense

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse