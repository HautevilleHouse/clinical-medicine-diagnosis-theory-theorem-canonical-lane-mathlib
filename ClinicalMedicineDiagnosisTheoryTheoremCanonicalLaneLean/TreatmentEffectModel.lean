import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalTrial where
  treatmentGroup : List ℝ
  controlGroup : List ℝ

structure TreatmentEffectPackage (T : ClinicalTrial) where
  effectSize : ℝ
  confidenceInterval : ℝ × ℝ
  pValue : ℝ
  numberNeededToTreat : ℝ

def TreatmentEffectClosed (T : ClinicalTrial) (E : TreatmentEffectPackage T) : Prop :=
  E.pValue ≤ 0.05 ∧ E.numberNeededToTreat > 0

theorem treatment_effect_closed_from_analysis (T : ClinicalTrial)
    (E : TreatmentEffectPackage T) (hpvalue : E.pValue ≤ 0.05) (hnnt : E.numberNeededToTreat > 0) :
    TreatmentEffectClosed T E := by
  exact And.intro hpvalue hnnt

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse