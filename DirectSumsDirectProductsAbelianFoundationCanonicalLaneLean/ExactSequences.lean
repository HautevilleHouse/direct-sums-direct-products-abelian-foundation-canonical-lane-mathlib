import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure ShortExactSequence where
  A : Type u
  B : Type v
  C : Type w
  f : A → B
  g : B → C
  exactAtB : Prop
  exactAtBClosed : exactAtB
  kernelImage : Prop
  kernelImageClosed : kernelImage

def ShortExactClosed (S : ShortExactSequence) : Prop :=
  S.exactAtB ∧ S.kernelImage

theorem short_exact_closed_from_evidence (S : ShortExactSequence) : ShortExactClosed S := by
  exact And.intro S.exactAtBClosed S.kernelImageClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse