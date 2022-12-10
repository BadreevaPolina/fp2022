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

and expr =
  | Subject of value
  | Binop of functions * expr * expr
  | Unop of functions * expr
  | Binmod of modifiers * functions * expr * expr
  | Unmod of modifiers * functions * expr