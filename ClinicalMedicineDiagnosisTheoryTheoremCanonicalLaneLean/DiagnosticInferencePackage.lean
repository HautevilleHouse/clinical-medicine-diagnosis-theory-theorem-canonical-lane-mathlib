import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  patientData : Type u
  priorProbability : Type v
  likelihoodRatio : Type w
  posteriorProbability : Type x
  bayesOperator : Prop
  sequentialInferenceUpdate : Prop
  diagnosticAccuracyMeasured : Prop

diagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  bayesOperatorClosed : D.bayesOperator
  sequentialInferenceUpdateClosed : D.sequentialInferenceUpdate
  diagnosticAccuracyMeasuredClosed : D.diagnosticAccuracyMeasured

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.bayesOperator ∧ D.sequentialInferenceUpdate ∧ D.diagnosticAccuracyMeasured

theorem diagnostic_inference_closed_from_evidence
    (D : DiagnosticInferencePackage) (E : diagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.bayesOperatorClosed
    (And.intro E.sequentialInferenceUpdateClosed E.diagnosticAccuracyMeasuredClosed)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse