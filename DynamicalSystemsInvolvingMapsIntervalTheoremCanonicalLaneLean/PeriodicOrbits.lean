import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMaps

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure PeriodicOrbitPackage {I : Type} [Preorder I] (f : IntervalMap I) where
  period : ℕ
  orbit : I → I
  periodicity : ∀ n, orbit (f.map (orbit n)) = orbit (n+1)
  minimalPeriod : Prop

def PeriodicOrbitClosed {I : Type} [Preorder I] {f : IntervalMap I} (P : PeriodicOrbitPackage f) : Prop :=
  P.minimalPeriod

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse