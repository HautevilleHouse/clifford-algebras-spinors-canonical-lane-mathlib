import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.CliffordBundles
import HautevilleHouse.CliffordAlgebrasSpinorsCanonicalLaneLean.SpinorModule

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure DiracOperatorPackage (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M] (g : RiemannianMetric M)
  (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g) where
  diracOperator : (smoothSections S) → (smoothSections S)
  firstOrder : Prop
  elliptic : Prop
  selfAdjoint : Prop
  weitzenbockFormula : Prop

def DiracOperatorClosed (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M] (g : RiemannianMetric M)
  (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g) (D : DiracOperatorPackage M g B S) : Prop :=
  D.firstOrder ∧ D.elliptic ∧ D.selfAdjoint ∧ D.weitzenbockFormula

theorem dirac_closed_from_components (M : Type u) [TopologicalSpace M] [SmoothManifold ℝ M]
  (g : RiemannianMetric M) (B : CliffordBundlePackage M g) (S : SpinorBundlePackage M g)
  (D : DiracOperatorPackage M g B S) (h1 : D.firstOrder) (h2 : D.elliptic) (h3 : D.selfAdjoint) (h4 : D.weitzenbockFormula) :
  DiracOperatorClosed M g B S D := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse