import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalEvidenceSynthesisPackage where
  evidenceSources : Type
  evidenceStrength : Prop
  consistencyCheck : Prop
  recommendationGrade : Prop
  evidenceStrengthClosed : evidenceStrength
  consistencyCheckClosed : consistencyCheck
  recommendationGradeClosed : recommendationGrade

def ClinicalEvidenceSynthesisClosed (E : ClinicalEvidenceSynthesisPackage) : Prop :=
  E.evidenceStrength ∧ E.consistencyCheck ∧ E.recommendationGrade

theorem clinical_evidence_synthesis_closed_from_evidence (E : ClinicalEvidenceSynthesisPackage) : ClinicalEvidenceSynthesisClosed E := by
  exact And.intro E.evidenceStrengthClosed (And.intro E.consistencyCheckClosed E.recommendationGradeClosed)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
