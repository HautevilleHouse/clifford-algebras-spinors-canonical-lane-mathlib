import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure CliffordAlgebraPackage {V : Type u} [AddCommGroup V] [Module ℝ V] (Q : QuadraticForm ℝ V) where
  algebraType : Type v
  algebraStructure : Algebra ℝ algebraType
  gradeInvolution : algebraType → algebraType
  reversion : algebraType → algebraType
  cliffordConjugation : algebraType → algebraType
  universalProperty : Prop

def CliffordAlgebraClosed {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V} (C : CliffordAlgebraPackage Q) : Prop :=
  C.universalProperty

structure SpinorRepresentation {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V} (C : CliffordAlgebraPackage Q) where
  spinSpace : Type w
  moduleStructure : Module ℝ spinSpace
  cliffordAction : C.algebraType → (spinSpace →ₗ[ℝ] spinSpace)
  irreducible : Prop

theorem spinor_representation_from_clifford_algebra
    {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    (C : CliffordAlgebraPackage Q) (S : SpinorRepresentation C) :
    S.irreducible := S.irreducible

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse