import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.HolonomicDivergenceTheorems

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure StatisticalSubmanifold where
  ambient : DuallyFlatManifold
  submanifold : Type u
  embedding : submanifold -> ambient.metric.parameterSpace
  inducedMetric : FisherRiemannianMetric
  secondFundamentalForm : Prop
  inducedConnection : AmariChentsovAlphaConnection
  secondFundamentalFormTerm : secondFundamentalForm

structure SubmanifoldPackage where
  submanifold : StatisticalSubmanifold
  gaussCodazziEquations : Prop
  minimalityCondition : Prop
  curvatureRelations : Prop
  gaussCodazziEquationsTerm : gaussCodazziEquations
  minimalityConditionTerm : minimalityCondition
  curvatureRelationsTerm : curvatureRelations
  submanifoldClosed : Prop
  submanifoldClosedTerm : submanifoldClosed

def StatisticalSubmanifoldClosed (S : SubmanifoldPackage) : Prop :=
  S.gaussCodazziEquations ∧ S.minimalityCondition ∧ S.curvatureRelations ∧ S.submanifoldClosed

theorem statistical_submanifold_closed_from_package (S : SubmanifoldPackage) :
    StatisticalSubmanifoldClosed S := by
  exact And.intro S.gaussCodazziEquationsTerm
    (And.intro S.minimalityConditionTerm
      (And.intro S.curvatureRelationsTerm S.submanifoldClosedTerm))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
