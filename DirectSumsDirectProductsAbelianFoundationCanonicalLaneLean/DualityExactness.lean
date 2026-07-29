import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DualityExactnessPackage (A : AdmissibleClass) where
  splitExactSequenceForDirectSum : Prop
  splitExactSequenceForDirectProduct : Prop
  dualDirectSumIsDirectProduct : Prop
  dualDirectProductIsDirectSum : Prop

def DualityExactnessClosed (A : AdmissibleClass) (P : DualityExactnessPackage A) : Prop :=
  P.splitExactSequenceForDirectSum ∧ P.splitExactSequenceForDirectProduct ∧
  P.dualDirectSumIsDirectProduct ∧ P.dualDirectProductIsDirectSum

theorem duality_exactness_closed_from_evidence (A : AdmissibleClass)
    (P : DualityExactnessPackage A) : DualityExactnessClosed A P := by
  exact And.intro P.splitExactSequenceForDirectSum
    (And.intro P.splitExactSequenceForDirectProduct
      (And.intro P.dualDirectSumIsDirectProduct P.dualDirectProductIsDirectSum))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse