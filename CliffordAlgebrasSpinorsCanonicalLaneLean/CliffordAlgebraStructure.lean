import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure CliffordAlgebraStructurePackage where
  baseField : Type u
  quadraticForm : Type v
  cliffordAlgebra : Type w
  grading : Type x
  canonicalAntiautomorphism : Prop
  cliffordNorm : Prop
  universalProperty : Prop

structure CliffordAlgebraStructureEvidence (C : CliffordAlgebraStructurePackage) where
  canonicalAntiautomorphismClosed : C.canonicalAntiautomorphism
  cliffordNormClosed : C.cliffordNorm
  universalPropertyClosed : C.universalProperty

def CliffordAlgebraStructureClosed (C : CliffordAlgebraStructurePackage) : Prop :=
  C.canonicalAntiautomorphism ∧ C.cliffordNorm ∧ C.universalProperty

theorem clifford_algebra_structure_closed_from_evidence
    (C : CliffordAlgebraStructurePackage) (E : CliffordAlgebraStructureEvidence C) :
    CliffordAlgebraStructureClosed C := by
  exact And.intro E.canonicalAntiautomorphismClosed
    (And.intro E.cliffordNormClosed E.universalPropertyClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse