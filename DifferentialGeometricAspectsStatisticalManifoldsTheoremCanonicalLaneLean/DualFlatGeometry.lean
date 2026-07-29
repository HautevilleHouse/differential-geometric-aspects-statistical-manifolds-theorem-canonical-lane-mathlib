import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.AmariChentsovStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure DualFlatConnectionPair where
  primalConnection : AmariChentsovAlphaConnection
  dualConnection : AmariChentsovAlphaConnection
  primalFlat : Prop
  dualFlat : Prop
  primalDualDuality : Prop
  primalFlatTerm : primalFlat
  dualFlatTerm : dualFlat
  primalDualDualityTerm : primalDualDuality

structure DuallyFlatManifold where
  metric : FisherRiemannianMetric
  dualPair : DualFlatConnectionPair
  potentialFunction : Prop
  legendreTransformation : Prop
  potentialFunctionTerm : potentialFunction
  legendreTransformationTerm : legendreTransformation

structure DualFlatGeometryPackage where
  manifold : DuallyFlatManifold
  canonicalDivergence : Prop
  bregmanDivergence : Prop
  canonicalDivergenceTerm : canonicalDivergence
  bregmanDivergenceTerm : bregmanDivergence
  dualFlatClosed : Prop
  dualFlatClosedTerm : dualFlatClosed

def DualFlatGeometryClosed (D : DualFlatGeometryPackage) : Prop :=
  D.canonicalDivergence ∧ D.bregmanDivergence ∧ D.dualFlatClosed

theorem dual_flat_geometry_closed_from_package (D : DualFlatGeometryPackage) :
    DualFlatGeometryClosed D := by
  exact And.intro D.canonicalDivergenceTerm (And.intro D.bregmanDivergenceTerm D.dualFlatClosedTerm)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
