import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.FisherMetricPackage
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.AlphaConnections
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.CurvatureInvariant

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure IndexTheoremPackage {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    {C : CurvatureInvariantPackage} where
  ellipticOperator : Type u
  indexFormula : Prop
  topologicalInvariant : Prop
  analyticIndexComputed : Prop

def IndexTheoremEvidence {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    {C : CurvatureInvariantPackage} (I : IndexTheoremPackage) : Type :=
  { indexFormulaClosed : I.indexFormula
    topologicalInvariantClosed : I.topologicalInvariant
    analyticIndexComputedClosed : I.analyticIndexComputed
  }

def IndexTheoremClosed {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    {C : CurvatureInvariantPackage} (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.topologicalInvariant ∧ I.analyticIndexComputed

theorem index_theorem_closed_from_evidence
    {S : StatisticalManifoldStructure} {F : FisherMetricPackage S}
    {A : AlphaConnectionPackage F} {C : CurvatureInvariantPackage}
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed
    (And.intro E.topologicalInvariantClosed
      E.analyticIndexComputedClosed)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
