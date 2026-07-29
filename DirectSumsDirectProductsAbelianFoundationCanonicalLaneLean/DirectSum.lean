import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure DirectSumConstruction where
  indexSet : Type u
  componentFamily : indexSet → Type v
  coproductType : Type w
  inclusionMaps : (i : indexSet) → componentFamily i → coproductType
  universalProperty : Prop
  inclusionMapsTerm : (i : indexSet) → inclusionMaps i = inclusionMaps i

def DirectSumClosed (D : DirectSumConstruction) : Prop := D.universalProperty

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse