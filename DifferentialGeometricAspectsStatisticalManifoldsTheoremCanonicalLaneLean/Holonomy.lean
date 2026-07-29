import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure HolonomyPackage {M : Type u} (S : StatisticalManifold M) where
  holonomyGroup : Prop
  restrictedHolonomy : Prop
  ambroseSingerTheorem : Prop
  holonomyInvariant : Prop
  reductionOfBundle : Prop
  holonomyGroupTerm : holonomyGroup
  restrictedHolonomyTerm : restrictedHolonomy
  ambroseSingerTheoremTerm : ambroseSingerTheorem
  holonomyInvariantTerm : holonomyInvariant
  reductionOfBundleTerm : reductionOfBundle

structure HolonomyEvidence {M : Type u} {S : StatisticalManifold M} (H : HolonomyPackage S) where
  holonomyGroupClosed : H.holonomyGroup
  restrictedHolonomyClosed : H.restrictedHolonomy
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  holonomyInvariantClosed : H.holonomyInvariant
  reductionOfBundleClosed : H.reductionOfBundle

def HolonomyClosed {M : Type u} {S : StatisticalManifold M} (H : HolonomyPackage S) : Prop :=
  H.holonomyGroup ∧ H.restrictedHolonomy ∧ H.ambroseSingerTheorem ∧ H.holonomyInvariant ∧ H.reductionOfBundle

theorem holonomy_closed_from_evidence {M : Type u} {S : StatisticalManifold M} (H : HolonomyPackage S) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyGroupClosed (And.intro E.restrictedHolonomyClosed (And.intro E.ambroseSingerTheoremClosed (And.intro E.holonomyInvariantClosed E.reductionOfBundleClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse