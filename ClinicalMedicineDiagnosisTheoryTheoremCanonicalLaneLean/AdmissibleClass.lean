import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure AdmissibleDiagnosisClass where
  patientObject : DiagnosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleDiagnosisClass) : Prop :=
  DiagnosisWitnessClosed A.patientObject ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
