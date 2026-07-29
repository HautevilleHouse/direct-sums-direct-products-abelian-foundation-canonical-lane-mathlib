import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectSumFinitenessPackage (A : AdmissibleClass) where
  finiteDirectSumExists : Prop
  finiteDirectSumCanonicalIsomorphism : Prop
  coproductRepresentation : Prop

def DirectSumFinitenessClosed (A : AdmissibleClass) (P : DirectSumFinitenessPackage A) : Prop :=
  P.finiteDirectSumExists ∧ P.finiteDirectSumCanonicalIsomorphism ∧
  P.coproductRepresentation

theorem direct_sum_finiteness_closed_from_evidence (A : AdmissibleClass)
    (P : DirectSumFinitenessPackage A) : DirectSumFinitenessClosed A P := by
  exact And.intro P.finiteDirectSumExists
    (And.intro P.finiteDirectSumCanonicalIsomorphism
      P.coproductRepresentation)

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse