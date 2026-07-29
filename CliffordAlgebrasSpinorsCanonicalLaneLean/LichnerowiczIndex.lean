import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.SpinorRep

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure LichnerowiczIndexTheorem {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    (S : SpinRepresentation Cl) where
  diracOperator : S.spinSpace → S.spinSpace
  indexFormula : ℤ
  scalarCurvatureTerm : ℝ
  indexComputed : Prop

def IndexClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    {S : SpinRepresentation Cl} (L : LichnerowiczIndexTheorem S) : Prop :=
  L.indexComputed

theorem index_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    {S : SpinRepresentation Cl} (L : LichnerowiczIndexTheorem S) (h : L.indexComputed) :
    IndexClosed L := h

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse