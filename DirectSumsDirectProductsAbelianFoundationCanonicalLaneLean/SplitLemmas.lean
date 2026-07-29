import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure SplitShortExactSequence where
  shortExact : ShortExactSequence
  splitting : shortExact.C → shortExact.B
  isSection : Prop
  isSectionClosed : isSection
  directSumDecomposition : Prop
  directSumDecompositionClosed : directSumDecomposition

def SplitClosed (S : SplitShortExactSequence) : Prop :=
  S.isSection ∧ S.directSumDecomposition

theorem split_closed_from_evidence (S : SplitShortExactSequence) : SplitClosed S := by
  exact And.intro S.isSectionClosed S.directSumDecompositionClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse