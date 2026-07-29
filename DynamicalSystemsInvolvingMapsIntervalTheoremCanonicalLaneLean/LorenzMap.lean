import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.PeriodicPointDensity

/-!
# Lorenz Map Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure LorenzMapPackage {F : ForcingRelationPackage} {D : PeriodicPointDensityPackage F} where
  mapDefined : Prop
  kneadingInvariant : Prop
  topologicalEntropy : Prop
  chaosProperties : Prop

structure LorenzMapEvidence {F : ForcingRelationPackage} {D : PeriodicPointDensityPackage F} (L : LorenzMapPackage F D) where
  mapDefinedClosed : L.mapDefined
  kneadingInvariantClosed : L.kneadingInvariant
  topologicalEntropyClosed : L.topologicalEntropy
  chaosPropertiesClosed : L.chaosProperties

def LorenzMapClosed {F : ForcingRelationPackage} {D : PeriodicPointDensityPackage F} (L : LorenzMapPackage F D) : Prop :=
  L.mapDefined ∧ L.kneadingInvariant ∧ L.topologicalEntropy ∧ L.chaosProperties

theorem lorenz_map_closed_from_evidence {F : ForcingRelationPackage} {D : PeriodicPointDensityPackage F} (L : LorenzMapPackage F D) (E : LorenzMapEvidence L) : LorenzMapClosed L := by
  exact And.intro E.mapDefinedClosed (And.intro E.kneadingInvariantClosed (And.intro E.topologicalEntropyClosed E.chaosPropertiesClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse