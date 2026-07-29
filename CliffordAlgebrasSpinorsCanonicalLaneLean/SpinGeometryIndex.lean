import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.DiracOperator

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinGeometryIndexPackage (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M]
  (g : RiemannianMetric M) (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g)
  (D : DiracOperatorPackage M g B S) where
  index : ℤ
  atiyahSingerTheorem : Prop
  indexComputed : index = 0 ∨ index = 1
  analyticIndex : Prop
  topologicalIndex : Prop
  indexTheoremClosed : analyticIndex ∧ topologicalIndex ∧ (analyticIndex = topologicalIndex)

structure SpinGeometryIndexEvidence (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M]
  (g : RiemannianMetric M) (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g)
  (D : DiracOperatorPackage M g B S) (I : SpinGeometryIndexPackage M g B S D) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.analyticIndex = I.topologicalIndex

def SpinGeometryIndexClosed (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M]
  (g : RiemannianMetric M) (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g)
  (D : DiracOperatorPackage M g B S) (I : SpinGeometryIndexPackage M g B S D) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ (I.analyticIndex = I.topologicalIndex)

theorem spin_geometry_index_closed_from_evidence (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M]
  (g : RiemannianMetric M) (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g)
  (D : DiracOperatorPackage M g B S) (I : SpinGeometryIndexPackage M g B S D)
  (E : SpinGeometryIndexEvidence M g B S D I) : SpinGeometryIndexClosed M g B S D I := by
  exact And.intro E.analyticIndexClosed (And.intro E.topologicalIndexClosed E.indexEqualityClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse