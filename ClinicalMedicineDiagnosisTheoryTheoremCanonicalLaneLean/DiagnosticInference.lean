import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosticInference where
  priorDiseaseDistribution : Type u
  likelihoodFunction : Type v
  posteriorCalculation : Prop
  decisionThreshold : Prop
  sensitivity : Prop
  specificity : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInference) where
  posteriorCalculationClosed : D.posteriorCalculation
  decisionThresholdClosed : D.decisionThreshold
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity

def DiagnosticInferenceClosed (D : DiagnosticInference) : Prop :=
  D.posteriorCalculation ∧ D.decisionThreshold ∧ D.sensitivity ∧ D.specificity

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInference) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D :=
  And.intro E.posteriorCalculationClosed (And.intro E.decisionThresholdClosed (And.intro E.sensitivityClosed E.specificityClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse