   M S B A M L   `   `   `  ����D  @BuzzerGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BuzzerGui.ViewsBuzzerGui.Views  5      !    BuzzerGui.Views.DetailsView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:BuzzerGui.Views     5      .��5
      � 
�������  � ColumnDefinitions  5   
   �� 5      $��60 �6   �� 5      $
��114* �6   �� 5      $
��114* �6   �� 5      $	��30* �6   �� 5      $
��195* �6   �� 5      $	��30* �6   �� 5      $
��203* �6   �� 5      $��60 �6    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��60 �6   .+�5   
   �� $��Edit nickname:��6   $��1��5       $��4��5!      $��Bottom=�5"      �� 5#   
   $��2��5$      $��4��5%      $	��Top=�5&         SignInTextBoxStyle#��[  5'      ��5#      �� *User.Nickname+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5'      �� 5)   
   $��	Edit bio:��6   $��3��5*      $��4��5+      $��Bottom=�5,      �� 5-   
   $��4��5.      $��4��5/      $��2��50      $ �� HorizontalScrollBarVisibility$ Disabled=�51      " �� VerticalScrollBarVisibility$
 Auto=�52       �� TextWrapping$
 Wrap=�53       �� AcceptsReturn . ��5-      �� *
User.Bio+$ TwoWay=�$ PropertyChanged=�54      �� 56   
   $��Edit profile picture��6   $��1��57      $��2��58      ��59      �� *ChangeProfilePictureCommand+�� 5;   
   $��Interested in:��6   $��3��5<      $��1��5=      $��Bottom=�5>      �� 5?   
   $��Females��6   $��1��5A      $��4��5B       d� 	IsChecked 5@      �� *$"User.Preferences.AttracitonFemales+5B      �� 5C   
   $��Males��6   $��2��5E      $��4��5F       5D      �� *" User.Preferences.AttractionMales+5F      �� 5H   
   $��Save changes��6   $��1��5J      $��5��5K      $��60��5L      $	��110��5M      $
��Left=�5N      ��5I      �� *SaveChangesCommand+5N      �� 5O   
   $��Cancel changes��6   $��2��5Q      $��5��5R      $��60��5S      $	��110��5T      $
��Left=�5U      ��5P      �� *CancelChangesCommand+5U      �� 5V   
   $��../Beemages/BeeAd3.jpg��6   $��6��5W      $��0��5X      $��7��5Y      $��2��5Z      $��Right=�5[      5\      5]      