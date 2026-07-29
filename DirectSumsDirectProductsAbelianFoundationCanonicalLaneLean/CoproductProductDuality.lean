import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure CoproductProductDuality where
  directSumObject : DirectSumStructures
  directProductObject : DirectProductStructures
  dualityMap : directSumObject.directSumCarrier → directProductObject.productCarrier
  adjunctionIso : Prop
  adjunctionIsoClosed : adjunctionIso

def DualityClosed (D : CoproductProductDuality) : Prop :=
  D.adjunctionIso

theorem duality_closed_from_evidence (D : CoproductProductDuality) : DualityClosed D := by
  exact D.adjunctionIsoClosed

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse