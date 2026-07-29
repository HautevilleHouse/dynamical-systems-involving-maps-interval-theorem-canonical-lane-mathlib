import canonicalLaneMathlib.AdmissibleClass

/-!
# Symbolic Dynamics and Interval Maps Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalMap (I : Type) [TopologicalSpace I] where
  f : I → I
  continuous : Continuous f
  interval : Set I

structure SymbolicDynamicsPackage (I : Type) [TopologicalSpace I] (φ : IntervalMap I) where
  shiftSpace : Type u
  itineraryMap : I → shiftSpace
  subshiftOfFiniteType : Prop
  topologicalEntropy : Prop
  symbolicCodingClosed : Prop

structure SymbolicDynamicsEvidence {I : Type} [TopologicalSpace I] {φ : IntervalMap I}
    (S : SymbolicDynamicsPackage I φ) where
  subshiftOfFiniteTypeClosed : S.subshiftOfFiniteType
  topologicalEntropyClosed : S.topologicalEntropy
  symbolicCodingClosedClosed : S.symbolicCodingClosed

def SymbolicDynamicsClosed {I : Type} [TopologicalSpace I] {φ : IntervalMap I}
    (S : SymbolicDynamicsPackage I φ) : Prop :=
  S.subshiftOfFiniteType ∧ S.topologicalEntropy ∧ S.symbolicCodingClosed

theorem symbolic_dynamics_closed_from_evidence {I : Type} [TopologicalSpace I] {φ : IntervalMap I}
    (S : SymbolicDynamicsPackage I φ) (E : SymbolicDynamicsEvidence S) : SymbolicDynamicsClosed S := by
  exact And.intro E.subshiftOfFiniteTypeClosed (And.intro E.topologicalEntropyClosed E.symbolicCodingClosedClosed)

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse