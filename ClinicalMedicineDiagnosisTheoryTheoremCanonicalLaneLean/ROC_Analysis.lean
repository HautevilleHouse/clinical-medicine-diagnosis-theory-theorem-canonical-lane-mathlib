import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean

structure ROCPackage where
  truePositiveRate : Prop
  falsePositiveRate : Prop
  areaUnderCurve : Prop
  optimalThreshold : Prop
  costFunction : Prop

structure ROCEvidence (R : ROCPackage) where
  truePositiveRateClosed : R.truePositiveRate
  falsePositiveRateClosed : R.falsePositiveRate
  areaUnderCurveClosed : R.areaUnderCurve
  optimalThresholdClosed : R.optimalThreshold
  costFunctionClosed : R.costFunction

def ROCClosed (R : ROCPackage) : Prop :=
  R.truePositiveRate ∧ R.falsePositiveRate ∧ R.areaUnderCurve ∧ R.optimalThreshold ∧ R.costFunction

theorem roc_closed_from_evidence (R : ROCPackage) (E : ROCEvidence R) : ROCClosed R := by
  exact And.intro E.truePositiveRateClosed
    (And.intro E.falsePositiveRateClosed
      (And.intro E.areaUnderCurveClosed
        (And.intro E.optimalThresholdClosed E.costFunctionClosed)))

end ClinicalMedicineDiagnosisTheoryTheoremCanonicalLaneLean
end HautevilleHouse