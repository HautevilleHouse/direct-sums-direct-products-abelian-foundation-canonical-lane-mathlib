import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean.AbelianCategory

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure SnakeLemmaConstruction where
  abelian : AbelianCategoryConstruction
  exactCommutativeSquare : Prop
  snakeMapExists : Prop
  exactSequenceLong : Prop
  exactCommutativeSquareTerm : exactCommutativeSquare
  snakeMapExistsTerm : snakeMapExists
  exactSequenceLongTerm : exactSequenceLong

def SnakeLemmaClosed (S : SnakeLemmaConstruction) : Prop :=
  S.snakeMapExists ∧ S.exactSequenceLong

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse