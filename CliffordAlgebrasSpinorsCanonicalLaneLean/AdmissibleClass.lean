import CliffordAlgebrasSpinorsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure AdmissibleClass where
  object : CliffordSpinorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CliffordSpinorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse