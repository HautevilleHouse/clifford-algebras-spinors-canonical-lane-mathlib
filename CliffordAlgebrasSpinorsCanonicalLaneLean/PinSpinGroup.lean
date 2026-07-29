import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure PinSpinGroupPackage where
  cliffordAlgebra : Type u
  pinGroup : Type v
  spinGroup : Type w
  doubleCoverMap : Type x
  exactSequencePinToO : Prop
  simplyConnectedSpinInDimensionThree : Prop
  surjectivityInEvenDimensions : Prop

structure PinSpinGroupEvidence (P : PinSpinGroupPackage) where
  exactSequencePinToOClosed : P.exactSequencePinToO
  simplyConnectedSpinInDimensionThreeClosed : P.simplyConnectedSpinInDimensionThree
  surjectivityInEvenDimensionsClosed : P.surjectivityInEvenDimensions

def PinSpinGroupClosed (P : PinSpinGroupPackage) : Prop :=
  P.exactSequencePinToO ∧ P.simplyConnectedSpinInDimensionThree ∧ P.surjectivityInEvenDimensions

theorem pin_spin_group_closed_from_evidence
    (P : PinSpinGroupPackage) (E : PinSpinGroupEvidence P) :
    PinSpinGroupClosed P := by
  exact And.intro E.exactSequencePinToOClosed
    (And.intro E.simplyConnectedSpinInDimensionThreeClosed E.surjectivityInEvenDimensionsClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse