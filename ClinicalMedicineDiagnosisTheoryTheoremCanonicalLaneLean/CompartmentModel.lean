import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  stateVector : Type u
  rateMatrix : Type v
  initialCondition : Prop
  transferRatesDefined : Prop
  massBalance : Prop

structure CompartmentModelEvidence (C : CompartmentModel) where
  initialConditionClosed : C.initialCondition
  transferRatesDefinedClosed : C.transferRatesDefined
  massBalanceClosed : C.massBalance

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.initialCondition ∧ C.transferRatesDefined ∧ C.massBalance

theorem compartment_model_closed_from_evidence (C : CompartmentModel) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C :=
  And.intro E.initialConditionClosed (And.intro E.transferRatesDefinedClosed E.massBalanceClosed)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse