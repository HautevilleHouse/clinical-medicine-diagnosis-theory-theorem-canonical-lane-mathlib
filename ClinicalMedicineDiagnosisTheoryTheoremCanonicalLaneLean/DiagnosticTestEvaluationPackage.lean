import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosticTestEvaluationPackage where
  testResult : Type u
  goldStandard : Type v
  truePositive : Prop
  falsePositive : Prop
  trueNegative : Prop
  falseNegative : Prop
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop

structure DiagnosticTestEvaluationEvidence (T : DiagnosticTestEvaluationPackage) where
  truePositiveClosed : T.truePositive
  falsePositiveClosed : T.falsePositive
  trueNegativeClosed : T.trueNegative
  falseNegativeClosed : T.falseNegative
  sensitivityClosed : T.sensitivity
  specificityClosed : T.specificity
  positivePredictiveValueClosed : T.positivePredictiveValue
  negativePredictiveValueClosed : T.negativePredictiveValue

def DiagnosticTestEvaluationClosed (T : DiagnosticTestEvaluationPackage) : Prop :=
  T.truePositive ∧ T.falsePositive ∧ T.trueNegative ∧ T.falseNegative ∧
  T.sensitivity ∧ T.specificity ∧ T.positivePredictiveValue ∧ T.negativePredictiveValue

theorem diagnostic_test_evaluation_closed_from_evidence
    (T : DiagnosticTestEvaluationPackage) (E : DiagnosticTestEvaluationEvidence T) :
    DiagnosticTestEvaluationClosed T := by
  exact And.intro E.truePositiveClosed
    (And.intro E.falsePositiveClosed
      (And.intro E.trueNegativeClosed
        (And.intro E.falseNegativeClosed
          (And.intro E.sensitivityClosed
            (And.intro E.specificityClosed
              (And.intro E.positivePredictiveValueClosed E.negativePredictiveValueClosed))))))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse