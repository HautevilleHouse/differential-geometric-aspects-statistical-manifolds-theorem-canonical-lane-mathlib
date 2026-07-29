import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure ExponentialFamilyPackage (M : StatisticalManifoldPackage) where
  naturalParameters : Type u
  sufficientStatistics : Type v
  logPartitionFunction : Type w
  exponentialFamilyMetric : Prop
  fisherMetricAgreement : Prop
  duallyFlatStructure : Prop

structure ExponentialFamilyEvidence {M : StatisticalManifoldPackage}
    (E : ExponentialFamilyPackage M) where
  exponentialFamilyMetricClosed : E.exponentialFamilyMetric
  fisherMetricAgreementClosed : E.fisherMetricAgreement
  duallyFlatStructureClosed : E.duallyFlatStructure

def ExponentialFamilyClosed {M : StatisticalManifoldPackage}
    (E : ExponentialFamilyPackage M) : Prop :=
  E.exponentialFamilyMetric ∧ E.fisherMetricAgreement ∧ E.duallyFlatStructure

theorem exponential_family_closed_from_evidence {M : StatisticalManifoldPackage}
    (E : ExponentialFamilyPackage M) (Ev : ExponentialFamilyEvidence E) :
    ExponentialFamilyClosed E := by
  exact And.intro Ev.exponentialFamilyMetricClosed
    (And.intro Ev.fisherMetricAgreementClosed Ev.duallyFlatStructureClosed)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse