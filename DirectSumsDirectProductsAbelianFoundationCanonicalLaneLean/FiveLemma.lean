import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean.AbelianCategory

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure FiveLemmaConstruction where
  abelian : AbelianCategoryConstruction
  commutativeDiagram : Prop
  verticalMaps : Prop
  exactRows : Prop
  commutativeDiagramTerm : commutativeDiagram
  verticalMapsTerm : verticalMaps
  exactRowsTerm : exactRows

def FiveLemmaClosed (F : FiveLemmaConstruction) : Prop :=
  F.commutativeDiagram ∧ F.verticalMaps ∧ F.exactRows

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse