type id = string

type value =
  | Numbers of float
  | Characters of char
  | List of string

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

type list_modify =
  | Under (** ⌾ *)
  | Pick (** ⊑ *)
  | Take (** ↑ *)
  | Drop (** ↓ *)
  | Rotate (** ⌽ *)

type identity_functions =
  | Identity_left (** ⊣ *)
  | Identity_right (** ⊢ *)

type list_notation =
  | Range (** ↕ *)
  | Double_quote (** "" *)
  | Left_angle (** ⟨ *)
  | Right_angle (** ⟩ *)
  | Comma_separator (** , *)
  | Rhomb_separator (** ⋄ *)
  | Newline_separator (** newline *)
  | Comment (** # *)
  | Ligature (** ‿ *)

type list_functions =
  | Enlist (** ⋈ *)
  | Concatenation (** ∾ *)
  | Rotate_list (** ⌽ *)

type list_modificators =
  | Each (** ¨ *)
  | Fold (** ´ *)

and expr =
  | Subject of value
  | Binop of functions * expr * expr
  | Unop of functions * expr
  | Binmod of modifiers * functions * expr * expr
  | Unmod of modifiers * functions * expr
  | Bincomb of combinators_bin * expr * expr
  | Uncomb of combinators_un * expr
  | Var of variables * expr * expr
  | Modiflist of list_modify * expr
  | Ident of identity_functions * expr * expr
  | Notatelist of list_notation * expr
  | Binnotlist of list_notation * expr * expr
  | Listfunc of list_functions * list_notation * expr
  | Binlistfunc of list_functions * list_notation * expr * expr
  | Listmod of list_modificators * list_functions * list_notation * expr
  | Binlistmod of list_modificators * list_functions * list_notation * expr * expr
  | Listmodnotfunc of list_modificators * functions * list_notation * expr
