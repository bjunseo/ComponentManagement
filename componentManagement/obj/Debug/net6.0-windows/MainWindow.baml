   M S B A M L   `   `   `  ����N  JcomponentManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:componentManagementcomponentManagement  5   	   $    componentManagement.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:componentManagement     5   	   -   5          � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowState$ 	Maximized=�5
   	   .��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��5* �6   �� 5      $��5* �6   .+�5   
   �� $��0��6   $��3q�6"   
������� �� Orientation$ 
Horizontal=�6C   .+�5      �� -   5         ��Name$ btnAdd��5      $��10,0,0,0q�6%   $��25��67   $��50��6C   .��6c   add6h   �� 5      -   5        $ btnImage��5      $��10,0,0,0q�6'   $��25��69   $��50��6E   .��6g   Image6n   5      �� 5   
   $��1��6   $��3q�6"   
�������.+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ DataGrid��5      $��3q�5      $��5��5         AutoGenerateColumns$ False��5         CanUserAddRows$ False��5      $
��Auto��5      $
��True��5      $
��Auto=�5      $
��Auto=�5       "   VerticalScrollBarVisibility$
 Auto=�5"      $	   HorizontalScrollBarVisibility$
	 Auto=�5#      
���   ���5!      �� *	component+
   Columns
 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��5)         Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 5*      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5(      �� *Name+5*        5+      $
 Prod��5-      $	 120 5.       5,      �� *Prod+5.        5/      $
 Cost��51      $	 120 52       50      �� *Cost+52        53      $ Count��55      $	 120 56       54      �� *Count+56      4  .System.Windows.Controls.DataGridTemplateColumn  57      $ Image��6-      CellTemplate 58      �� 59      .R�5:   "   �� 
�������._�5;   &   �� $��32��5<   )   $��32��5=   )   ��5>   )   �� *	ImagePath+5?   #   5@      5B      5D      5E      �� 5G   
   $��2��6   $��3q�6"   
�������$ 
Horizontal=�6H   .+�5H      �� -   5         ��Name$ 	ImageTest��5H   #   $��3q�6   $
��Auto��66   $
��Auto��6D   6T   �� 5I      $
��Auto��6   $
��Auto��6'   .+�5J      �� -   5         ��Name$
 path��5J      �� 5K      -   5        $
 Name��5K      5L      5M      5O      5P      