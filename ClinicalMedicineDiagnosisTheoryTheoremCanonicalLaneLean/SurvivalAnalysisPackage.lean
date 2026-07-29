import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure SurvivalAnalysisPackage where
  timeToEvent : Type u
  censoringIndicator : Prop
  hazardFunction : Type v
  survivalFunction : Type w
  kaplanMeierEstimator : Prop
  coxProportionalHazards : Prop
  logRankTest : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringIndicatorClosed : S.censoringIndicator
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxProportionalHazardsClosed : S.coxProportionalHazards
  logRankTestClosed : S.logRankTest

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringIndicator ∧ S.kaplanMeierEstimator ∧
  S.coxProportionalHazards ∧ S.logRankTest

theorem survival_analysis_closed_from_evidence
    (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.censoringIndicatorClosed
    (And.intro E.kaplanMeierEstimatorClosed
      (And.intro E.coxProportionalHazardsClosed E.logRankTestClosed))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse