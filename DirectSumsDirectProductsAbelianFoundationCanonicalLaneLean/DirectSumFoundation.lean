import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectSumPackage where
  indexSet : Type u
  family : indexSet → Type v
  directSum : Type w
  canonicalInclusions : (i : indexSet) → family i → directSum
  universalProperty : Prop
  directSumClosed : Prop
  directSumClosedTerm : directSumClosed

structure DirectSumEvidence (P : DirectSumPackage) where
  universalPropertyClosed : P.universalProperty
  directSumClosedClosed : P.directSumClosed

def DirectSumClosed (P : DirectSumPackage) : Prop :=
  P.universalProperty ∧ P.directSumClosed

theorem direct_sum_closed_from_evidence (P : DirectSumPackage) (E : DirectSumEvidence P) :
    DirectSumClosed P := by
  exact And.intro E.universalPropertyClosed E.directSumClosedClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse