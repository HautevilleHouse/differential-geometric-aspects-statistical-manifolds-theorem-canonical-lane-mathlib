import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.FisherMetricPackage
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.AlphaConnections

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure HolonomyPackage {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F} where
  holonomyGroup : Type u
  lieAlgebra : Type v
  reducedHolonomy : Type w
  ambroseSingerTheorem : Prop
  holonomyInvariant : Prop

def HolonomyEvidence {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    (H : HolonomyPackage) : Type :=
  { ambroseSingerClosed : H.ambroseSingerTheorem
    holonomyInvariantClosed : H.holonomyInvariant
  }

def HolonomyClosed {S : StatisticalManifoldStructure}
    {F : FisherMetricPackage S} {A : AlphaConnectionPackage F}
    (H : HolonomyPackage) : Prop :=
  H.ambroseSingerTheorem ∧ H.holonomyInvariant

theorem holonomy_closed_from_evidence
    {S : StatisticalManifoldStructure} {F : FisherMetricPackage S}
    {A : AlphaConnectionPackage F} (H : HolonomyPackage)
    (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.ambroseSingerClosed
    E.holonomyInvariantClosed

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
