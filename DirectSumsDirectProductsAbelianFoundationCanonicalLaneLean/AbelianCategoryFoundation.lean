import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AbelianCategoryPackage (Sum : DirectSumPackage) (Prod : DirectProductPackage) (Bip : BiproductPackage Sum Prod) where
  zeroObject : Type u
  kernelExists : Prop
  cokernelExists : Prop
  allMonomorphismsAreKernels : Prop
  allEpimorphismsAreCokernels : Prop
  abelianClosed : Prop
  abelianClosedTerm : abelianClosed

structure AbelianCategoryEvidence (Sum : DirectSumPackage) (Prod : DirectProductPackage) (Bip : BiproductPackage Sum Prod) (A : AbelianCategoryPackage Sum Prod Bip) where
  zeroObjectClosed : A.zeroObject = A.zeroObject
  kernelExistsClosed : A.kernelExists
  cokernelExistsClosed : A.cokernelExists
  allMonomorphismsAreKernelsClosed : A.allMonomorphismsAreKernels
  allEpimorphismsAreCokernelsClosed : A.allEpimorphismsAreCokernels
  abelianClosedClosed : A.abelianClosed

def AbelianCategoryClosed (Sum : DirectSumPackage) (Prod : DirectProductPackage) (Bip : BiproductPackage Sum Prod) (A : AbelianCategoryPackage Sum Prod Bip) : Prop :=
  A.kernelExists ∧ A.cokernelExists ∧ A.allMonomorphismsAreKernels ∧ A.allEpimorphismsAreCokernels ∧ A.abelianClosed

theorem abelian_category_closed_from_evidence (Sum : DirectSumPackage) (Prod : DirectProductPackage) (Bip : BiproductPackage Sum Prod) (A : AbelianCategoryPackage Sum Prod Bip) (E : AbelianCategoryEvidence Sum Prod Bip A) :
    AbelianCategoryClosed Sum Prod Bip A := by
  exact And.intro E.kernelExistsClosed
    (And.intro E.cokernelExistsClosed
      (And.intro E.allMonomorphismsAreKernelsClosed
        (And.intro E.allEpimorphismsAreCokernelsClosed E.abelianClosedClosed)))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse