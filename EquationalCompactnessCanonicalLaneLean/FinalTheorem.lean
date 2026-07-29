import EquationalCompactnessCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EquationalCompactnessCanonicalLaneLean

def ConstrainedEquationalCompactnessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_equational_compactness_endgame (A : AdmissibleClass) :
    ConstrainedEquationalCompactnessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EquationalCompactnessCanonicalLaneLean
end HautevilleHouse