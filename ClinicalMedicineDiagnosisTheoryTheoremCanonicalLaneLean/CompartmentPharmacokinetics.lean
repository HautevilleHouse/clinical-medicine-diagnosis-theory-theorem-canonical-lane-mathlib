import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  rateConstants : List (Nat × Nat × ℝ)  -- (from, to, rate)
  initialConditions : List ℝ
  volumeDistribution : ℝ -> ℝ
  eliminationRate : ℝ -> ℝ

structure PharmacokineticsPackage (M : CompartmentModel) where
  linearDynamics : Prop
  analyticSolution : M.rateConstants → ℝ → List ℝ
  drugConcentrationCurve : ℝ → ℝ
  steadyStateReached : Prop
  halfLifeCalculated : ℝ

def PharmacokineticsClosed (M : CompartmentModel) (P : PharmacokineticsPackage M) : Prop :=
  P.steadyStateReached ∧ P.halfLifeCalculated > 0

theorem pharmacokinetics_closed_from_steady_state (M : CompartmentModel)
    (P : PharmacokineticsPackage M) (h : P.steadyStateReached) (hpos : P.halfLifeCalculated > 0) :
    PharmacokineticsClosed M P := by
  exact And.intro h hpos

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse