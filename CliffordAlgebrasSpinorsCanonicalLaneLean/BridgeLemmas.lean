import CliffordAlgebrasSpinorsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CliffordSpinorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse