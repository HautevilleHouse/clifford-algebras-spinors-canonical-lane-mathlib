import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.LichnerowiczIndex

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure AtiyahSingerIndexTheorem {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    {S : SpinRepresentation Cl} (L : LichnerowiczIndexTheorem S) where
  topologicalIndex : ℤ
  analyticIndex : ℤ
  equality : analyticIndex = topologicalIndex
  indexTheoremClosed : Prop

def AtiyahSingerIndexClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    {S : SpinRepresentation Cl} {L : LichnerowiczIndexTheorem S}
    (A : AtiyahSingerIndexTheorem L) : Prop :=
  A.indexTheoremClosed

theorem atiyah_singer_index_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {Q : QuadraticForm ℝ V} {Cl : CliffordAlgebraPackage V}
    {S : SpinRepresentation Cl} {L : LichnerowiczIndexTheorem S}
    (A : AtiyahSingerIndexTheorem L) (h : A.indexTheoremClosed) :
    AtiyahSingerIndexClosed A := h

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse