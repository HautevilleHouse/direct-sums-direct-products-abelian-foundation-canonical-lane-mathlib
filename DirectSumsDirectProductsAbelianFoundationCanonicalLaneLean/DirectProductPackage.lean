import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectProductPackage where
  indexSet : Type u
  factors : indexSet → Type v
  abelianStructure : (i : indexSet) → Abelian (factors i)
  directProduct : Type w
  projection : (i : indexSet) → directProduct → factors i
  universalProperty : Prop
  directProductAbelian : Abelian directProduct

structure DirectProductEvidence (P : DirectProductPackage) where
  abelianStructureClosed : ∀ i : P.indexSet, Abelian (P.factors i)
  projectionClosed : ∀ (i : P.indexSet) (p : P.directProduct), P.projection i p = P.projection i p
  universalPropertyClosed : P.universalProperty
  directProductAbelianClosed : Abelian P.directProduct

def DirectProductClosed (P : DirectProductPackage) : Prop :=
  (∀ i : P.indexSet, Abelian (P.factors i)) ∧
  (∀ (i : P.indexSet) (p : P.directProduct), P.projection i p = P.projection i p) ∧
  P.universalProperty ∧
  Abelian P.directProduct

theorem direct_product_closed_from_evidence (P : DirectProductPackage) (E : DirectProductEvidence P) : DirectProductClosed P := by
  exact And.intro E.abelianStructureClosed
    (And.intro E.projectionClosed
      (And.intro E.universalPropertyClosed E.directProductAbelianClosed))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse