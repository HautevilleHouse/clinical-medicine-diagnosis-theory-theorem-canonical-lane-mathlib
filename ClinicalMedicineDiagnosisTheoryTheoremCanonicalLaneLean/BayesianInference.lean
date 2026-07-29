import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure BayesianInferencePackage where
  priorProbability : Prop
  likelihoodGivenDisease : Prop
  likelihoodGivenNoDisease : Prop
  posteriorProbability : Prop
  bayesFactor : Prop

structure BayesianInferenceEvidence (B : BayesianInferencePackage) where
  priorProbabilityClosed : B.priorProbability
  likelihoodGivenDiseaseClosed : B.likelihoodGivenDisease
  likelihoodGivenNoDiseaseClosed : B.likelihoodGivenNoDisease
  posteriorProbabilityClosed : B.posteriorProbability
  bayesFactorClosed : B.bayesFactor

def BayesianInferenceClosed (B : BayesianInferencePackage) : Prop :=
  B.priorProbability ∧ B.likelihoodGivenDisease ∧ B.likelihoodGivenNoDisease ∧ B.posteriorProbability ∧ B.bayesFactor

theorem bayesian_inference_closed_from_evidence (B : BayesianInferencePackage) (E : BayesianInferenceEvidence B) : BayesianInferenceClosed B := by
  exact And.intro E.priorProbabilityClosed
    (And.intro E.likelihoodGivenDiseaseClosed
      (And.intro E.likelihoodGivenNoDiseaseClosed
        (And.intro E.posteriorProbabilityClosed E.bayesFactorClosed)))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse