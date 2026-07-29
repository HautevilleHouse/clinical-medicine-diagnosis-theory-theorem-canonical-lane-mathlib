import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  administrationRoute : Type u
  absorptionPhase : Prop
  distributionPhase : Prop
  eliminationPhase : Prop
  concentrationTimeProfile : Type v
  aucCalculated : Prop
  clearanceDetermined : Prop
  volumeOfDistributionEstimated : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  absorptionPhaseClosed : P.absorptionPhase
  distributionPhaseClosed : P.distributionPhase
  eliminationPhaseClosed : P.eliminationPhase
  aucCalculatedClosed : P.aucCalculated
  clearanceDeterminedClosed : P.clearanceDetermined
  volumeOfDistributionEstimatedClosed : P.volumeOfDistributionEstimated

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.absorptionPhase ∧ P.distributionPhase ∧ P.eliminationPhase ∧
  P.aucCalculated ∧ P.clearanceDetermined ∧ P.volumeOfDistributionEstimated

theorem pharmacokinetic_model_closed_from_evidence
    (P : PharmacokineticModelPackage) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact And.intro E.absorptionPhaseClosed
    (And.intro E.distributionPhaseClosed
      (And.intro E.eliminationPhaseClosed
        (And.intro E.aucCalculatedClosed
          (And.intro E.clearanceDeterminedClosed E.volumeOfDistributionEstimatedClosed))))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse