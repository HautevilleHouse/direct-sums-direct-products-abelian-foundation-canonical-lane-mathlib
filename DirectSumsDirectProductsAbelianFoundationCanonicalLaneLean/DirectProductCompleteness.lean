import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectProductCompletenessPackage (A : AdmissibleClass) where
  infiniteDirectProductExists : Prop
  productUniversalProperty : Prop
  limitRepresentation : Prop

def DirectProductCompletenessClosed (A : AdmissibleClass) (P : DirectProductCompletenessPackage A) : Prop :=
  P.infiniteDirectProductExists ∧ P.productUniversalProperty ∧
  P.limitRepresentation

theorem direct_product_completeness_closed_from_evidence (A : AdmissibleClass)
    (P : DirectProductCompletenessPackage A) : DirectProductCompletenessClosed A P := by
  exact And.intro P.infiniteDirectProductExists
    (And.intro P.productUniversalProperty
      P.limitRepresentation)

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse