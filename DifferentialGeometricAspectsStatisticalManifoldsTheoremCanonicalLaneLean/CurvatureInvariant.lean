import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.FisherMetricPackage
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.AlphaConnections

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure CurvatureInvariantPackage {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F} where
  riemannCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  holomorphicCurvature : Type y
  curvatureInvariantsComputed : Prop

def CurvatureInvariantEvidence {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    (C : CurvatureInvariantPackage) : Type :=
  { curvatureInvariantsClosed : C.curvatureInvariantsComputed }

def CurvatureInvariantClosed {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    (C : CurvatureInvariantPackage) : Prop :=
  C.curvatureInvariantsComputed

theorem curvature_invariant_closed_from_evidence
    {S : StatisticalManifoldStructure} {F : FisherMetricPackage S}
    {A : AlphaConnectionPackage F} (C : CurvatureInvariantPackage)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C :=
  E.curvatureInvariantsClosed

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
