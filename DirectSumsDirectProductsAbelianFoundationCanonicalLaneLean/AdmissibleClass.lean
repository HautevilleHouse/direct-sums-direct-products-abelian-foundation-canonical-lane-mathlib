import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  bridgeClosed : Prop
  gateClosed : Prop
  gateWitness : bridgeClosed ∨ gateClosed

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.bridgeClosed ∧ (A.bridgeClosed ∨ A.gateClosed)

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse
