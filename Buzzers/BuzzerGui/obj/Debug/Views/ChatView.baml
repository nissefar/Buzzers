   M S B A M L   `   `   `  ����D  @BuzzerGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BuzzerGui.ViewsBuzzerGui.Views  5      K*clr-namespace:BuzzerGui.Utility.ConvertersBuzzerGui.Utility.Converters  5          BuzzerGui.Views.ChatView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:BuzzerGui.Views     5      @	converter*clr-namespace:BuzzerGui.Utility.Converters     5        � 	Resources  5      H   BBuzzerGui.Utility.Converters.MessageToHorizontalAlignmentConverter   	converter��%   &	          5   
   6:   5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��25 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��25 �6   .+�5   
   �� $��0��6   $��0��5      ��5      �� *ChatPartner.Images[0]+� 5   
   $��0��6   $��1��5       5       �� 5!      $��25 �6    �� 5"      $��25 �6    �� 5#      $��25 �6    �� 5$      $��25 �6    .+�5&      �� $��0��6   $��Center=�5(      
���������5'      �� *ChatPartner.Nickname+5)      �� 5*      $��1��6   
�������$��Center=�5-      ��5,      �� *ChatPartner.Gender+5-      5.      �� 5/   
   $��1��6   $��0��50      $��2��51      
�������.��53      �� .+�54      �� -   5         ��Name$ ChatControl��54      ��55      �� *ChatMessages+��57      �� 59      .R�5:      � $��10q�6#    5;   "   �� 5<   &   $��* �67    5>   "   �� 5?   &   $��* �64   .+�5A   "   �� $
��Wrap=�6,   $	��250��5B   ,   
���������5C   ,   �� *	Message+ �� Mode$ OneTime=���5E   &   `� 5F   *    `� 	Converter# [  67   .1�5G   .   ��  �� Path$ Sender�66   �� 5H   .   $ DataContext.UserLoggedIn�66    �� RelativeSource 5I   6   ��  �� Mode$ FindAncestor=�	 �� AncestorType"	 ��5J   +   5L   #   5M      5N      5P      5Q      5R      �� 5S   
   $��1��6   $��2��5T      
 �� TextWrapping$

 Wrap=�5V      ��5U      �� *	NewText+$ TwoWay=�5V      �� 5W   
   $��1��6   $��3��5X      $
��Send��5Y      ��5Z      �� *SendMessageCommand+�� 5[   
   $��../Beemages/BeeAd8.jpg��6   $��3��5\      $��0��5]      $��4��5^      $��Right=�5_      $
��Fill=�5`      5a      5b      