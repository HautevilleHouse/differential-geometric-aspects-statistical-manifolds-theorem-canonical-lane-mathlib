import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.ExponentialFamily

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure BregmanDivergencePackage {M : StatisticalManifoldPackage}
    (E : ExponentialFamilyPackage M) where
  convexFunction : Type u
  bregmanDivergenceDefined : Prop
  divergenceMetricPositiveDefinite : Prop
  dualDivergenceCorrespondence : Prop
  geodesicConnected : Prop

structure BregmanDivergenceEvidence {M : StatisticalManifoldPackage}
    {E : ExponentialFamilyPackage M} (B : BregmanDivergencePackage E) where
  bregmanDivergenceDefinedClosed : B.bregmanDivergenceDefined
  divergenceMetricPositiveDefiniteClosed : B.divergenceMetricPositiveDefinite
  dualDivergenceCorrespondenceClosed : B.dualDivergenceCorrespondence
  geodesicConnectedClosed : B.geodesicConnected

def BregmanDivergenceClosed {M : StatisticalManifoldPackage}
    {E : ExponentialFamilyPackage M} (B : BregmanDivergencePackage E) : Prop :=
  B.bregmanDivergenceDefined ∧ B.divergenceMetricPositiveDefinite ∧
  B.dualDivergenceCorrespondence ∧ B.geodesicConnected

theorem bregman_divergence_closed_from_evidence {M : StatisticalManifoldPackage}
    {E : ExponentialFamilyPackage M} (B : BregmanDivergencePackage E)
    (Ev : BregmanDivergenceEvidence B) : BregmanDivergenceClosed B := by
  exact And.intro Ev.bregmanDivergenceDefinedClosed
    (And.intro Ev.divergenceMetricPositiveDefiniteClosed
      (And.intro Ev.dualDivergenceCorrespondenceClosed Ev.geodesicConnectedClosed))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse