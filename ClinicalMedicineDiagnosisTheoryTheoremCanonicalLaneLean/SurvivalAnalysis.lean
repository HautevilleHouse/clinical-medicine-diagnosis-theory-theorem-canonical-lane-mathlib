import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure SurvivalAnalysis where
  hazardFunction : Type u
  survivalFunction : Type v
  censoringMechanism : Prop
  proportionalHazards : Prop
  kaplanMeierEstimator : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysis) where
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator

def SurvivalAnalysisClosed (S : SurvivalAnalysis) : Prop :=
  S.censoringMechanism ∧ S.proportionalHazards ∧ S.kaplanMeierEstimator

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysis) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S :=
  And.intro E.censoringMechanismClosed (And.intro E.proportionalHazardsClosed E.kaplanMeierEstimatorClosed)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse