import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean.StatisticalManifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure ConnectionTheoryPackage {M : Type u} (S : StatisticalManifold M) where
  leviCivitaConnection : Prop
  alphaConnection : Prop
  dualConnection : Prop
  parallelTransport : Prop
  curvatureTransformation : Prop
  leviCivitaConnectionTerm : leviCivitaConnection
  alphaConnectionTerm : alphaConnection
  dualConnectionTerm : dualConnection
  parallelTransportTerm : parallelTransport
  curvatureTransformationTerm : curvatureTransformation

structure ConnectionTheoryEvidence {M : Type u} {S : StatisticalManifold M} (C : ConnectionTheoryPackage S) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  alphaConnectionClosed : C.alphaConnection
  dualConnectionClosed : C.dualConnection
  parallelTransportClosed : C.parallelTransport
  curvatureTransformationClosed : C.curvatureTransformation

def ConnectionTheoryClosed {M : Type u} {S : StatisticalManifold M} (C : ConnectionTheoryPackage S) : Prop :=
  C.leviCivitaConnection ∧ C.alphaConnection ∧ C.dualConnection ∧ C.parallelTransport ∧ C.curvatureTransformation

theorem connection_theory_closed_from_evidence {M : Type u} {S : StatisticalManifold M} (C : ConnectionTheoryPackage S) (E : ConnectionTheoryEvidence C) : ConnectionTheoryClosed C := by
  exact And.intro E.leviCivitaConnectionClosed (And.intro E.alphaConnectionClosed (And.intro E.dualConnectionClosed (And.intro E.parallelTransportClosed E.curvatureTransformationClosed)))

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse