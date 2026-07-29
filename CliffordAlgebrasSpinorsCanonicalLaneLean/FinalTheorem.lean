import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

def ConstrainedCliffordAlgebraSpinorsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_clifford_algebra_spinors_endgame (A : AdmissibleClass) :
    ConstrainedCliffordAlgebraSpinorsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse