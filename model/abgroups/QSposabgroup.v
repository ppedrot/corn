(* Copyright © 1998-2006
 * Henk Barendregt
 * Luís Cruz-Filipe
 * Herman Geuvers
 * Mariusz Giero
 * Rik van Ginneken
 * Dimitri Hendriks
 * Sébastien Hinderer
 * Bart Kirkels
 * Pierre Letouzey
 * Iris Loeb
 * Lionel Mamane
 * Milad Niqui
 * Russell O’Connor
 * Randy Pollack
 * Nickolay V. Shmyrev
 * Bas Spitters
 * Dan Synek
 * Freek Wiedijk
 * Jan Zwanenburg
 *
 * This work is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This work is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this work; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *)


Require Export CoRN.model.groups.QSposgroup.
Require Import CoRN.algebra.CAbGroups.

(**
** Example of an abelian group: $\langle$#&lang;#[Qpos],$(x,y) \mapsto xy/2$ #(x,y) &#x21A6; xy/2#$\rangle$#&rang;#
The positive rational numbers form with the operation  $(x,y) \mapsto xy/2$  #(x,y) &#x21A6; xy/2# an abelian group.
*)

Lemma Qpos_multdiv2_is_CAbGroup : is_CAbGroup Qpos_multdiv2_as_CGroup.
Proof.
 intros x y.
 simpl.
 QposRing.
Qed.

Definition Qpos_multdiv2_as_CAbGroup := Build_CAbGroup
 Qpos_multdiv2_as_CGroup Qpos_multdiv2_is_CAbGroup.
