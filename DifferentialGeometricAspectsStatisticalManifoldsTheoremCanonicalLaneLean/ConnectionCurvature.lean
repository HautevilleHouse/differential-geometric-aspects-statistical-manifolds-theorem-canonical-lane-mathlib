import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldPackage

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure ConnectionCurvaturePackage {M : StatisticalManifoldPackage} (S : StatisticalManifoldEvidence M) where
  leviCivitaConnection : Prop
  riemannCurvatureTensor : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  sectionalCurvature : Prop
  holonomyGroup : Prop

structure ConnectionCurvatureEvidence {M : StatisticalManifoldPackage} {S : StatisticalManifoldEvidence M}
    (C : ConnectionCurvaturePackage S) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  riemannCurvatureTensorClosed : C.riemannCurvatureTensor
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  sectionalCurvatureClosed : C.sectionalCurvature
  holonomyGroupClosed : C.holonomyGroup

def ConnectionCurvatureClosed {M : StatisticalManifoldPackage} {S : StatisticalManifoldEvidence M}
    (C : ConnectionCurvaturePackage S) : Prop :=
  C.leviCivitaConnection ∧ C.riemannCurvatureTensor ∧ C.ricciCurvature ∧
  C.scalarCurvature ∧ C.sectionalCurvature ∧ C.holonomyGroup

theorem connection_curvature_closed_from_evidence {M : StatisticalManifoldPackage} {S : StatisticalManifoldEvidence M}
    (C : ConnectionCurvaturePackage S) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.leviCivitaConnectionClosed
    (And.intro E.riemannCurvatureTensorClosed
      (And.intro E.ricciCurvatureClosed
        (And.intro E.scalarCurvatureClosed
          (And.intro E.sectionalCurvatureClosed E.holonomyGroupClosed))))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse