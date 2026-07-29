import EquationalCompactnessCanonicalLaneLean.EquationalCompactnessObjects

namespace HautevilleHouse
namespace EquationalCompactnessCanonicalLaneLean

structure EquationalCompactnessPackage where
  signature : Type u
  equations : Type v
  variety : Type w
  compactnessCondition : Prop
  consistencyCondition : Prop
  finiteCharacter : Prop
  mainResult : Prop

structure EquationalCompactnessEvidence (P : EquationalCompactnessPackage) where
  compactnessConditionClosed : P.compactnessCondition
  consistencyConditionClosed : P.consistencyCondition
  finiteCharacterClosed : P.finiteCharacter
  mainResultClosed : P.mainResult

def EquationalCompactnessPackageClosed (P : EquationalCompactnessPackage) : Prop :=
  P.compactnessCondition ∧ P.consistencyCondition ∧ P.finiteCharacter ∧ P.mainResult

theorem equational_compactness_package_closed_from_evidence
    (P : EquationalCompactnessPackage) (E : EquationalCompactnessEvidence P) :
    EquationalCompactnessPackageClosed P := by
  exact And.intro E.compactnessConditionClosed
    (And.intro E.consistencyConditionClosed
      (And.intro E.finiteCharacterClosed E.mainResultClosed))

end EquationalCompactnessCanonicalLaneLean
end HautevilleHouse