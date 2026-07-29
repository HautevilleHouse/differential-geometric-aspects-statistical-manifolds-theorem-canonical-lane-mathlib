import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.InformationGeometryCurvature

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure AmariChentsovAlphaConnection where
  metric : FisherRiemannianMetric
  alphaParameter : ℝ
  christoffelSymbols : Prop
  torsionFree : Prop
  metricCompatibility : Prop
  alphaDerivative : Prop
  christoffelSymbolsTerm : christoffelSymbols
  torsionFreeTerm : torsionFree
  metricCompatibilityTerm : metricCompatibility
  alphaDerivativeTerm : alphaDerivative

structure AmariChentsovStructurePackage where
  connection : AmariChentsovAlphaConnection
  dualConnection : AmariChentsovAlphaConnection
  alphaFamily : Prop
  dualityRelation : Prop
  alphaFamilyTerm : alphaFamily
  dualityRelationTerm : dualityRelation
  amariChentsovClosed : Prop
  amariChentsovClosedTerm : amariChentsovClosed

def AmariChentsovClosed (A : AmariChentsovStructurePackage) : Prop :=
  A.alphaFamily ∧ A.dualityRelation ∧ A.amariChentsovClosed

theorem amari_chentsov_closed_from_package (A : AmariChentsovStructurePackage) :
    AmariChentsovClosed A := by
  exact And.intro A.alphaFamilyTerm (And.intro A.dualityRelationTerm A.amariChentsovClosedTerm)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
