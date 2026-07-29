import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosticTestEvaluationPackage where
  sensitivity : Prop
  specificity : Prop
  predictiveValues : Prop
  likelihoodRatios : Prop
  sensitivityClosed : sensitivity
  specificityClosed : specificity
  predictiveValuesClosed : predictiveValues
  likelihoodRatiosClosed : likelihoodRatios

def DiagnosticTestEvaluationClosed (T : DiagnosticTestEvaluationPackage) : Prop :=
  T.sensitivity ∧ T.specificity ∧ T.predictiveValues ∧ T.likelihoodRatios

theorem diagnostic_test_evaluation_closed_from_evidence (T : DiagnosticTestEvaluationPackage) : DiagnosticTestEvaluationClosed T := by
  exact And.intro T.sensitivityClosed (And.intro T.specificityClosed (And.intro T.predictiveValuesClosed T.likelihoodRatiosClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
