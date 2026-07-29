import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage (S : StatisticalManifoldPackage) where
  ricciCurvature : Type u
  scalarCurvature : Type v
  sectionalCurvature : Type w
  ricciCurvatureComputed : Prop
  scalarCurvatureComputed : Prop
  sectionalCurvatureComputed : Prop
  ricciCurvatureComputedTerm : ricciCurvatureComputed
  scalarCurvatureComputedTerm : scalarCurvatureComputed
  sectionalCurvatureComputedTerm : sectionalCurvatureComputed

structure CurvatureInvariantsEvidence (S : StatisticalManifoldPackage)
    (C : CurvatureInvariantsPackage S) where
  ricciCurvatureComputedClosed : C.ricciCurvatureComputed
  scalarCurvatureComputedClosed : C.scalarCurvatureComputed
  sectionalCurvatureComputedClosed : C.sectionalCurvatureComputed

def CurvatureInvariantsClosed (S : StatisticalManifoldPackage)
    (C : CurvatureInvariantsPackage S) : Prop :=
  C.ricciCurvatureComputed ∧ C.scalarCurvatureComputed ∧ C.sectionalCurvatureComputed

theorem curvature_invariants_closed_from_evidence (S : StatisticalManifoldPackage)
    (C : CurvatureInvariantsPackage S) (E : CurvatureInvariantsEvidence S C) :
    CurvatureInvariantsClosed S C := by
  exact And.intro E.ricciCurvatureComputedClosed
    (And.intro E.scalarCurvatureComputedClosed E.sectionalCurvatureComputedClosed)

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse
