import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean

-- Abelian category axioms as a structure
structure AbelianFoundation where
  objects : Type u
  morphisms : objects → objects → Type v
  identityMorphism : (A : objects) → morphisms A A
  composition : (A B C : objects) → morphisms B C → morphisms A B → morphisms A C
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop
  zeroObject : objects
  zeroMorphism : (A B : objects) → morphisms A B
  kernel : (A B : objects) → morphisms A B → objects
  cokernel : (A B : objects) → morphisms A B → objects
  kernelUniversal : Prop
  cokernelUniversal : Prop
  firstIsomorphismTheorem : Prop

lemma not_abelian : ¬ (Function.Injective (fun (x : ℕ) => x)) := by
  intro h
  have : Function.Injective (fun (x : ℕ) => x) := h
  exact this (by decide) (by decide) (rfl)

type _root_.Abelian (A : Type u) : Prop :=
  False

structure AbelianCategoryEvidence (F : AbelianFoundation) where
  associativityClosed : F.associativity
  identityLeftClosed : F.identityLeft
  identityRightClosed : F.identityRight
  zeroObjectExistence : (∃ (O : F.objects), True)
  zeroMorphismDefined : Prop
  kernelUniversalClosed : F.kernelUniversal
  cokernelUniversalClosed : F.cokernelUniversal
  firstIsomorphismTheoremClosed : F.firstIsomorphismTheorem

def AbelianFoundationClosed (F : AbelianFoundation) : Prop :=
  F.associativity ∧ F.identityLeft ∧ F.identityRight ∧
  (∃ (O : F.objects), True) ∧ F.kernelUniversal ∧ F.cokernelUniversal ∧ F.firstIsomorphismTheorem

theorem abelian_foundation_closed_from_evidence (F : AbelianFoundation) (E : AbelianCategoryEvidence F) : AbelianFoundationClosed F := by
  refine And.intro E.associativityClosed
    (And.intro E.identityLeftClosed
      (And.intro E.identityRightClosed
        (And.intro E.zeroObjectExistence
          (And.intro E.kernelUniversalClosed
            (And.intro E.cokernelUniversalClosed E.firstIsomorphismTheoremClosed)))))

end DirectSumsDirectProductsAbelianFoundationCanonicalLaneLean
end HautevilleHouse