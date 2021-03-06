(*
 * Copyright (c) 2016 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

type context = {
  translation_unit_context : CFrontend_config.translation_unit_context;
  current_method : Clang_ast_t.decl option;
  in_synchronized_block: bool;
  is_ck_translation_unit: bool;
  (** True if the translation unit contains an ObjC class impl that's a subclass
      of CKComponent or CKComponentController. *)
}

let empty translation_unit_context = {
  current_method = None;
  translation_unit_context;
  in_synchronized_block = false;
  is_ck_translation_unit = false;
}
