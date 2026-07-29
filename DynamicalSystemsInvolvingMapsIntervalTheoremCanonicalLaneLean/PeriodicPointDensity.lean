import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.ForcingRelation

/-!
# Periodic Point Density Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure PeriodicPointDensityPackage {F : ForcingRelationPackage} where
  denseSet : Prop
  closureProperties : Prop
  intervalCoverage : Prop
  topologicalTransitivity : Prop

structure PeriodicPointDensityEvidence {F : ForcingRelationPackage} (D : PeriodicPointDensityPackage F) where
  denseSetClosed : D.denseSet
  closurePropertiesClosed : D.closureProperties
  intervalCoverageClosed : D.intervalCoverage
  topologicalTransitivityClosed : D.topologicalTransitivity

def PeriodicPointDensityClosed {F : ForcingRelationPackage} (D : PeriodicPointDensityPackage F) : Prop :=
  D.denseSet ∧ D.closureProperties ∧ D.intervalCoverage ∧ D.topologicalTransitivity

theorem periodic_point_density_closed_from_evidence {F : ForcingRelationPackage} (D : PeriodicPointDensityPackage F) (E : PeriodicPointDensityEvidence D) : PeriodicPointDensityClosed D := by
  exact And.intro E.denseSetClosed (And.intro E.closurePropertiesClosed (And.intro E.intervalCoverageClosed E.topologicalTransitivityClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse