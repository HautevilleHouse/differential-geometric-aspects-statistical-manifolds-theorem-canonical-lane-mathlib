import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure StatisticalManifoldStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  riemannianMetric : Type w
  fisherMetric : Type x
  alphaConnections : Type y
  curvatureTensor : Type z
  smoothManifoldProperty : Prop
  metricSmoothProperty : Prop
  fisherMetricDefined : Prop
  alphaConnectionsDefined : Prop
  curvatureTensorDefined : Prop

structure StatisticalManifoldEvidence (S : StatisticalManifoldStructure) where
  smoothManifoldClosed : S.smoothManifoldProperty
  metricSmoothClosed : S.metricSmoothProperty
  fisherMetricClosed : S.fisherMetricDefined
  alphaConnectionsClosed : S.alphaConnectionsDefined
  curvatureTensorClosed : S.curvatureTensorDefined

def StatisticalManifoldClosed (S : StatisticalManifoldStructure) : Prop :=
  S.smoothManifoldProperty ∧ S.metricSmoothProperty ∧
  S.fisherMetricDefined ∧ S.alphaConnectionsDefined ∧
  S.curvatureTensorDefined

theorem statistical_manifold_closed_from_evidence
    (S : StatisticalManifoldStructure) (E : StatisticalManifoldEvidence S) :
    StatisticalManifoldClosed S := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.fisherMetricClosed
        (And.intro E.alphaConnectionsClosed
          E.curvatureTensorClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
