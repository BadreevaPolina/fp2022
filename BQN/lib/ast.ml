type id = string

type value =
  | Numbers of float
  | Characters of char

type functions =
  | Plus (** + *)
  | Minus (** - *)
  | Times (** × *)
  | Divide (** ÷ *)
  | Power (** ⋆ *)
  | Root (** √ *)
  | Logarithm (** ⋆⁼ *)

type modifiers =
  | Swap (** ˜ *)
  | Undo (** ⁼ *)
  | Constant (** ˙ *)
  | Atop (** ∘ *)

type combinators_bin =
  | Less_then (** < *)
  | Greater_than (** > *)
  | Not_equals (** ≠ *)
  | Equals (** = *)
  | Less_than_or_equal_to (** ≤ *)
  | Greater_than_or_equal_to (** ≥ *)
  | Match (** ≡ *)
  | Not_match (** ≢ *)

type combinators_un =
  | Abs_value (** | *)
  | Length (** ≠ *)
  | Rank (** = *)
  | Depth (** ≡ *)

type variables =
  | Define_var (** ← *)
  | Change_var (** ↩ *)

type modify_list =
  | Under (** ⌾ *)
  | Pick (** ⊑ *)
  | Take (** ↑ *)
  | Drop (** ↓ *)
  | Rotate (** ⌽ *)

type identity_functions =
  | Identity_left (** ⊣ *)
  | Identity_right (** ⊢ *)

and expr =
  | Subject of value
  | Binop of functions * expr * expr
  | Unop of functions * expr
  | Binmod of modifiers * functions * expr * expr
  | Unmod of modifiers * functions * expr
  | Bincomb of combinators_bin * expr * expr
  | Uncomb of combinators_un * expr
  | Var of variables * expr * expr
  | Modiflist of modify_list * expr (* change *)
  | Ident of identity_functions * expr * expr
