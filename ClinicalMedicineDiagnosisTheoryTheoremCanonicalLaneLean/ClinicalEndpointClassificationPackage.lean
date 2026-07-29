import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalEndpointClassificationPackage where
  diseaseState : Type u
  outcomeMeasure : Type v
  endpointDefined : Prop
  endpointValidated : Prop
  clinicalSignificanceThreshold : Prop
  endpointMatchesDiagnosis : Prop

structure ClinicalEndpointClassificationEvidence (C : ClinicalEndpointClassificationPackage) where
  endpointDefinedClosed : C.endpointDefined
  endpointValidatedClosed : C.endpointValidated
  clinicalSignificanceThresholdClosed : C.clinicalSignificanceThreshold
  endpointMatchesDiagnosisClosed : C.endpointMatchesDiagnosis

def ClinicalEndpointClassificationClosed (C : ClinicalEndpointClassificationPackage) : Prop :=
  C.endpointDefined ∧ C.endpointValidated ∧
  C.clinicalSignificanceThreshold ∧ C.endpointMatchesDiagnosis

theorem clinical_endpoint_classification_closed_from_evidence
    (C : ClinicalEndpointClassificationPackage) (E : ClinicalEndpointClassificationEvidence C) :
    ClinicalEndpointClassificationClosed C := by
  exact And.intro E.endpointDefinedClosed
    (And.intro E.endpointValidatedClosed
      (And.intro E.clinicalSignificanceThresholdClosed E.endpointMatchesDiagnosisClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse