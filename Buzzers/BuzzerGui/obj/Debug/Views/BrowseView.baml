   M S B A M L   `   `   `  ����D  @BuzzerGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BuzzerGui.ViewsBuzzerGui.Views  5           BuzzerGui.Views.BrowseView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:BuzzerGui.Views     5      .��5
      � ��5   
   �� 5        �� ImageSource$$  ../Beemages/BeeBackground2.jpg��6    � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $
��227* �6   �� 5      $	��110 �6   �� 5      $
��186* �6   �� 5      $
��183* �6   �� 5      $��60 �6    � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $
��181* �6   �� 5      $
��103* �6   �� 5      $	��86* �6   �� 5      $��20 �6   .+�5   
   �� $��1��5      $��1��5      $	��Top=�5       $��	0,0,0.2,0q�5!      ��5      �� *PotentialMatch.Images[0]+5!      �� 5"   
   $
��Auto=�5#      $��1��5$      $��2��5%      .��5&   
   �� 
�������$
��Wrap=�5(      ��5&      �� *PotentialMatch.Bio+ �� Mode$ OneWay=�5(      5)      �� 5*   
   $��Buzz Off��6   $��1��5+      $��3��5,      $
��Left=�5-      $	��140��5.         SignInButtonStyle#��[  50      ��5/      �� *BuzzOffCommand+50      �� 51   
   $��Buzz On��6   $��1��52      $��3��53      $	��140��54      $��Right=�55      #��[  57      ��56      �� *BuzzOnCommand+57      �� 58   
   $��../Beemages/BeeAd1.jpg��6   $��3��59      $��5��5:      $��3��5;      $��Right=�5<      5>      5?      