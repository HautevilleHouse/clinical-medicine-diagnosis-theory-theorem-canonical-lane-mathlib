import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiseaseProgressionModel where
  diseaseStates : Type u
  transitionRates : Type v
  stateOccupancyProbabilities : Prop
  sojournTimes : Prop
  absorbingStates : Prop

structure DiseaseProgressionModelEvidence (D : DiseaseProgressionModel) where
  stateOccupancyProbabilitiesClosed : D.stateOccupancyProbabilities
  sojournTimesClosed : D.sojournTimes
  absorbingStatesClosed : D.absorbingStates

def DiseaseProgressionModelClosed (D : DiseaseProgressionModel) : Prop :=
  D.stateOccupancyProbabilities ∧ D.sojournTimes ∧ D.absorbingStates

theorem disease_progression_model_closed_from_evidence (D : DiseaseProgressionModel) (E : DiseaseProgressionModelEvidence D) :
    DiseaseProgressionModelClosed D :=
  And.intro E.stateOccupancyProbabilitiesClosed (And.intro E.sojournTimesClosed E.absorbingStatesClosed)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse