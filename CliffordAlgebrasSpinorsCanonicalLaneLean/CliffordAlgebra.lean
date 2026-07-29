import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure CliffordAlgebraPackage (V : Type u) [AddCommGroup V] [Module ℝ V] (Q : QuadraticForm ℝ V) where
  algebra : Type v
  multiplication : algebra → algebra → algebra
  unit : ℝ → algebra
  v : V → algebra
  universalProperty : Prop
  cliffordRelation : ∀ v : V, (v (v Q)) = -Q v • (1 : algebra)
  gradedStructure : Prop

structure CliffordAlgebraEvidence {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    (C : CliffordAlgebraPackage V Q) where
  universalPropertyClosed : C.universalProperty
  cliffordRelationClosed : C.cliffordRelation
  gradedStructureClosed : C.gradedStructure

def CliffordAlgebraClosed {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    (C : CliffordAlgebraPackage V Q) : Prop :=
  C.universalProperty ∧ C.cliffordRelation ∧ C.gradedStructure

theorem clifford_algebra_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    (C : CliffordAlgebraPackage V Q) (E : CliffordAlgebraEvidence C) : CliffordAlgebraClosed C := by
  exact And.intro E.universalPropertyClosed (And.intro E.cliffordRelationClosed E.gradedStructureClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse