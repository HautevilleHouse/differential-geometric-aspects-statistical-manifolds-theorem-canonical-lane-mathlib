import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.DualFlatGeometry

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure DivergenceFunction where
  manifold : DuallyFlatManifold
  divergenceType : Type u
  positiveDefinite : Prop
  convexInFirstArgument : Prop
  positiveDefiniteTerm : positiveDefinite
  convexInFirstArgumentTerm : convexInFirstArgument

structure HolonomicDivergence where
  divergence : DivergenceFunction
  metricRecovery : Prop
  connectionRecovery : Prop
  curvatureInvariance : Prop
  metricRecoveryTerm : metricRecovery
  connectionRecoveryTerm : connectionRecovery
  curvatureInvarianceTerm : curvatureInvariance

structure DivergencePackage where
  divergence : HolonomicDivergence
  theoremStatements : Prop
  divergenceClosed : Prop
  theoremStatementsTerm : theoremStatements
  divergenceClosedTerm : divergenceClosed

def DivergenceClosed (D : DivergencePackage) : Prop :=
  D.theoremStatements ∧ D.divergenceClosed

theorem divergence_closed_from_package (D : DivergencePackage) : DivergenceClosed D := by
  exact And.intro D.theoremStatementsTerm D.divergenceClosedTerm

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
