import canonicalLaneMathlib.AdmissibleClass

/-!
# Bifurcation Theory for Interval Maps Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure BifurcationPackage (I : Type) [TopologicalSpace I] (φ : IntervalMap I) where
  parameterSpace : Type u
  bifurcationDiagram : Prop
  periodDoublingRoute : Prop
  feigenbaumUniversality : Prop
  renormalizationOperator : Type v
  renormalizationConvergence : Prop

def BifurcationPackageClosed (I : Type) [TopologicalSpace I] {φ : IntervalMap I} (B : BifurcationPackage I φ) : Prop :=
  B.bifurcationDiagram ∧ B.periodDoublingRoute ∧ B.feigenbaumUniversality ∧ B.renormalizationConvergence

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse