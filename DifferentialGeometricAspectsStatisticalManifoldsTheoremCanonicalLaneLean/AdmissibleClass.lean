import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean

structure DifferentialGeometricAdmittedObject where
  objectType : String
  verified : Prop
  verifiedTerm : verified

def SwipingGeometricClosure (A : DifferentialGeometricAdmittedObject) : Prop :=
  A.verified

end DifferentialGeometricAspectsStatisticalManifoldsTheoremCanonicalLaneLean
end HautevilleHouse