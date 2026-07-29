import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure SharkovskyOrdering where
  periodicOrbits : List ℕ
  orderingRespected : Prop
  periodForcing : Prop

def sharkovskyOrderingClosed (O : SharkovskyOrdering) : Prop :=
  O.orderingRespected ∧ O.periodForcing

theorem sharkovsky_ordering_closed_from_evidence (O : SharkovskyOrdering) (E : O.orderingRespected) (F : O.periodForcing) :
    sharkovskyOrderingClosed O := by
  exact And.intro E F

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
