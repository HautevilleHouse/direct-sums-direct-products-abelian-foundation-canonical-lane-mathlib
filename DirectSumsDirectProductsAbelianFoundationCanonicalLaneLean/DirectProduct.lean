import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectProductConstruction where
  indexSet : Type u
  componentFamily : indexSet → Type v
  productType : Type w
  projectionMaps : (i : indexSet) → productType → componentFamily i
  universalProperty : Prop
  projectionMapsTerm : (i : indexSet) → projectionMaps i = projectionMaps i

def DirectProductClosed (D : DirectProductConstruction) : Prop := D.universalProperty

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse