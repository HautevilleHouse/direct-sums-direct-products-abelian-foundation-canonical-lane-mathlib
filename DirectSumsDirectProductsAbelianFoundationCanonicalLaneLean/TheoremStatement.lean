import DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AdmittedObject where
  object : Type u
  abelianGroup : AddCommGroup object
  directSumDecomposition : Prop
  directProductRepresentation : Prop
  universalProperty : Prop
  conclusion : universalProperty

structure DirectSumsDirectProductsWitnessClosed (O : AdmittedObject) : Prop where
  decompositionClosed : O.directSumDecomposition
  representationClosed : O.directProductRepresentation

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse