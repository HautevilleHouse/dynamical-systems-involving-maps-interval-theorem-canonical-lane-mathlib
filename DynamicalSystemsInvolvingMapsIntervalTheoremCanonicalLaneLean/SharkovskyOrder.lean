import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.IntervalMapDynamics
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.PeriodicPoints

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure SharkovskyOrdering (f : IntervalMap) where
  periodsPresent : Set ℕ
  orderRespected : Prop
  chaosIndicator : Prop

structure SharkovskyEvidence {f : IntervalMap} (S : SharkovskyOrdering f) where
  orderRespectedClosed : S.orderRespected
  chaosIndicatorClosed : S.chaosIndicator

def SharkovskyClosed {f : IntervalMap} (S : SharkovskyOrdering f) : Prop :=
  S.orderRespected ∧ S.chaosIndicator

theorem sharkovsky_closed_from_evidence {f : IntervalMap} (S : SharkovskyOrdering f)
    (E : SharkovskyEvidence S) : SharkovskyClosed S := by
  exact And.intro E.orderRespectedClosed E.chaosIndicatorClosed

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse