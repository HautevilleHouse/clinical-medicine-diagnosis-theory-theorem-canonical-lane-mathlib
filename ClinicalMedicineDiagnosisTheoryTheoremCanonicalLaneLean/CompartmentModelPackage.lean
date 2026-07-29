import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  rateConstants : Type u
  massBalanceEquations : Prop
  initialConditionsSet : Prop
  steadyStateBehavior : Prop
  identifiabilityCondition : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  massBalanceEquationsClosed : C.massBalanceEquations
  initialConditionsSetClosed : C.initialConditionsSet
  steadyStateBehaviorClosed : C.steadyStateBehavior
  identifiabilityConditionClosed : C.identifiabilityCondition

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.massBalanceEquations ∧ C.initialConditionsSet ∧
  C.steadyStateBehavior ∧ C.identifiabilityCondition

theorem compartment_model_closed_from_evidence
    (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.massBalanceEquationsClosed
    (And.intro E.initialConditionsSetClosed
      (And.intro E.steadyStateBehaviorClosed E.identifiabilityConditionClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse