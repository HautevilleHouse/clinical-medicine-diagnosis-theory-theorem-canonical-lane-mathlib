import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalDecisionRulePackage where
  decisionThreshold : Prop
  expectedUtility : Prop
  riskAdjusted : Prop
  clinicalGuidelineAlignment : Prop
  decisionThresholdClosed : decisionThreshold
  expectedUtilityClosed : expectedUtility
  riskAdjustedClosed : riskAdjusted
  clinicalGuidelineAlignmentClosed : clinicalGuidelineAlignment

def ClinicalDecisionRuleClosed (D : ClinicalDecisionRulePackage) : Prop :=
  D.decisionThreshold ∧ D.expectedUtility ∧ D.riskAdjusted ∧ D.clinicalGuidelineAlignment

theorem clinical_decision_rule_closed_from_evidence (D : ClinicalDecisionRulePackage) : ClinicalDecisionRuleClosed D := by
  exact And.intro D.decisionThresholdClosed (And.intro D.expectedUtilityClosed (And.intro D.riskAdjustedClosed D.clinicalGuidelineAlignmentClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
