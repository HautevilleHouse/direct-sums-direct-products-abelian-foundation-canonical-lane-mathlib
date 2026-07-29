import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectSumPackage where
  indexSet : Type u
  summands : indexSet → Type v
  abelianStructure : (i : indexSet) → Abelian (summands i)
  directSum : Type w
  injection : (i : indexSet) → summands i → directSum
  finitenessSupport : Prop
  directSumAbelian : Abelian directSum

structure DirectSumEvidence (D : DirectSumPackage) where
  abelianStructureClosed : ∀ i : D.indexSet, Abelian (D.summands i)
  injectionClosed : ∀ (i : D.indexSet) (x : D.summands i), D.injection i x = D.injection i x
  finitenessSupportClosed : D.finitenessSupport
  directSumAbelianClosed : Abelian D.directSum

def DirectSumClosed (D : DirectSumPackage) : Prop :=
  (∀ i : D.indexSet, Abelian (D.summands i)) ∧
  (∀ (i : D.indexSet) (x : D.summands i), D.injection i x = D.injection i x) ∧
  D.finitenessSupport ∧
  Abelian D.directSum

theorem direct_sum_closed_from_evidence (D : DirectSumPackage) (E : DirectSumEvidence D) : DirectSumClosed D := by
  exact And.intro E.abelianStructureClosed
    (And.intro E.injectionClosed
      (And.intro E.finitenessSupportClosed E.directSumAbelianClosed))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse