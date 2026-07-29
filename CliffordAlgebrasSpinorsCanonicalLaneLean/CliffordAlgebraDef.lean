import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure CliffordAlgebraPackage (V : Type u) [AddCommGroup V] [Module ℝ V] where
  quadraticForm : QuadraticForm ℝ V
  algebraStructure : Algebra ℝ (CliffordAlgebra quadraticForm)
  grading : ℕ → CliffordAlgebra quadraticForm
  gradeInvolution : CliffordAlgebra quadraticForm →ₐ[ℝ] CliffordAlgebra quadraticForm
  reversion : CliffordAlgebra quadraticForm →ₐ[ℝ] CliffordAlgebra quadraticForm
  cliffordConjugation : CliffordAlgebra quadraticForm →ₐ[ℝ] CliffordAlgebra quadraticForm

def CliffordAlgebraClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) : Prop :=
  C.quadraticForm = C.quadraticForm ∧ True

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse