   M S B A M L   `   `   `  ����S  OCBR-Troubleshoot-Tracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:CBR_Troubleshoot_TrackerCBR_Troubleshoot_Tracker  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   )    #CBR_Troubleshoot_Tracker.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:CBR_Troubleshoot_Tracker     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   $��15(�5      $��Century Gothic)�6(     � Icon$  images/support.png��6D    � Title$ Troubleshoot Tracker��5	   	   $	��475��6&   $	��650��63    � 	Resources 5
      2   ,CBR_Troubleshoot_Tracker.ResolutionConverter   ResolutionConverter  dataFromEnum S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName��%�   &	        &	        5   
   6$   S� 5   
   $ 	GetValues��62   "  6I    5      M� 5      $ local:ResolutionTypes��6   5      5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      $��4* �6   �� 5      .+�5   
   �� $��0��6   $��Virtual Support��6   $��Center=�67   $��Center=�6[   $��25(�5      6    �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   .+�5      �� $��Resolution Filter��6   $	��5,0q�60   6?   �� 5      $	��100��5      $��0,0,10,0q�6'   $��10(�69   ��5      �� 	 �� Source#	 [ 
 �� SelectedItem
 6U   �� *SelectedFilter+5   9   �� 5      $��Search��6   $	��5,0q�6%   64   �� 5       $	��200��6   $��0,0,10,0q�6%   69   �� 5!      $	��Asc��6   $��10(�6"   $	��5,0q�60   $��Center=�6=   6a   d� 5"      -   5        $��Sorting��5#       ) %MaterialDesignSwitchLightToggleButton#��[ 5"       d� 	IsChecked 6Z   �� *IsDescending+5#   B   �� 5$      $
��Desc��6   $��10(�6#   $	��5,0q�61   $��Center=�6>   6b   5%      &   System.Windows.Controls.DataGrid  5&   
   $��2��6      AutoGenerateColumns .  $��5q�6<   $��12(�6p      MaterialDesignOutlinedButton   ColumnHeaderStyle# [ 5'      ��5&   G   �� *StudentQuestions+
 5'   U   �� *SelectedEntry+   Columns 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.5* 6d      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *QuestionDate+ �� StringFormat$ d��6q     5*      $ Question��6%   $ * 6T    .  67   �� *
Question+6^     5+      $ 
Resolution��6%   $
 0.5* 5,   %    .  5+   9   �� *ResolutionNum+ �� 	Converter# [  5,   2   5.      �� 5/   
   $��3��6   $ 
Horizontal=�6"   $��Right=�6;   .+�50      �� -   5        $	��Add��50      $��New Checklist��6    $��15q�68   6X   �� 51      -   5        $
��Edit��51      $��Edit Checklist��6!   $��15q�6:   6[   52      53      54      