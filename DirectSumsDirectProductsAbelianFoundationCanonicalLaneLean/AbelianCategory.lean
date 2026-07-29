import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean.Biproduct

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AbelianCategoryConstruction where
  biproduct : BiproductConstruction
  kernelExists : Prop
  cokernelExists : Prop
  kernelCokernelSequenceExact : Prop
  kernelExistsTerm : kernelExists
  cokernelExistsTerm : cokernelExists
  kernelCokernelSequenceExactTerm : kernelCokernelSequenceExact

def AbelianCategoryClosed (A : AbelianCategoryConstruction) : Prop :=
  A.kernelExists ∧ A.cokernelExists ∧ A.kernelCokernelSequenceExact

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse