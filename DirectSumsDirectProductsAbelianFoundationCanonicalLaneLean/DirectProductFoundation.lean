import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectProductPackage where
  indexSet : Type u
  family : indexSet → Type v
  directProduct : Type w
  canonicalProjections : (i : indexSet) → directProduct → family i
  universalProperty : Prop
  directProductClosed : Prop
  directProductClosedTerm : directProductClosed

structure DirectProductEvidence (P : DirectProductPackage) where
  universalPropertyClosed : P.universalProperty
  directProductClosedClosed : P.directProductClosed

def DirectProductClosed (P : DirectProductPackage) : Prop :=
  P.universalProperty ∧ P.directProductClosed

theorem direct_product_closed_from_evidence (P : DirectProductPackage) (E : DirectProductEvidence P) :
    DirectProductClosed P := by
  exact And.intro E.universalPropertyClosed E.directProductClosedClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse