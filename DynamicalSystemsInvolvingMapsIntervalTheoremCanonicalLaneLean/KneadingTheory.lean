import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMaps

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure KneadingData {I : Type} [Preorder I] (f : IntervalMap I) where
  criticalPoints : List I
  kneadingMatrix : Type
  kneadingDeterminant : Prop

def KneadingClosed {I : Type} [Preorder I] {f : IntervalMap I} (K : KneadingData f) : Prop :=
  K.kneadingDeterminant

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse