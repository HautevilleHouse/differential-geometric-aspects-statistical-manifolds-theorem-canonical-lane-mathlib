import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure StatisticalManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  metricTensor : Type v
  fisherMetric : Prop
  alphaConnection : Prop
  curvatureInvariants : Prop

structure StatisticalManifoldEvidence (M : StatisticalManifoldPackage) where
  smoothStructureClosed : M.smoothStructure
  fisherMetricClosed : M.fisherMetric
  alphaConnectionClosed : M.alphaConnection
  curvatureInvariantsClosed : M.curvatureInvariants

def StatisticalManifoldClosed (M : StatisticalManifoldPackage) : Prop :=
  M.smoothStructure ∧ M.fisherMetric ∧ M.alphaConnection ∧ M.curvatureInvariants

theorem statistical_manifold_closed_from_evidence (M : StatisticalManifoldPackage)
    (E : StatisticalManifoldEvidence M) : StatisticalManifoldClosed M := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.fisherMetricClosed
      (And.intro E.alphaConnectionClosed E.curvatureInvariantsClosed))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse