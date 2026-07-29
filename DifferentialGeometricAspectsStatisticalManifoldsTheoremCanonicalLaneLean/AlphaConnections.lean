import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.FisherMetricPackage

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure AlphaConnectionPackage {S : StatisticalManifoldStructure}
    (F : FisherMetricPackage S) where
  alphaParameter : ℝ
  connectionCoefficients : Type u
  torsionFree : Prop
  metricCompatibleWRT : Prop
  dualConnectionDefined : Prop

def AlphaConnectionEvidence {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} (A : AlphaConnectionPackage F) : Type :=
  { torsionFreeClosed : A.torsionFree
    metricCompatibleWRTClosed : A.metricCompatibleWRT
    dualConnectionClosed : A.dualConnectionDefined
  }

def AlphaConnectionClosed {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} (A : AlphaConnectionPackage F) : Prop :=
  A.torsionFree ∧ A.metricCompatibleWRT ∧ A.dualConnectionDefined

theorem alpha_connection_closed_from_evidence
    {S : StatisticalManifoldStructure} {F : FisherMetricPackage S}
    (A : AlphaConnectionPackage F) (E : AlphaConnectionEvidence A) :
    AlphaConnectionClosed A := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleWRTClosed
      E.dualConnectionClosed)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
