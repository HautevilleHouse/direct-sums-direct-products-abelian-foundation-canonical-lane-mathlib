import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectSumPackage (α : Type u) [AddCommGroup α] (I : Type v) where
  summand : I → AddCommGroup α
  directSumGroup : AddCommGroup (I →₀ α)
  inclusion : ∀ i : I, summand i → directSumGroup
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure DirectSumEvidence (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectSumPackage α I) where
  inclusionInjective : ∀ i : I, Function.Injective (P.inclusion i)
  directSumDecomposition : ∀ x : P.directSumGroup, x = ∑ i in x.support, P.inclusion i (x i)
  universalPropertyClosed : P.universalProperty

def DirectSumClosed (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectSumPackage α I) : Prop :=
  (∀ i : I, Function.Injective (P.inclusion i)) ∧
  (∀ x : P.directSumGroup, x = ∑ i in x.support, P.inclusion i (x i)) ∧
  P.universalProperty

theorem direct_sum_closed_from_evidence (α : Type u) [AddCommGroup α] (I : Type v)
    (P : DirectSumPackage α I) (E : DirectSumEvidence α I P) :
    DirectSumClosed α I P := by
  exact And.intro E.inclusionInjective
    (And.intro E.directSumDecomposition E.universalPropertyClosed)

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse
