import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure AtiyahSingerIndexPackage where
  diracOperator : Type u
  topologicalIndex : Type v
  analyticalIndex : Type w
  indexTheoremProved : Prop
  cobordismInvariance : Prop
  heatKernelProof : Prop

structure AtiyahSingerIndexEvidence (A : AtiyahSingerIndexPackage) where
  indexTheoremProvedClosed : A.indexTheoremProved
  cobordismInvarianceClosed : A.cobordismInvariance
  heatKernelProofClosed : A.heatKernelProof

def AtiyahSingerIndexClosed (A : AtiyahSingerIndexPackage) : Prop :=
  A.indexTheoremProved ∧ A.cobordismInvariance ∧ A.heatKernelProof

theorem atiyah_singer_index_closed_from_evidence
    (A : AtiyahSingerIndexPackage) (E : AtiyahSingerIndexEvidence A) :
    AtiyahSingerIndexClosed A := by
  exact And.intro E.indexTheoremProvedClosed
    (And.intro E.cobordismInvarianceClosed E.heatKernelProofClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse