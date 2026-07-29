import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectProductPackage (α : Type u) [AddCommGroup α] (I : Type v) where
  component : I → AddCommGroup α
  productGroup : AddCommGroup (I → α)
  projection : ∀ i : I, productGroup → component i
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure DirectProductEvidence (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectProductPackage α I) where
  projectionSurjective : ∀ i : I, Function.Surjective (P.projection i)
  productStructure : ∀ (f : ∀ i, P.component i), ∃! x : P.productGroup, ∀ i, P.projection i x = f i
  universalPropertyClosed : P.universalProperty

def DirectProductClosed (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectProductPackage α I) : Prop :=
  (∀ i : I, Function.Surjective (P.projection i)) ∧
  (∀ (f : ∀ i, P.component i), ∃! x : P.productGroup, ∀ i, P.projection i x = f i) ∧
  P.universalProperty

theorem direct_product_closed_from_evidence (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectProductPackage α I) (E : DirectProductEvidence α I P) :
    DirectProductClosed α I P := by
  exact And.intro E.projectionSurjective
    (And.intro E.productStructure E.universalPropertyClosed)

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse
