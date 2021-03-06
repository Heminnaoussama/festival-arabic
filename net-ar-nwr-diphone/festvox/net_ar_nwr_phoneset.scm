;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Phonset for net_ar
;;;

;;;  Feeel free to add new feature values, or new features to this
;;;  list to make it more appropriate to your language

;; This is where it'll fall over if you haven't defined a 
;; a phoneset yet, if you have, delete this, if you haven't
;; define one then delete this error message
;(error "You have not yet defined a phoneset for ar (and others things ?)\n            Define it in festvox/net_ar_nwr_phoneset.scm\n")

(defPhoneSet
  net_ar
  ;;;  Phone Features
  (;; vowel or consonant
   ;(clst + - 0)
   (vc + - 0)
   ;; vowel length: short long dipthong schwa
   (vlng s l d a 0)
   ;; vowel height: high mid low
   (vheight 1 2 3 0 -)
   ;; vowel frontness: front mid back
   (vfront 1 2 3 0 -)
   ;; lip rounding
   (vrnd + - 0)
   ;; consonant type: stop fricative affricative nasal liquid approximant
   (ctype s f a n l r 0)
   ;; place of articulation: labial alveolar palatal
   ;; labio-dental dental velar glottal
   (cplace l a p b d v g 0)
   ;; consonant voicing
   (cvox + - 0)
   ;(asp  + - 0)
   ;(nuk + - 0)
   )
  (
	;(    pau   -   -   0   0   0   0   0   0   -   -   -   )
   (    pau   -   0   0   0   0   0   0   0   )  

   ;; insert the phones here, see examples in 
   ;; festival/lib/*_phones.scm
  ;; Note these features were set by awb so they are wrong !!!
; copied from festival/lib/cmusphinx2_phones.scm 
; phone vc  vl  vh  vf  vr  ct  cp  cv
   ;(aa  +   l   3   3   -   0   0   0) ;; father
   (a  +   l   3   3   -   0   0   0) ;; father  # Fatha simple
   (ah  +   s   3   1   -   0   0   0) ;; fat
   (a:  +   s   3   1   -   0   0   0) ;; fat
   (ah:  +   s   3   1   -   0   0   0) ;; fat

   (i  +   s   1   1   -   0   0   0) ;; bit
   (ih  +   l   1   1   -   0   0   0) ;; beet

   (i:  +   s   1   1   -   0   0   0) ;; bit
   (ih:  +   l   1   1   -   0   0   0) ;; beet
   (uh  +   s   1   3   +   0   0   0) ;; full
   (uh:  +   s   1   3   +   0   0   0) ;; full

   (u  +   s   1   3   +   0   0   0) ;; full
   (u:  +   l   1   3   +   0   0   0) ;; fool
;; consonants
   (b   -   0   0   0   0   s   l   +)
   (t   -   0   0   0   0   s   a   -)
   (th  -   0   0   0   0   f   d   -)
   (j  -   0   0   0   0   a   p   +)
   (ha  -   0   0   0   0   f   g   -)
   (kh   -   0   0   0   0   s   v   -)
   (d  -   0   0   0   0   s   a   +)
   (dh  -   0   0   0   0   f   d   +)

   (r   -   0   0   0   0   r   a   +)
   (z   -   0   0   0   0   f   a   +)

   (s   -   0   0   0   0   f   a   -) ;; Seen
   (sh  -   0   0   0   0   f   p   -) ;; Sheen

   (sa   -   0   0   0   0   f   a   -) ;; SAD
   (da  -   0   0   0   0   s   a   +) ;; Dhad

   (ta   -   0   0   0   0   s   a   -)
   (zh   -   0   0   0   0   f   a   +)

   (E	+   s   2   1   -   0   0   0) ;; get
   (g   -   0   0   0   0   s   v   +)

   (f   -   0   0   0   0   f   b   -)
   (q   -   0   0   0   0   s   v   -)

   (k   -   0   0   0   0   s   v   -)
   (l   -   0   0   0   0   l   a   +)
   (m   -   0   0   0   0   n   l   +)
   (n   -   0   0   0   0   n   a   +)

   (h  -   0   0   0   0   f   g   -) ;; Heh 

   (w   -   0   0   0   0   r   l   +)
   (y   -   0   0   0   0   r   p   +)

   (p   -   0   0   0   0   s   l   -)
   (v   -   0   0   0   0   f   b   +)
   (sil -   0   0   0   0   0   0   -) ; added  
  )
)

(PhoneSet.silences '(pau))

(define (net_ar_nwr::select_phoneset)
  "(net_ar_nwr::select_phoneset)
Set up phone set for net_ar."
  (Parameter.set 'PhoneSet 'net_ar)
  (PhoneSet.select 'net_ar)
)

(define (net_ar_nwr::reset_phoneset)
  "(net_ar_nwr::reset_phoneset)
Reset phone set for net_ar."
  t
)

(provide 'net_ar_nwr_phoneset)
