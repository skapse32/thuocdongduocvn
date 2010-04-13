<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

CREDITS:

Thanks to Omar Ramos who released the original patch "SubCats" to bring subcategories into Joomla 1.5
Here is the previous ChangeLog:


1. Copyright and disclaimer
---------------------------
This application is opensource software released under the GPL.  Please
see source code and the Joomla LICENSE file


2. Changelog
------------
This is a non-exhaustive (but still near complete) changelog for
The Joomla Subcategories Patches. Many thanks to all people who've contributed bug reports and
code fixes.

SubCats Patches 1.5.11.4
Version: 1.5.11.4
Copyright (C) 2008-09 Omar Ramos, Imperial Valley College. All rights reserved.
License GNU/GPL, see LICENSE.php

Legend:

# -> Bug Fix
+ -> Addition
! -> Change
- -> Removed
! -> Note

1.5.11.4 2009-06-10 / Omar Ramos
+ Made modifications to bring code base more in line with Joomla 1.5.11 (very minimal)

1.5.10.4 2009-06-10 / Omar Ramos
+ Made modifications to bring code base more in line with Joomla 1.5.10 (about 6-7 files affected, fairly minimal)

1.5.9.4 2009-03-29 / Omar Ramos
+ Added subcategories support for backend com_content Category filter
+ Added subcategories support for backend com_frontpage Category filter
+ Added MasterAM's isset variable checks for the sectionid (should help prevent errors when starting from a blank Joomla install)
# Fixed query for the subcategory list type (missing section value, which caused errors elsewhere)

1.5.9.3 2009-03-25 / Omar Ramos
+ Added frontend subcategory display when editing an article
# Fixed warning errors in backend (thanks to MasterAM's supplied fixes!)

1.5.9.2 2009-03-19 / Omar Ramos
+ Added subcategory list capability for JHTML
! Changed com_banners to display subcategory list when creating a category menu item
! Changed com_contact to display subcategory list when creating a category menu item
! Changed com_newsfeeds to display subcategory list when creating a category menu item
! Changed com_weblinks to display subcategory list when creating a category menu item
! Changed com_banners to display subcategory list when creating a new banner
! Changed com_contact to display subcategory list when creating a new contact
! Changed com_newsfeed to display subcategory list when creating a new newsfeed
! Changed com_weblinks to display subcategory list when creating a new weblink
! Changed mod_banners to display subcategory list in its module params
! Changed mod_newsflash to display subcategory list in its module params

1.5.9 2009-03-18 / Omar Ramos
+ Fixed com_categories parent category support
+ Added DynaList JavaScript capability to com_categories (dynamically switch between sections to see different categories lists)
+ Verified compatibility with Joomla 1.5.9

Prior Versions
+ Added better ordering abilities to com_menus and com_categories in the administrator area
+ Added categorymenurecurse JHTML menu type
+ Ported com_menus parent item capability to com_categories to allow choosing of parent category
+ Added subcategories representation to com_content in the administrator area