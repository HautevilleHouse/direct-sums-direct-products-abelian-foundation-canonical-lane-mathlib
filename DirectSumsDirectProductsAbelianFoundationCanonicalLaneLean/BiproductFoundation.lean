import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure BiproductPackage (Sum : DirectSumPackage) (Prod : DirectProductPackage) where
  biproductObject : Type u
  biproductIsSum : biproductObject = Sum.directSum
  biproductIsProduct : biproductObject = Prod.directProduct
  compatibilityMorphisms : Prop
  biproductClosed : Prop
  biproductClosedTerm : biproductClosed

structure BiproductEvidence (Sum : DirectSumPackage) (Prod : DirectProductPackage) (B : BiproductPackage Sum Prod) where
  compatibilityMorphismsClosed : B.compatibilityMorphisms
  biproductClosedClosed : B.biproductClosed

def BiproductClosed (Sum : DirectSumPackage) (Prod : DirectProductPackage) (B : BiproductPackage Sum Prod) : Prop :=
  B.compatibilityMorphisms ∧ B.biproductClosed

theorem biproduct_closed_from_evidence (Sum : DirectSumPackage) (Prod : DirectProductPackage) (B : BiproductPackage Sum Prod) (E : BiproductEvidence Sum Prod B) :
    BiproductClosed Sum Prod B := by
  exact And.intro E.compatibilityMorphismsClosed E.biproductClosedClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse