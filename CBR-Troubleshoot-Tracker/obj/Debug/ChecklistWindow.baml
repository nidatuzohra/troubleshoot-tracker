   M S B A M L   `   `   `  ����S  OCBR-Troubleshoot-Tracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:CBR_Troubleshoot_TrackerCBR_Troubleshoot_Tracker  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   .    (CBR_Troubleshoot_Tracker.ChecklistWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:CBR_Troubleshoot_Tracker     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
Edit entry��5	   	   $	��525��6   $	��500��6)    � 	Resources 5
      2   ,CBR_Troubleshoot_Tracker.ResolutionConverter   ResolutionConverter  dataFromEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName��%�   &	        &	        5   
   6$   S� 5   
   $ 	GetValues��62   "  6I    5      M� 5      $ local:ResolutionTypes��6   5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      $��0.75* �6   �� 5      $��1.15* �6   �� 5      $��4* �6   �� 5      �� 5      .+�5   
   �� $��0��6   $��2��6   $��Troubleshoot Tracker��61   $��Center=�6P   $��Center=�5       $��20(�62   6B   �� 5!   
   $��1��6   $��0��6"    �� Orientation$ 
Horizontal=�62   $��Center=�6K   .+�5"      �� $��#��6   $��Center=�6    $��Center=�6D   $��5q�5#      $��10(�6   �� 5$      $��Center=�6+   $��Center=�6O   $��5q�5%      $��10(�6   $	��200��6-   ��5$      �� *id+5%   >   5&      �� 5'   
   -   5        $��Delete��5'   q    " MaterialDesignFlatAccentButton#��[ 6   $��1��6I   $��1��6V   $��5q�6f   $��Right=�5(      .��5)      �� $��images/bin.png��6   6.   5*      �� 5+   
   $��2��6   $��0��6"   .+�5,      �� $ 
Horizontal=�6   $��5q�62   .+�5-      �� $
��Date��6   6)   �� 5.      ��6   �� *QuestionDate+6:   5/      �� 50      $ 
Horizontal=�6   $��5q�62   .+�51      �� $��
Resolution��6   6/   �� 52      $	��100��53      $��0,0,10,0q�6'   $��10(�69   ��52      �� 	 �� Source#	 [ 
 �� SelectedIndex
 6X   �� *ResolutionNum+53   9   54      55      �� 56   
   $��2��6   $��1��6"   $ Vertical=�62   .+�57      �� $��Residency Status��6   $��15(�6/   $��Center=�6=   $��Center=�58      $��5q�62   6?   �� 59      $ 
Horizontal=�6   $��Center=�62   .+�5:      (� $
��30,0q�6   .��5;      	� $��Domestic��6"    	� 	GroupName$ 	Residency��65    d� 	IsChecked 6K   �� *	Residency+6m   5<      (� 5=      $
��30,0q�6   .��5>      	� $��International��6"   $ 	Residency��6:   $
 TrueY�6P   6c   5?      5@      5A      �� 5B   
   $��3��6   $��2��6"   .+�5C      �� $��Ladder up troubleshooting��6   $��15(�68   $��5q�6F   6S   (� 5D      $
��Left=�6   $��5q�61   ��6<   �� *ActualHeight+ �� ElementName$ Longest��.��5E      �� $9��3Have they gone through the website, video and FAQs?��6    6Y   �� *
IsInfoRead+6|   5F      (� 5G      -   5        $��Longest��5G   !   $��5q�6   .��5H      �� $S��MCheck for filters and pinned classes. These may cause classes to not show up.��6    6s   �� *IsFilterUnchecked+6�   5I      (� 5J      $
��Left=�6   $��5q�61   ��6<   �� *ActualHeight+$ Longest��.��5K      �� $&�� Have they completed all 4 steps?��6    6F   �� *AreStepsCompleted+6p   5L      (� 5M      $
��Left=�6   $��5q�61   ��6<   �� *ActualHeight+$ Longest��.��5N      �� $Q��KConsult with progress report to make sure they're taking the right courses.��6    6q   �� *IsPRChecked+6�   5O      (� 5P      $
��Left=�6   $��5q�61   ��6<   �� *ActualHeight+$ Longest��.��5Q      �� $@��:Transfer/fail courses - register first, then meet with SSA��6    6`   �� *IsSSAConsulted+6�   5R      (� 5S      $
��Left=�6   $��5q�61   ��6<   �� *ActualHeight+$ Longest��.��5T      �� $*��$Share screen or ask them to share it��6    6J   �� *IsScreenShared+6q   5U      5V      �� 5W   
   $��4��6   $��2��6"   $ 
Horizontal=�66   .+�5X      �� $��Question��6   $��15(�6'   $��Center=�65   6R   �� 5Y      $	��400��60   ��6   �� *
Question+6A   5Z      �� 5[   
   -   5        $
��Save��5[   =   $��5��6   $��0��6   $
��Save��6.   $��5q�6I   6i   �� 5\   
   -   5        $��Reset��5\   >   $��5��6   $��1��6   $��Reset��6.   $��5q�6K   6l   5]      5^      