import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.CliffordAlgebra

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinRepresentationPackage {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    (C : CliffordAlgebraPackage V Q) where
  spinorSpace : Type w
  action : C.algebra → spinorSpace → spinorSpace
  irreducible : Prop
  dimensionMatch : Prop

structure SpinRepresentationEvidence {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    {C : CliffordAlgebraPackage V Q} (S : SpinRepresentationPackage C) where
  irreducibleClosed : S.irreducible
  dimensionMatchClosed : S.dimensionMatch

def SpinRepresentationClosed {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    {C : CliffordAlgebraPackage V Q} (S : SpinRepresentationPackage C) : Prop :=
  S.irreducible ∧ S.dimensionMatch

theorem spin_representation_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    {C : CliffordAlgebraPackage V Q} (S : SpinRepresentationPackage C)
    (E : SpinRepresentationEvidence S) : SpinRepresentationClosed S := by
  exact And.intro E.irreducibleClosed E.dimensionMatchClosed

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse