import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure IntervalMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  intervalStructure : Prop

structure IntervalMapAdmittedObject where
  space : IntervalMapSpace
  map : space.carrier → space.carrier
  continuousMap : Prop
  invariantMeasure : Prop
  topologicalEntropyDefined : Prop
  conclusion : topologicalEntropyDefined

def IntervalMapWitnessClosed (O : IntervalMapAdmittedObject) : Prop :=
  O.topologicalEntropyDefined

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
