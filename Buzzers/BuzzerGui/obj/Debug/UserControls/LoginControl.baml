   M S B A M L   `   `   `  ����D  @BuzzerGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:BuzzerGui.UserControlsBuzzerGui.UserControls  5      )    #BuzzerGui.UserControls.LoginControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:BuzzerGui.UserControls     5      .��5
      � 
�������  � ColumnDefinitions  5   
   �� 5      $��10 �6   �� 5      $��* �6   �� 5      $��70 �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��* �6   �� 5      $��2* �6   �� 5      $��* �6   �� 5      $��4* �6   .+�5   
   �� $��1��6   $��Sign In��5         SignInLabelStyle#���   5      $��Bottom=�5      �� 5!   
   $��1��6   $��1��5"      $��Email��5#      #���   5$      $��Bottom=�5%      �� 5&   
   $��2��6   $��1��5'        SignInTextBoxStyle#���  5)      ��5(      �� *Email+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5)      �� 5+   
   $��3��6   $��1��5,      $��Password��5-      #���   5.      $��Bottom=�5/      �� 50   
   $��4��6   $��1��51      #���  53      ��52      �� *
Password+$ TwoWay=�$ PropertyChanged=�53      �� 55   
   $��Log In��6   $��1��56      $��5��57        SignInButtonStyle#���  59      ��58      �� *LogInCommand+5;      �� 5<   
   $��New User��6   $��1��5=      $��7��5>      #���  5A      ��5?      �� *NewUserCommand+5C      5D      5E      