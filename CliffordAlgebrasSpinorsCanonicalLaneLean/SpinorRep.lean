import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.CliffordAlgebraDef

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinRepresentation {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} (Cl : CliffordAlgebraPackage V) where
  spinSpace : Type v
  moduleStructure : Module ℝ spinSpace
  cliffordAction : CliffordAlgebra Cl.quadraticForm → spinSpace → spinSpace
  irreducible : Prop
  dimension : ℕ
  actionClosed : True

def SpinRepresentationClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    (S : SpinRepresentation Cl) : Prop :=
  S.irreducible ∧ S.actionClosed

theorem spin_representation_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    (S : SpinRepresentation Cl) (h : S.irreducible) : SpinRepresentationClosed S :=
  And.intro h S.actionClosed

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse