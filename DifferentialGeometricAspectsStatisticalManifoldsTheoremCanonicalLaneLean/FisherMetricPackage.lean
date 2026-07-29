import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure FisherMetricPackage (S : StatisticalManifoldStructure) where
  scoreFunctions : Type u
  covarianceForm : Type v
  fisherMetricTensor : Type w
  positiveDefinite : Prop
  invarianceUnderReparam : Prop

def FisherMetricEvidence {S : StatisticalManifoldStructure}
    (F : FisherMetricPackage S) : Type :=
  { positiveDefiniteClosed : F.positiveDefinite
    invarianceUnderReparamClosed : F.invarianceUnderReparam
  }

def FisherMetricClosed {S : StatisticalManifoldStructure}
    (F : FisherMetricPackage S) : Prop :=
  F.positiveDefinite ∧ F.invarianceUnderReparam

theorem fisher_metric_closed_from_evidence
    {S : StatisticalManifoldStructure} (F : FisherMetricPackage S)
    (E : FisherMetricEvidence F) : FisherMetricClosed F := by
  exact And.intro E.positiveDefiniteClosed
    E.invarianceUnderReparamClosed

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
