   M S B A M L   `   `   `  ����D  @BuzzerGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BuzzerGui.ViewsBuzzerGui.Views  5           BuzzerGui.Views.SignUpView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:BuzzerGui.Views     5      .��5
      � 
�������  � ColumnDefinitions  5   
   �� 5      $��80 �6   �� 5      $��* �6   �� 5      $��40 �6   �� 5      $��* �6   �� 5      $��40 �6   �� 5      $��* �6   �� 5      $��80 �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��30 �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5!   
   �� $��
First Name��6   $��1��5"      $��Bottom=�5#      �� 5$   
   $��1��5%      $��1��5&         SignInTextBoxStyle#��[  5'      ��5$      �� *	FirstName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5'      �� 5)   
   $��	Last Name��6   $��3��5*      $��Bottom=�5+      �� 5,   
   $��1��5-      $��3��5.      #��[  5/      ��5,      �� *
LastName+$ TwoWay=�$ PropertyChanged=�5/      �� 51   
   $��Email��6   $��2��52      $��1��53      $��Bottom=�54      �� 55   
   $��3��56      $��1��57      #��[  58      ��55      �� *Email+$ TwoWay=�$ PropertyChanged=�58      �� 5:   
   $��Password��6   $��2��5;      $��3��5<      $��Bottom=�5=      �� 5>   
   $��3��5?      $��3��5@      #��[  5A      ��5>      �� *
Password+$ TwoWay=�$ PropertyChanged=�5A      �� 5C   
   $��Birthday��6   $��4��5D      $��1��5E      $��Bottom=�5F      (  "System.Windows.Controls.DatePicker  5G   
   $��5��5H      $��1��5I         SelectedDate 5G      �� *
Birthday+$ TwoWay=�$ PropertyChanged=�5I      �� 5K   
   $��	User Type��6   $��6��5L      $��1��5M      $��Bottom=�5N      �� 5O   
   $��7��5Q      $��1��5R      $��30��5S      ��5O      �� *	UserTypes+ �� SelectedValue 5P      �� *
UserType+5S      �� 5U   
   $��Gender��6   $��8��5V      $��1��5W      $��Bottom=�5X      �� 5Y   
   $��9��5[      $��1��5\      $��30��5]      ��5Y      �� *	Genders+ 5Z      �� *Gender+5]      �� 5_   
   $��1��6   $��5��5`      $��6��5a      ��5b      �� *SelectProfilePictureCommand+.��5c      �� ��6   �� *ProfilePicture+5d      �� 5g   
   $��Sign Up��6   $��9��5i      $��5��5j      ��5h      �� *SignUpCommand+5j      5k      5l      