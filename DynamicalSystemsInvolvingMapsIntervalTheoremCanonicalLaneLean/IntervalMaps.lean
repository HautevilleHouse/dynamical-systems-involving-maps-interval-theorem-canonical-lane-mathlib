import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalMap (I : Type) [Preorder I] where
  domain : Set I
  map : I → I
  continuous : Prop
  piecewiseMonotone : Prop

def IntervalMapClosed (f : IntervalMap I) : Prop :=
  f.continuous ∧ f.piecewiseMonotone

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse