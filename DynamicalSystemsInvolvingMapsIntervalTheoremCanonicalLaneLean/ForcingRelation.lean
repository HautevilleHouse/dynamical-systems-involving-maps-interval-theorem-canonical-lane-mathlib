import DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean.BridgeLemmas

/-!
# Forcing Relation Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure ForcingRelationPackage where
  interval : Type u
  map : interval → interval
  transitivePoints : Prop
  periodicPoints : Prop
  itineraryEncoding : Prop
  forcingRelationDefined : Prop

structure ForcingRelationEvidence (F : ForcingRelationPackage) where
  transitivePointsClosed : F.transitivePoints
  periodicPointsClosed : F.periodicPoints
  itineraryEncodingClosed : F.itineraryEncoding
  forcingRelationDefinedClosed : F.forcingRelationDefined

def ForcingRelationClosed (F : ForcingRelationPackage) : Prop :=
  F.transitivePoints ∧ F.periodicPoints ∧ F.itineraryEncoding ∧ F.forcingRelationDefined

theorem forcing_relation_closed_from_evidence (F : ForcingRelationPackage) (E : ForcingRelationEvidence F) : ForcingRelationClosed F := by
  exact And.intro E.transitivePointsClosed (And.intro E.periodicPointsClosed (And.intro E.itineraryEncodingClosed E.forcingRelationDefinedClosed))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse