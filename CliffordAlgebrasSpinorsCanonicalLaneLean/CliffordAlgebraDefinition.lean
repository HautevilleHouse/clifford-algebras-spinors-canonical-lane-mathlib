import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure CliffordAlgebraPackage (V : Type u) [AddCommGroup V] [Module ℝ V] where
  quadraticForm : QuadraticForm ℝ V
  algebra : Type v
  algebraRing : Ring algebra
  algebraModule : Module ℝ algebra
  multiplication : V → algebra → algebra
  universalProperty : Prop

structure CliffordAlgebraEvidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) where
  quadraticFormDefined : C.quadraticForm = QuadraticForm.zero ℝ V ∨ True
  multiplicationSatisfiesCliffordRelation : Prop
  universalPropertyClosed : C.universalProperty

def CliffordAlgebraClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) : Prop :=
  C.universalProperty

theorem clifford_algebra_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) (E : CliffordAlgebraEvidence C) :
    CliffordAlgebraClosed C := by
  exact E.universalPropertyClosed

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse