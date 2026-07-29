import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure ShadowingPackage {I : IntervalDomainPackage} {M : MapDynamicsPackage I} where
  shadowingProperty : Prop
  periodicShadowing : Prop
  limitShadowing : Prop
  specificationProperty : Prop
  periodicPointsDense : Prop

structure ShadowingEvidence {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (S : ShadowingPackage M) where
  shadowingPropertyClosed : S.shadowingProperty
  periodicShadowingClosed : S.periodicShadowing
  limitShadowingClosed : S.limitShadowing
  specificationPropertyClosed : S.specificationProperty
  periodicPointsDenseClosed : S.periodicPointsDense

def ShadowingClosed {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (S : ShadowingPackage M) : Prop :=
  S.shadowingProperty ∧ S.periodicShadowing ∧ S.limitShadowing ∧ S.specificationProperty ∧ S.periodicPointsDense

theorem shadowing_closed_from_evidence {I : IntervalDomainPackage} {M : MapDynamicsPackage I} (S : ShadowingPackage M) (E : ShadowingEvidence S) : ShadowingClosed S := by
  exact And.intro E.shadowingPropertyClosed (And.intro E.periodicShadowingClosed (And.intro E.limitShadowingClosed (And.intro E.specificationPropertyClosed E.periodicPointsDenseClosed)))

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse
