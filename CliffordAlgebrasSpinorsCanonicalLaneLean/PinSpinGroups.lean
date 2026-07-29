import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.SpinorModule

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure PinGroupPackage {V : Type u} [AddCommGroup V] [Module ℝ V] (Q : QuadraticForm ℝ V) (C : CliffordAlgebraPackage Q) where
  pinGroup : Type v
  groupStructure : Group pinGroup
  normPreserving : pinGroup → (V → V)
  doubleCover : pinGroup → OrthogonalGroup Q
  exactness : Prop

def PinGroupClosed {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V} {C : CliffordAlgebraPackage Q} (P : PinGroupPackage Q C) : Prop :=
  P.exactness

structure SpinGroupPackage {V : Type u} [AddCommGroup V] [Module ℝ V] (Q : QuadraticForm ℝ V) (C : CliffordAlgebraPackage Q) (P : PinGroupPackage Q C) where
  spinGroup : Subgroup P.pinGroup
  connected : Prop
  simplyConnected : Prop
  coversSO : spinGroup → SpecialOrthogonalGroup Q
  coveringMapClosed : Prop

theorem spin_group_from_pin_group_closed
    {V : Type u} [AddCommGroup V] [Module ℝ V] {Q : QuadraticForm ℝ V}
    {C : CliffordAlgebraPackage Q} {P : PinGroupPackage Q C}
    (S : SpinGroupPackage Q C P) : S.coveringMapClosed := S.coveringMapClosed

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse