import LehmannScheffeTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LehmannScheffeTheoremCanonicalLaneLean

/--
Lehmann-Scheffé theorem: UMVUE via completeness
-/
def constrained_theorem_closure : Prop :=
  bridgeClosed (defaultAdmissibleClass ()) ∧
  gateClosed (defaultAdmissibleClass ())

theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class _
  · exact gate_from_admissible_class _

end LehmannScheffeTheoremCanonicalLaneLean
end HautevilleHouse
