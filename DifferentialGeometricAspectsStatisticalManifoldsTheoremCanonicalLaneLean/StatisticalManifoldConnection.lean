import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure StatisticalManifoldPackage where
  m : Type u
  sigmaAlgebra : Set (Set m)
  probabilityMeasure : m → ℝ
  scoreFunction : m → ℝ
  fisherMetric : m → ℝ → ℝ
  alphaConnection : ℝ → (m → ℝ → ℝ)  -- α-connection family
  compatibleWithMetric : Prop
  torsionFree : Prop
  curvatureVanishes : Prop
  compatibleWithMetricTerm : compatibleWithMetric
  torsionFreeTerm : torsionFree
  curvatureVanishesTerm : curvatureVanishes

structure StatisticalManifoldEvidence (S : StatisticalManifoldPackage) where
  compatibleWithMetricClosed : S.compatibleWithMetric
  torsionFreeClosed : S.torsionFree
  curvatureVanishesClosed : S.curvatureVanishes

def StatisticalManifoldClosed (S : StatisticalManifoldPackage) : Prop :=
  S.compatibleWithMetric ∧ S.torsionFree ∧ S.curvatureVanishes

theorem statistical_manifold_closed_from_evidence (S : StatisticalManifoldPackage)
    (E : StatisticalManifoldEvidence S) : StatisticalManifoldClosed S := by
  exact And.intro E.compatibleWithMetricClosed
    (And.intro E.torsionFreeClosed E.curvatureVanishesClosed)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
