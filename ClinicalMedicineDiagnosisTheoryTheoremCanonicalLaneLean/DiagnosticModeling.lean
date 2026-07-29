import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosticModelPackage where
  priorDistribution : Type
  likelihoodFunction : Type
  posteriorDistribution : Type
  bayesianUpdate : Prop
  discriminationThreshold : Prop

structure DiagnosticModelEvidence (M : DiagnosticModelPackage) where
  bayesianUpdateClosed : M.bayesianUpdate
  discriminationThresholdClosed : M.discriminationThreshold

def DiagnosticModelClosed (M : DiagnosticModelPackage) : Prop :=
  M.bayesianUpdate ∧ M.discriminationThreshold

theorem diagnostic_model_closed_from_evidence (M : DiagnosticModelPackage) (E : DiagnosticModelEvidence M) : DiagnosticModelClosed M := by
  exact And.intro E.bayesianUpdateClosed E.discriminationThresholdClosed

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
