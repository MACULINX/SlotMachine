   M S B A M L   `   `   `  ����X  TBucci.Marco.4i.WPFSlotMachine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Bucci.Marco._4i.WPFSlotMachineBucci.Marco._4i.WPFSlotMachine  5   	   /    )Bucci.Marco._4i.WPFSlotMachine.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:Bucci.Marco._4i.WPFSlotMachine     5   	     � Icon$A  ;/Bucci.Marco.4i.WPFSlotMachine;component/Media/piramidi.ico��5   	    � Title$ SlotMachine��5	   	   $	��720��6   $
��1280��6-    � WindowStartupLocation$ CenterScreen=�5
   	   ���#1c1c1c.��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2.33* �6   �� 5      $��2.33* �6   �� 5      $��2.33* �6   �� 5      $��1* �6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��2* �6   �� 5      $��2* �6   �� 5      $��2* �6   �� 5      $��1* �6   ��5    
   �� 5!       �� ImageSource$ /Media/piramidi.png��6    j� Stretch$ Uniform=�6;    j� TileMode$
 None=�6M    �� RelativeTransform 5"      V� 5#      .~�5$      �� 	 �� CenterY$	 1Q�6)   
 �� CenterX$
 -0.15Q�65    �� ScaleX$	 0.4Q�6E    �� ScaleY$	 0.4Q�6R   �� 5%       �� CenterX$ -0.15Q�6(    �� CenterY$ 1Q�68    �� AngleX$ 0Q�6D    �� AngleY$ 0Q�6O   �� 5&       �� CenterX$ -0.15Q�6*    �� CenterY$ 1Q�6:   T� 5'      5(      5*      .+�5.   
   � -   5         �Name$ Rules��5.      $��5��6   $��5��6/   $y�Visible=�6C    K� ZIndex$ 99��6X   ���#1c1c1c 5/      �� 50      �� 51      $��3* �6#   �� 52       55      �� 56      $��3* �6    �� 57      $��1* �6    .+�5:      �� $��25q�6    �� Padding$ 30q�6!   $��3q�6.   ���#a57c00���#293133 �� CornerRadius$ 20��6m   $��1��6   ._�5;      �� $��Center=�6   $��Center=�67   
�������$��14(�6g   $
��Bold"�6u    �� Padding$ 30q�6�   $����1 - Turni di Gioco:

 1.1 - L'utente ha la possibilità di decidere di tenere una o più lettere apparse per soli due turni di gioco.
 1.2 - Dopo aver tenuto le lettere, l'utente può scegliere di far girare nuovamente le rotelle o di fermarsi.

2 - Condizioni di Vittoria:

 2.1 - Se si forma una coppia di lettere, l'utente riceve una moneta.
 2.2 - In presenza di un tris di lettere uguali, vengono restituite un numero di monete pari
alla posizione della lettera nel'ordine alfabetico del tris (ad esempio, tre D corrispondono a 4 monete).
 2.3 - Se compaiono tre lettere consecutive (ad esempio, ABC o EFG), l'utente riceve 50 monete.
 2.4 - Nel caso in cui compaiano tre Z, si verifica il JACKPOT e vengono riceve 100 monetine.

4 - Limitazioni:

 4.1 - L'utente ha il diritto di tenere le lettere solo per due turni


Buon divertimento e buona fortuna!��5<      5=      �� 5?      -   5        $��Desidero procedere��5?      $��32(�62   $��Arial Black)�6@   $��1��6Y   $��1��6i   $��20q�6v   ���#a57c00
������� � 	Resources 5@       �� 
TargetType �� Property �� Value��%_   '��       �� 5A      " ��6   .�5B      ��  �@��CornerRadius$ 15��69   5C      5D      5E      5G      �� 5K   
   $��FARAONI FORTUNATI��6   $��3��6-   $��1��6A   $��64(�6Q   $��Center=�6_   $��Arial Black)�6|   $
��0,10q�6�   ���#a57c006�   �� 5O   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��1��6z   $��1��6�   $��2��6�   ._�5P      �� -   5         ��Name$ Rell1��5P      $��A��6'   $��Center=�60   $��Center=�6K   
�������$	��256(�6{   $
��Bold"�6�   5Q      �� 5R   
   -   5        $��5q�5R      $��3q�6   $��1��63   $��1��6C   $��2��6P   $��25q�6a    J� Opacity$ 0Q�6�   �� 5S   
   -   5         ��Name$ Lock1��5S   )   $��/Media/open.png��6   $��1��68   $��2��6H   $��Bottom=�6U   $��UniformToFill=�6p   $��22��6�   $��22��6�   �� 5U   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��2��6z   $��1��6�   $��2��6�   ._�5V      �� -   5        $ Rell2��5V      $��A��6'   $��Center=�60   $��Center=�6K   
�������$	��256(�6{   $
��Bold"�6�   5W      �� 5X   
   -   5        $��5q�5X      $��3q�6   $��2��62   $��1��6B   $��2��6O   $��25q�6`   $ 0Q�6�   �� 5Y   
   -   5        $ Lock2��5Y   )   $��/Media/open.png��6   $��2��68   $��2��6H   $��Bottom=�6U   $��UniformToFill=�6p   $��22��6�   $��22��6�   �� 5[   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��3��6z   $��1��6�   $��2��6�   ._�5\      �� -	   5        $ Rell3��5\      $��A��6(   $��Center=�61   $��Center=�6L   
�������$	��256(�6|   $
��Bold"�6�   5]      �� 5^   
   -
   5        $��5q�5^      $��3q�6   $��3��62   $��1��6B   $��2��6O   $��25q�6`   $ 0Q�6�   �� 5_   
   -   5        $ Lock3��5_   )   $��/Media/open.png��6   $��3��68   $��2��6H   $��Bottom=�6U   $��UniformToFill=�6p   $��22��6�   $��22��6�   �� 5c   
   -   5        $
��GIRA��5c      $��72(�6    $��Arial Black)�6.   $��2��6G   $��3��6W   $��20q�6d   ���#a57c00���#293133 5d      ��%_   '��       �� 5e      " ��6   .�5f      ��  �@��CornerRadius$ 15��65   5g      5h      5i      �� 5m   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��1��6z   $��4��6�   ._�5n      �� $��Prezzo Slot: 1��6   $��Center=�6.   $��Center=�6I   
�������$��16(�6y   $
��Bold"�6�   5o      �� 5q   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��2��6z   $��4��6�   ._�5r      �� -   5        $ LastWin��5r      $��Ultima Vincita: 0��6)   $��Center=�6B   $��Center=�6]   
�������$��16(�6�   $
��Bold"�6�   5s      �� 5u   
   $��25q�6   $ 5q�6   $��3q�6)   ���#a57c00���#293133$ 10��6h   $��3��6z   $��4��6�   ._�5v      �� -   5        $ Balance��5v      $��	Saldo: 10��6)   $��Center=�6:   $��Center=�6U   
�������$��16(�6�   $
��Bold"�6�   5w      5x      5y      