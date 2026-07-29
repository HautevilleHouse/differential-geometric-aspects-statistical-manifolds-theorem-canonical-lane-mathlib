import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure FisherRiemannianMetric where
  parameterSpace : Type u
  manifold : Type v
  metricTensor : parameterSpace -> manifold -> Type w
  positiveDefinite : Prop
  smoothDependence : Prop
  positiveDefiniteTerm : positiveDefinite
  smoothDependenceTerm : smoothDependence

structure StatisticalCurvature where
  metric : FisherRiemannianMetric
  riemannCurvatureTensor : Prop
  ricciCurvatureTensor : Prop
  scalarCurvature : Prop
  sectionalCurvature : Prop
  curvatureTensorSymmetries : Prop
  riemannCurvatureTensorTerm : riemannCurvatureTensor
  ricciCurvatureTensorTerm : ricciCurvatureTensor
  scalarCurvatureTerm : scalarCurvature
  sectionalCurvatureTerm : sectionalCurvature
  curvatureTensorSymmetriesTerm : curvatureTensorSymmetries

structure InformationGeometryCurvaturePackage where
  metric : FisherRiemannianMetric
  curvature : StatisticalCurvature
  statisticalManifoldAxioms : Prop
  curvatureClosed : Prop
  statisticalManifoldAxiomsTerm : statisticalManifoldAxioms
  curvatureClosedTerm : curvatureClosed

def InformationGeometryCurvatureClosed (G : InformationGeometryCurvaturePackage) : Prop :=
  G.statisticalManifoldAxioms ∧ G.curvatureClosed

theorem information_geometry_curvature_closed_from_package (G : InformationGeometryCurvaturePackage) :
    InformationGeometryCurvatureClosed G := by
  exact And.intro G.statisticalManifoldAxiomsTerm G.curvatureClosedTerm

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
