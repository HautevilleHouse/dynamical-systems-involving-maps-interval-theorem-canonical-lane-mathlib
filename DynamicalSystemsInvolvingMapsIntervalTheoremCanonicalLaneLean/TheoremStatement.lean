import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure DynamicsAdmittedObject where
  interval : Type
  topology : TopologicalSpace interval
  map : interval → interval
  continuousMap : Prop
  topologicalEntropyPositive : Prop
  conclusion : topologicalEntropyPositive

def DynamicsWitnessClosed (O : DynamicsAdmittedObject) : Prop :=
  O.topologicalEntropyPositive

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
