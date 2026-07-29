import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMaps
import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.TopologicalEntropy

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure MisiurewiczConditionPackage {I : Type} [Preorder I] (f : IntervalMap I) (E : TopologicalEntropyPackage f) where
  topologicalEntropyPositive : Prop
  periodicPointExists : Prop
  crossingCondition : Prop

def MisiurewiczClosed {I : Type} [Preorder I] {f : IntervalMap I} {E : TopologicalEntropyPackage f} (M : MisiurewiczConditionPackage f E) : Prop :=
  M.topologicalEntropyPositive ∧ M.periodicPointExists ∧ M.crossingCondition

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse