import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure DiagnosisAdmittedObject where
  patientModel : Type u
  diagnosticCriteria : Prop
  clinicalEndpoint : Prop
  conclusion : diagnosticCriteria → clinicalEndpoint

def DiagnosisWitnessClosed (O : DiagnosisAdmittedObject) : Prop :=
  O.diagnosticCriteria → O.clinicalEndpoint

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse
