import EquationalCompactnessCanonicalLaneLean.EquationalCompactnessPackage

namespace HautevilleHouse
namespace EquationalCompactnessCanonicalLaneLean

structure EquationalCompactnessAdmittedObject where
  signature : Type u
  equations : Type v
  variety : Type w
  equationalCompact : Prop
  conclusion : equationalCompact

def EquationalCompactnessWitnessClosed (O : EquationalCompactnessAdmittedObject) : Prop :=
  O.equationalCompact

end EquationalCompactnessCanonicalLaneLean
end HautevilleHouse