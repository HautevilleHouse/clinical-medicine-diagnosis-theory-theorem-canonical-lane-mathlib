import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ClinicalDiagnosisSynthesis where
  compartmentModelClosed : Prop
  pharmacokineticClosed : Prop
  diagnosticInferenceClosed : Prop
  survivalClosed : Prop
  diagnosticTestClosed : Prop
  allComponentsIntegrated : Prop
  compartmentModelClosedTerm : compartmentModelClosed
  pharmacokineticClosedTerm : pharmacokineticClosed
  diagnosticInferenceClosedTerm : diagnosticInferenceClosed
  survivalClosedTerm : survivalClosed
  diagnosticTestClosedTerm : diagnosticTestClosed
  allComponentsIntegratedTerm : allComponentsIntegrated

structure ClinicalDiagnosisSynthesisEvidence (C : ClinicalDiagnosisSynthesis) where
  compartmentModelClosedClosed : C.compartmentModelClosed
  pharmacokineticClosedClosed : C.pharmacokineticClosed
  diagnosticInferenceClosedClosed : C.diagnosticInferenceClosed
  survivalClosedClosed : C.survivalClosed
  diagnosticTestClosedClosed : C.diagnosticTestClosed
  allComponentsIntegratedClosed : C.allComponentsIntegrated

def ClinicalDiagnosisSynthesisClosed (C : ClinicalDiagnosisSynthesis) : Prop :=
  C.compartmentModelClosed ∧ C.pharmacokineticClosed ∧ C.diagnosticInferenceClosed ∧
  C.survivalClosed ∧ C.diagnosticTestClosed ∧ C.allComponentsIntegrated

theorem clinical_diagnosis_synthesis_closed_from_evidence (C : ClinicalDiagnosisSynthesis) (E : ClinicalDiagnosisSynthesisEvidence C) :
    ClinicalDiagnosisSynthesisClosed C := by
  exact And.intro E.compartmentModelClosedClosed
    (And.intro E.pharmacokineticClosedClosed
      (And.intro E.diagnosticInferenceClosedClosed
        (And.intro E.survivalClosedClosed
          (And.intro E.diagnosticTestClosedClosed E.allComponentsIntegratedClosed))))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
