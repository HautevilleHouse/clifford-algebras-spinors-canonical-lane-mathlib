import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CliffordAlgebrasSpinorsCanonicalLaneLean

structure SpinGeometryFundamentalPackage {V : Type u} [AddCommGroup V] [Module ℝ V]
    (C : CliffordAlgebraPackage V) (S : SpinRepresentationPackage C) where
  spinConnection : Type w
  parallelTransport : Prop
  holonomyRepresentation : Prop
  bochnerFormula : Prop

structure SpinGeometryFundamentalEvidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (G : SpinGeometryFundamentalPackage C S) where
  parallelTransportClosed : G.parallelTransport
  holonomyRepresentationClosed : G.holonomyRepresentation
  bochnerFormulaClosed : G.bochnerFormula

def SpinGeometryFundamentalClosed {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (G : SpinGeometryFundamentalPackage C S) : Prop :=
  G.parallelTransport ∧ G.holonomyRepresentation ∧ G.bochnerFormula

theorem spin_geometry_fundamental_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    {C : CliffordAlgebraPackage V} {S : SpinRepresentationPackage C}
    (G : SpinGeometryFundamentalPackage C S) (E : SpinGeometryFundamentalEvidence G) :
    SpinGeometryFundamentalClosed G := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.holonomyRepresentationClosed E.bochnerFormulaClosed)

end CliffordAlgebrasSpinorsCanonicalLaneLean
end HautevilleHouse