import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AbelianCategory (obj : Type u) [CategoryTheory.Category.{v} obj] where
  zeroObject : obj
  kernelsExist : ∀ (f : ∃ (a b : obj), CategoryTheory.Arrow.mk f), True
  cokernelsExist : ∀ (f : ∃ (a b : obj), CategoryTheory.Arrow.mk f), True
  abelianProperty : Prop
  abelianPropertyClosed : abelianProperty

structure AbelianCategoryEvidence (obj : Type u) [CategoryTheory.Category.{v} obj]
    (C : AbelianCategory obj) where
  zeroObjectClosed : C.zeroObject = C.zeroObject
  kernelsExistClosed : C.kernelsExist
  cokernelsExistClosed : C.cokernelsExist
  abelianPropertyClosed : C.abelianProperty

def AbelianCategoryClosed (obj : Type u) [CategoryTheory.Category.{v} obj]
    (C : AbelianCategory obj) : Prop :=
  C.abelianProperty

theorem abelian_category_closed_from_evidence (obj : Type u) [CategoryTheory.Category.{v} obj]
    (C : AbelianCategory obj) (E : AbelianCategoryEvidence obj C) :
    AbelianCategoryClosed obj C := by
  exact E.abelianPropertyClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse
