import canonicalLaneMathlib.AdmissibleClass

/-!
# Maps Interval Kneading Theory Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean

structure KneadingPackage (I : Type) [TopologicalSpace I] (φ : IntervalMap I) where
  kneadingDeterminant : Type u
  kneadingData : Type v
  criticalPoints : List I
  itineraryOfCriticalPoints : Prop
  kneadingEntropyRelation : Prop

def KneadingPackageClosed (I : Type) [TopologicalSpace I] {φ : IntervalMap I} (K : KneadingPackage I φ) : Prop :=
  K.itineraryOfCriticalPoints ∧ K.kneadingEntropyRelation

end DynamicalSystemsInvolvingMapsIntervalTheoremCanonicalLaneLean
end HautevilleHouse