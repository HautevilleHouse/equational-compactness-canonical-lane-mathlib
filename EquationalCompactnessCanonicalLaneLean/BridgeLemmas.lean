import EquationalCompactnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCompactnessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EquationalCompactnessWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EquationalCompactnessCanonicalLaneLean
end HautevilleHouse