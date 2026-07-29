import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinorConnectionPackage where
  spinorBundle : Type u
  spinConnection : Type v
  diracOperator : Type w
  compatibilityWithCliffordMultiplication : Prop
  twistedDiracOperator : Prop
  weitzenbockFormula : Prop

structure SpinorConnectionEvidence (S : SpinorConnectionPackage) where
  compatibilityWithCliffordMultiplicationClosed : S.compatibilityWithCliffordMultiplication
  twistedDiracOperatorClosed : S.twistedDiracOperator
  weitzenbockFormulaClosed : S.weitzenbockFormula

def SpinorConnectionClosed (S : SpinorConnectionPackage) : Prop :=
  S.compatibilityWithCliffordMultiplication ∧ S.twistedDiracOperator ∧ S.weiitzenbockFormula

theorem spinor_connection_closed_from_evidence
    (S : SpinorConnectionPackage) (E : SpinorConnectionEvidence S) :
    SpinorConnectionClosed S := by
  exact And.intro E.compatibilityWithCliffordMultiplicationClosed
    (And.intro E.twistedDiracOperatorClosed E.weiitzenbockFormulaClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse