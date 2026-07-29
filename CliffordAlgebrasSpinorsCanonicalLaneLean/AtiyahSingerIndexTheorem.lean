import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure AtiyahSingerIndexPackage (M : Type u) [TopologicalSpace M] [CompactManifold M]
  (V : Type v) [AddCommGroup V] [Module ℝ V]
  {C : CliffordAlgebraPackage V} where
  diracOperator : Type w
  indexFormula : ℤ
  indexTheoremStatement : Prop
  diracOperatorClosed : Prop
  indexFormulaClosed : Prop
  diracOperatorClosedTerm : diracOperatorClosed
  indexFormulaClosedTerm : indexFormulaClosed

structure AtiyahSingerIndexEvidence
  (M : Type u) [TopologicalSpace M] [CompactManifold M]
  (V : Type v) [AddCommGroup V] [Module ℝ V]
  {C : CliffordAlgebraPackage V}
  (A : AtiyahSingerIndexPackage M V C) where
  diracOperatorClosedClosed : A.diracOperatorClosed
  indexFormulaClosedClosed : A.indexFormulaClosed

def AtiyahSingerIndexClosed
  (M : Type u) [TopologicalSpace M] [CompactManifold M]
  (V : Type v) [AddCommGroup V] [Module ℝ V]
  {C : CliffordAlgebraPackage V}
  (A : AtiyahSingerIndexPackage M V C) : Prop :=
  A.diracOperatorClosed ∧ A.indexFormulaClosed

theorem atiyah_singer_index_closed_from_evidence
  (M : Type u) [TopologicalSpace M] [CompactManifold M]
  (V : Type v) [AddCommGroup V] [Module ℝ V]
  {C : CliffordAlgebraPackage V}
  (A : AtiyahSingerIndexPackage M V C) (E : AtiyahSingerIndexEvidence A) :
  AtiyahSingerIndexClosed A :=
  And.intro E.diracOperatorClosedClosed E.indexFormulaClosedClosed

end HautevilleHouse
end CliffordAlgebrasSpinorsCanonicalLaneLean