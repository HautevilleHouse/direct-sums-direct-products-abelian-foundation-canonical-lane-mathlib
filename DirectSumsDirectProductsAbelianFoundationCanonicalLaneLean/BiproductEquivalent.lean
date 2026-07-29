import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure BiproductEquivalence (α : Type u) [AddCommGroup α] (I : Type v) where
  directSum : DirectSumPackage α I
  directProduct : DirectProductPackage α I
  isomorphism : AddCommGroupCat.of directSum.directSumGroup ≅ AddCommGroupCat.of directProduct.productGroup
  commutesWithInclusions : Prop
  commutesWithProjections : Prop
  commutesWithInclusionsClosed : commutesWithInclusions
  commutesWithProjectionsClosed : commutesWithProjections

structure BiproductEquivalenceEvidence (α : Type u) [AddCommGroup α] (I : Type v)
    (E : BiproductEquivalence α I) where
  commutesWithInclusionsClosed : E.commutesWithInclusions
  commutesWithProjectionsClosed : E.commutesWithProjections

def BiproductEquivalenceClosed (α : Type u) [AddCommGroup α] (I : Type v)
    (E : BiproductEquivalence α I) : Prop :=
  E.commutesWithInclusions ∧ E.commutesWithProjections

theorem biproduct_equivalence_closed_from_evidence (α : Type u) [AddCommGroup α] (I : Type v)
    (E : BiproductEquivalence α I) (Ev : BiproductEquivalenceEvidence α I E) :
    BiproductEquivalenceClosed α I E := by
  exact And.intro Ev.commutesWithInclusionsClosed Ev.commutesWithProjectionsClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse
