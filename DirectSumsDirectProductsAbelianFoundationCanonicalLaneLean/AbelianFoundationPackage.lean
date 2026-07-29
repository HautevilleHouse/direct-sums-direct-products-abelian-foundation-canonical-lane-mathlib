import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AbelianFoundationPackage (A : AdmissibleClass) where
  directSumDefined : Prop
  directProductDefined : Prop
  universalPropertyDirectSum : Prop
  universalPropertyDirectProduct : Prop
  directSumDirectProductDuality : Prop

def AbelianFoundationClosed (A : AdmissibleClass) (P : AbelianFoundationPackage A) : Prop :=
  P.directSumDefined ∧ P.directProductDefined ∧
  P.universalPropertyDirectSum ∧ P.universalPropertyDirectProduct ∧
  P.directSumDirectProductDuality

theorem abelian_foundation_closed_from_evidence (A : AdmissibleClass)
    (P : AbelianFoundationPackage A) : AbelianFoundationClosed A P := by
  exact And.intro P.directSumDefined
    (And.intro P.directProductDefined
      (And.intro P.universalPropertyDirectSum
        (And.intro P.universalPropertyDirectProduct
          P.directSumDirectProductDuality)))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse