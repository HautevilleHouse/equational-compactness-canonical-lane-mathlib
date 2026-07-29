import EquationalCompactnessCanonicalLaneLean.EquationalCompactnessObjects

namespace HautevilleHouse
namespace EquationalCompactnessCanonicalLaneLean

structure AdmissibleClass where
  object : EquationalCompactnessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EquationalCompactnessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EquationalCompactnessCanonicalLaneLean
end HautevilleHouse