JsOsaDAS1.001.00bplist00�Vscripto� / /   N O T E :   T h i s   i s   a n   e x a m p l e   o f   h o w   a n d   w h y   y o u   n e e d   S u b c l a s s i n g . 
 / /   T h e r e   a r e   s o m e  n o t   e x h a u s t i v e  d o c s   o n   s u b l c a s s i n g   i n   t h e   r e l e a s e   n o t e s   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / p r e r e l e a s e / m a c / r e l e a s e n o t e s / i n t e r a p p l i c a t i o n c o m m u n i c a t i o n / r n - j a v a s c r i p t f o r a u t o m a t i o n / i n d e x . h t m l   
 / /   A l s o   t h e   W W D C   v i d e o   o n   J S   A u t o m a t i o n 
 
 O b j C . i m p o r t ( " C o c o a " ) ; 
 
 / /   I f   n o   s u p e r c l a s s   i s   p r o v i d e d ,   N S O b j e c t   i s   s u b c l a s s e d . 
 O b j C . r e g i s t e r S u b c l a s s ( { 
 	 n a m e :   " A p p D e l e g a t e " , 
 	 m e t h o d s :   { 
 	 	 " b t n C l i c k H a n d l e r : " :   { 
 	 	 	 t y p e s :   [ " v o i d " ,   [ " i d " ] ] , 
 	 	 	 i m p l e m e n t a t i o n :   f u n c t i o n   ( s e n d e r )   { 
 	 	 	 	 t e x t F i e l d L a b e l . s t r i n g V a l u e   =   t e x t F i e l d . s t r i n g V a l u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 } ) ; 
 
 v a r   a p p D e l e g a t e   =   $ . A p p D e l e g a t e . a l l o c . i n i t ; 
 
 v a r   s t y l e M a s k   =   $ . N S T i t l e d W i n d o w M a s k   |   $ . N S C l o s a b l e W i n d o w M a s k   |   $ . N S M i n i a t u r i z a b l e W i n d o w M a s k ; 
 v a r   h e i g h t   =   1 2 0 ; 
 v a r   w i d t h   =   2 5 0 ; 
 v a r   w i n d o w   =   $ . N S W i n d o w . a l l o c . i n i t W i t h C o n t e n t R e c t S t y l e M a s k B a c k i n g D e f e r ( 
 	 $ . N S M a k e R e c t ( 0 ,   0 ,   w i d t h ,   h e i g h t ) , 
 	 s t y l e M a s k , 
 	 $ . N S B a c k i n g S t o r e B u f f e r e d , 
 	 f a l s e 
 ) ; 
 
 v a r   b t n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   ( h e i g h t   -   1 0 0 ) ,   2 0 0 ,   2 5 ) ) ; 
 b t n . t i t l e   =   " U p d a t e   L a b e l " ; 
 b t n . b e z e l S t y l e   =   $ . N S R o u n d e d B e z e l S t y l e ; 
 b t n . b u t t o n T y p e   =   $ . N S M o m e n t a r y L i g h t B u t t o n ; 
 / /   N O T E :   S e e   N S B u t t o n   d o c s   f o r   i n f o   o n   t a r g e t / a c t i o n 
 b t n . t a r g e t   =   a p p D e l e g a t e ; 
 b t n . a c t i o n   =   " b t n C l i c k H a n d l e r : " ; 
 b t n . k e y E q u i v a l e n t   =   " \ r " ;   / /   E n t e r   k e y 
 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( b t n ) ; 
 
 v a r   t e x t F i e l d L a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   ( h e i g h t   -   4 0 ) ,   2 0 0 ,   2 4 ) ) ; 
 t e x t F i e l d L a b e l . s t r i n g V a l u e   =   " C h a n g e   t h i s   t e x t : " ; 
 t e x t F i e l d L a b e l . d r a w s B a c k g r o u n d   =   f a l s e ; 
 t e x t F i e l d L a b e l . e d i t a b l e   =   f a l s e ; 
 t e x t F i e l d L a b e l . b e z e l e d   =   f a l s e ; 
 t e x t F i e l d L a b e l . s e l e c t a b l e   =   t r u e ; 
 
 v a r   t e x t F i e l d   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   ( h e i g h t   -   6 5 ) ,   2 0 0 ,   2 4 ) ) ; 
 t e x t F i e l d . s t r i n g V a l u e   =   " N e w   L a b e l   T e x t " ; 
 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( t e x t F i e l d ) ; 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( t e x t F i e l d L a b e l ) ; 
 
 w i n d o w . c e n t e r ; 
 w i n d o w . t i t l e   =   " H a n d l i n g   B u t t o n   C l i c k   E x a m p l e " ; 
 w i n d o w . m a k e K e y A n d O r d e r F r o n t ( w i n d o w ) ;                              Hjscr  ��ޭ