import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinorRepresentationPackage where
  cliffordAlgebra : Type u
  spinorSpace : Type v
  gammaMatrices : Type w
  representationMapsToPinGroup : Prop
  irreducibleDecomposition : Prop
  weylSpinorsDefined : Prop

structure SpinorRepresentationEvidence (S : SpinorRepresentationPackage) where
  representationMapsToPinGroupClosed : S.representationMapsToPinGroup
  irreducibleDecompositionClosed : S.irreducibleDecomposition
  weylSpinorsDefinedClosed : S.weylSpinorsDefined

def SpinorRepresentationClosed (S : SpinorRepresentationPackage) : Prop :=
  S.representationMapsToPinGroup ∧ S.irreducibleDecomposition ∧ S.weylSpinorsDefined

theorem spinor_representation_closed_from_evidence
    (S : SpinorRepresentationPackage) (E : SpinorRepresentationEvidence S) :
    SpinorRepresentationClosed S := by
  exact And.intro E.representationMapsToPinGroupClosed
    (And.intro E.irreducibleDecompositionClosed E.weylSpinorsDefinedClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse