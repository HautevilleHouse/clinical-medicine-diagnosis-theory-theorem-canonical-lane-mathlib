import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure PharmacokineticModel where
  absorptionRate : ℝ
  distributionVolume : ℝ
  eliminationRate : ℝ
  doseRegimen : Prop
  concentrationOverTime : Prop

def PharmacokineticEvidence (P : PharmacokineticModel) : Prop :=
  P.doseRegimen ∧ P.concentrationOverTime

def PharmacokineticClosed (P : PharmacokineticModel) : Prop :=
  P.doseRegimen ∧ P.concentrationOverTime

theorem pharmacokinetic_closed (P : PharmacokineticModel) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P :=
  E

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse