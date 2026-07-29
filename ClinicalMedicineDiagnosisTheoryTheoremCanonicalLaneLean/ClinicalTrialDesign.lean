import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalTrialDesign where
  randomizationMethod : Prop
  blindingScheme : Prop
  sampleSizeCalculation : Prop
  primaryEndpoint : Prop
  statisticalPower : Prop

structure ClinicalTrialDesignEvidence (T : ClinicalTrialDesign) where
  randomizationMethodClosed : T.randomizationMethod
  blindingSchemeClosed : T.blindingScheme
  sampleSizeCalculationClosed : T.sampleSizeCalculation
  primaryEndpointClosed : T.primaryEndpoint
  statisticalPowerClosed : T.statisticalPower

def ClinicalTrialDesignClosed (T : ClinicalTrialDesign) : Prop :=
  T.randomizationMethod ∧ T.blindingScheme ∧ T.sampleSizeCalculation ∧ T.primaryEndpoint ∧ T.statisticalPower

theorem clinical_trial_design_closed_from_evidence (T : ClinicalTrialDesign) (E : ClinicalTrialDesignEvidence T) :
    ClinicalTrialDesignClosed T :=
  And.intro E.randomizationMethodClosed (And.intro E.blindingSchemeClosed (And.intro E.sampleSizeCalculationClosed (And.intro E.primaryEndpointClosed E.statisticalPowerClosed)))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse