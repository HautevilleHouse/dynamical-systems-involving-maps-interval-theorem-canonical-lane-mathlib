import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure LiYorkeChaos where
  scrambledSet : Set ℝ
  proximality : Prop
  distalPairs : Prop

def liYorkeChaosClosed (L : LiYorkeChaos) : Prop :=
  L.proximality ∧ L.distalPairs

theorem li_yorke_chaos_closed_from_evidence (L : LiYorkeChaos) (E : L.proximality) (F : L.distalPairs) :
    liYorkeChaosClosed L := by
  exact And.intro E F

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
