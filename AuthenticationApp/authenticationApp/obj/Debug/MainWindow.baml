   M S B A M L   `   `   `  ����L  HauthenticationApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:authenticationAppauthenticationApp  5   	   "    authenticationApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:authenticationApp     5   	     � Title$  IntervalAuth��5   	   $	��350��6   $��228.728��6+   .��5	      � $��0,0,15,3q�6    J� RenderTransformOrigin$ 1.147,0.513&�6    � ColumnDefinitions 5
   
   �� 5      $	��95* �6   �� 5      $	��95* �6   �� 5      $��4* �6   .+�5   
   �� -   5         ��Name$ userNameTxtBox��5      $
��Left=�6*   $��22��6E   $��	34,98,0,0q�6Q    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x   $	��114��6�   $��2��6�   �� 5   
   -   5        $ passwordTxtBox��5      $
��Left=�6*   $��19��6E   $��
34,156,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��114��6�   $��2��6�   �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��22��6B   $��	34,76,0,0q�6N   $
��Wrap=�6a   $��UserName��6u   $	��Top=�6�   $��96��6�   $��2��6�   $��Corbel)�6�   �� 5   
   -   5        $ textBlock_Copy��5      $
��Left=�6,   $��22��6G   $��
34,134,0,0q�6S   $
��Wrap=�6g   $��Password��6{   $	��Top=�6�   $��96��6�   $��2��6�   $��Corbel)�6�   �� 5   
   -   5         ��Name$ EnterBtn��5      $��Sign In��6#   $
��Left=�65   $��
34,201,0,0q�6P   $	��Top=�6d   $��75��6|   $��20��6�   $ -1.141,0.425&�6�   $��2��6�   �� 5   
   -   5        $ MessageTxtBox��5      $
��Left=�6)   $��42��6D   $��
34,251,0,0q�6P   $
 Wrap=�6d   $	��Top=�6x   $	��158��6�   $��2��6�   
�������$��10(�6�   $��Corbel)�6�   �� 5   
   $
��Left=�6   $��	30,26,0,0q�6/   $
��Wrap=�6B   $��Interval��6V   $	��Top=�6f   $��Corbel)�6~   $��36(�6�   $��
ExtraBlack"�6�   $��2��6�   $	��162��6�   5      5      