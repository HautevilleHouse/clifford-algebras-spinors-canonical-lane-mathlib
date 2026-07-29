import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure LichnerowiczTheoremPackage {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) (S : SpinRepresentationPackage C) where
  scalarCurvatureAction : Prop
  diracSquaredFormula : Prop
  vanishingTheorem : Prop

structure LichnerowiczTheoremEvidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (L : LichnerowiczTheoremPackage C S) where
  scalarCurvatureActionClosed : L.scalarCurvatureAction
  diracSquaredFormulaClosed : L.diracSquaredFormula
  vanishingTheoremClosed : L.vanishingTheorem

def LichnerowiczTheoremClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (L : LichnerowiczTheoremPackage C S) : Prop :=
  L.scalarCurvatureAction ∧ L.diracSquaredFormula ∧ L.vanishingTheorem

theorem lichnerowicz_theorem_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (L : LichnerowiczTheoremPackage C S) (E : LichnerowiczTheoremEvidence L) :
    LichnerowiczTheoremClosed L := by
  exact And.intro E.scalarCurvatureActionClosed
    (And.intro E.diracSquaredFormulaClosed E.vanishingTheoremClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse