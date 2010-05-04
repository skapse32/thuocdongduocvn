<?php
//
// Copyright (C) 2006 Thomas Papin
// http://www.gnu.org/copyleft/gpl.html GNU/GPL

// This file is part of the AdsManager Component,
// a Joomla! Classifieds Component by Thomas Papin
// Email: thomas.papin@free.fr
//
// Dont allow direct linking
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

//General
DEFINE( "ADSMANAGER_ROOT_TITLE", "Chợ đông dược");
DEFINE( "ADSMANAGER_PAGE_TITLE", "Chợ đông dược");
DEFINE( "ADSMANAGER_BACK_TEXT", "Trở lại");

//Front
DEFINE( "ADSMANAGER_FRONT_TITLE","Chợ đông dược");
DEFINE( "ADSMANAGER_LAST_ADS", "Tin mới đăng");

//Rules
DEFINE( "ADSMANAGER_RULES", "Quy định");
DEFINE( "ADSMANAGER_RULESREAD", "");//<b>Vui lòng đọc kỹ quy định trước khi đăng tin 
DEFINE( "ADSMANAGER_RULES_TEXT", "Hiện chúng tôi đang xây dựng quy định...(Change this text, in editing lang_english.h)<br><br>");

// List Categories

//   Title of Columns
DEFINE( "ADSMANAGER_AD", "Ad");
DEFINE( "ADSMANAGER_PRICE", "Giá");
DEFINE( "ADSMANAGER_KINDOF", "Loại");
DEFINE( "ADSMANAGER_DATE", "Ngày đăng");
DEFINE( "ADSMANAGER_STATE", "Tình trạng");
DEFINE( "ADSMANAGER_CITY", "Thành phố");
DEFINE( "ADSMANAGER_DEVICE", "&#36;&nbsp;%s");

//Field Type
DEFINE( "ADSMANAGER_KINDOFALL", "Delivery / Carry ");
DEFINE( "ADSMANAGER_KINDOF1", "Carry");
DEFINE( "ADSMANAGER_KINDOF2", "Delivery");
DEFINE( "ADSMANAGER_KINDOF1_LONG", "Carry");
DEFINE( "ADSMANAGER_KINDOF2_LONG", "Delivery");


//Define use in ads list
DEFINE( "ADSMANAGER_FROM", "from ");
DEFINE ("ADSMANAGER_CONTACT_NOT_LOGGED", "Đăng nhập để xem tất cả thông tin");
DEFINE( "ADSMANAGER_CONTACT", "Liên hệ");
DEFINE( "ADSMANAGER_CLICKONIMAGE", "Click image to enlarge");

//Search
DEFINE( "ADSMANAGER_SEARCH_TEXT", "Tìm kiếm...");
DEFINE( "ADSMANAGER_ORDER_BY_TEXT", "Sắp xếp theo");

//List Options
DEFINE( "ADSMANAGER_MODE_TEXT", "Mode ");
DEFINE( "ADSMANAGER_EXPAND_TEXT", "Expand");
DEFINE( "ADSMANAGER_SHORT_TEXT", "Short");

//List Type
DEFINE( "ADSMANAGER_LIST_TEXT", "Tất cả tin");
DEFINE( "ADSMANAGER_LIST_USER_TEXT", "Rao vặt của");

//Form Verification
DEFINE( "_REGWARN_EMAIL", "Điền email!");
DEFINE( "_REGWARN_AD_HEADLINE", "Điền tiêu đề!");
DEFINE( "_REGWARN_AD_TEXT", "Điền thông tin!");
DEFINE( "_REGWARN_AD_PRICE", "Giá phải là số ");
DEFINE( "ADSMANAGER_IMAGETOOBIG", "Ảnh quá lớn");

//Profile
DEFINE( "ADSMANAGER_PROFILE_NAME", "Last Name, First Name");
DEFINE( "ADSMANAGER_PROFILE_PASSWORD", "<br/><h4>Mật khẩu</h4> <i>Để trống nếu không muốn thay đổi đổi.</i>");
DEFINE( "ADSMANAGER_PROFILE_CONTACT", "<br/><h4>Thông tin liên hệ</h4> <i>Được dùng tự đông điền vào form đăng tin</i>");
DEFINE( "ADSMANAGER_UPDATE_PROFILE_SUCCESSFULL", "Thông tin của bạn đã được cập nhập");

//Warning
DEFINE( "ADSMANAGER_ADD_NOTALLOWED", "Sorry, you have to be logged in to access this page.");
DEFINE( "ADSMANAGER_DELETE_NOTALLOWED", "Sorry, you have to be logged in to delete an ad.");
DEFINE( "ADSMANAGER_CAUTION", "ATTENTION! ");
DEFINE( "ADSMANAGER_CAUTION_DELETE1", ", You are about to delete your ad: ");
DEFINE( "ADSMANAGER_CAUTION_DELETE2", "<br /> Are you sure ???");
DEFINE( "ADSMANAGER_YES_DELETE", "Yes, delete it");
DEFINE( "ADSMANAGER_NO_DELETE", "No, keep it");
DEFINE( "ADSMANAGER_DELETE_OK", "Ad has been deleted");

//Form
DEFINE( "ADSMANAGER_AD_EDIT", "Cập nhật");
DEFINE( "ADSMANAGER_AD_WRITE", "Đăng tin mới");
DEFINE( "ADSMANAGER_AD_DELETE", "Xóa");
DEFINE( "ADSMANAGER_AD_DELETE_IMAGE", "xóa");

DEFINE( "ADSMANAGER_FORM_NAME", "Tên đầy đủ");
DEFINE( "ADSMANAGER_FORM_ZIP", "Mã bưu điện");
DEFINE( "ADSMANAGER_FORM_CITY", "Địa điểm");
DEFINE( "ADSMANAGER_FORM_PHONE1", "Số điện thoại");
DEFINE( "ADSMANAGER_FORM_EMAIL", "Email");
DEFINE( "ADSMANAGER_FORM_EMAIL_TEXT", "");
DEFINE( "ADSMANAGER_FORM_AD_HEADLINE", "Tiêu đề tin");
DEFINE( "ADSMANAGER_FORM_AD_TEXT", "Nội dung");
DEFINE( "ADSMANAGER_FORM_KINDOF", "Hình thức vận chuyển");
DEFINE( "ADSMANAGER_FORM_AD_PRICE", "Giá");
DEFINE( "ADSMANAGER_FORM_AD_PRICE_TEXT", "VNĐ (optional)");

DEFINE( "ADSMANAGER_FORM_SUBMIT_TEXT", "Ok");
DEFINE( "ADSMANAGER_FORM_CANCEL_TEXT", "Hủy");

DEFINE( "ADSMANAGER_FORM_AD_IMAGE_TEXT", "Bạn có thể đăng %s ảnh định dạng JPEG/PNG/GIf với dung lượng tối đa là %s Kilobytes.<br/> Hệ thống sẽ tự động căn chỉnh ảnh bạn gửi lên.");

//State
DEFINE( "ADSMANAGER_FORM_STATE", "Trạng thái");
DEFINE( "ADSMANAGER_STATE_4", "Mới");
DEFINE( "ADSMANAGER_STATE_3", "Rất tốt");
DEFINE( "ADSMANAGER_STATE_2", "Tốt");
DEFINE( "ADSMANAGER_STATE_1", "Lỗi");
DEFINE( "ADSMANAGER_STATE_0", "Đã sử dụng");

DEFINE( "ADSMANAGER_INSERT_SUCCESSFULL_PUBLISH","Congratulations, your ad has been posted!");
DEFINE( "ADSMANAGER_INSERT_SUCCESSFULL_CONFIRM","Thanks, an administrator will check your ad before publishing it");

DEFINE( "ADSMANAGER_HEADER1", "= required");//= required
DEFINE( "ADSMANAGER_HEADER2", "= optional");//= optional

DEFINE( "ADSMANAGER_SHOW_OTHERS", "See all ads from ");

DEFINE( "ADSMANAGER_MENU_HOME","Home");
DEFINE( "ADSMANAGER_MENU_WRITE","Đăng tin ");
DEFINE( "ADSMANAGER_MENU_PROFILE","Thông tin cá nhân");
DEFINE( "ADSMANAGER_MENU_USER_ADS","Tin đã đăng");
DEFINE( "ADSMANAGER_MENU_RULES","Quy định");
DEFINE( "ADSMANAGER_MENU_ALL_ADS","Xem hết");
DEFINE( "ADSMANAGER_NOENTRIES", "Chưa có tin nào");

DEFINE( "ADSMANAGER_FORM_CATEGORY", "Loại rao vặt");
DEFINE( "ADSMANAGER_FORM_AD_HEADLINE_TEXT","");

DEFINE("ADSMANAGER_CONFIGURATION_SAVED","Configuration saved");
DEFINE("ADSMANAGER_CATEGORIES_REORDER","Categories reordered");
DEFINE("ADSMANAGER_ERROR_IN_URL","Error in url");
DEFINE("ADSMANAGER_CATEGORY_SAVED","Category saved");
DEFINE("ADSMANAGER_CATEGORIES_DELETED","Categorie(s) deleted");
DEFINE("ADSMANAGER_AD_SAVED","Ad saved");
DEFINE("ADSMANAGER_ADS_DELETED","Ad(s) deleted");
DEFINE("ADSMANAGER_MAIN_PAGE","Main Page");
DEFINE("ADSMANAGER_CONFIGURATION","Configuration");
DEFINE("ADSMANAGER_LIST_CATEGORIES","Categories");
DEFINE("ADSMANAGER_LIST_ADS","Ads");
DEFINE("ADSMANAGER_CONFIGURATION_PANEL","Configuration Panel");
DEFINE("ADSMANAGER_ADS_PER_PAGE","Ads per page");
DEFINE("ADSMANAGER_ADS_PER_PAGE_LONG","Ads per page");
DEFINE("ADSMANAGER_MAX_IMAGE_SIZE","Max Ad Image Size");
DEFINE("ADSMANAGER_MAX_IMAGE_SIZE_LONG","Max Ad Image Size");
DEFINE("ADSMANAGER_MAX_IMAGE_WIDTH","Max Ad Image Width");
DEFINE("ADSMANAGER_MAX_IMAGE_WIDTH_LONG","Max Ad Image Width");
DEFINE("ADSMANAGER_MAX_IMAGE_HEIGHT","Max Ad Image height");
DEFINE("ADSMANAGER_MAX_IMAGE_HEIGHT_LONG","Max Ad Image height");
DEFINE("ADSMANAGER_MAX_THUMBNAIL_WIDTH","Max Ad Thumbnail width");
DEFINE("ADSMANAGER_MAX_THUMBNAIL_WIDTH_LONG","Max Ad Thumbnail width");
DEFINE("ADSMANAGER_MAX_THUMBNAIL_HEIGHT","Max Ad Thumbnail height");
DEFINE("ADSMANAGER_MAX_THUMBNAIL_HEIGHT_LONG","Max Ad Thumbnail height");
DEFINE("ADSMANAGER_AUTO_PUBLISH","Auto Published");
DEFINE("ADSMANAGER_AUTO_PUBLISH_LONG","Administrator has to validate the ads");
DEFINE("ADSMANAGER_IMAGE_TAG","Tag");
DEFINE("ADSMANAGER_IMAGE_TAG_LONG","Add a text tag on Image");
DEFINE("ADSMANAGER_FRONTPAGE","Front Text");
DEFINE("ADSMANAGER_FRONTPAGE_LONG","Text to be displayed on front page");
DEFINE("ADSMANAGER_CATEGORY_ITEMS","Ads of category: ");

DEFINE("ADSMANAGER_TH_TITLE","Title");
DEFINE("ADSMANAGER_TH_PUBLISH","Publish");
DEFINE("ADSMANAGER_TH_USER","User");
DEFINE("ADSMANAGER_TH_CATEGORY","Category");
DEFINE("ADSMANAGER_TH_DATE","Date");
DEFINE("ADSMANAGER_TH_IMAGE","Picture");
DEFINE("ADSMANAGER_TH_ADS","Ads");
DEFINE("ADSMANAGER_AD_EDITION","Ad Edition");
DEFINE("ADSMANAGER_PUBLISH","Published");
DEFINE("ADSMANAGER_NO_PUBLISH","No Published");
DEFINE("ADSMANAGER_CATEGORY_EDITION","Category Edition");
DEFINE("ADSMANAGER_TH_PARENT","Parent");
DEFINE("ADSMANAGER_ROOT","Root");
DEFINE("ADSMANAGER_TH_DESCRIPTION","Description");

DEFINE("ADSMANAGER_EMAIL_ON_NEW","New Notification");
DEFINE("ADSMANAGER_EMAIL_ON_NEW_LONG","Send Email to admin on new ad");
DEFINE("ADSMANAGER_EMAIL_ON_UPDATE","Update Notification");
DEFINE("ADSMANAGER_EMAIL_ON_UPDATE_LONG","Send Email to admin on ad update");

DEFINE("ADSMANAGER_SEF_ADS","ads");
DEFINE("ADSMANAGER_SEF_ALL_ADS","all-ads");
DEFINE("ADSMANAGER_SEF_DELETE","delete");
DEFINE("ADSMANAGER_SEF_DELETE_AD","delete-ad");
DEFINE("ADSMANAGER_SEF_SAVE_AD","save-ad");
DEFINE("ADSMANAGER_SEF_UPDATE","update");
DEFINE("ADSMANAGER_SEF_WRITE_AD","write-ad");
DEFINE("ADSMANAGER_SEF_MY_ADS","my-ads");
DEFINE("ADSMANAGER_SEF_USER","user");
DEFINE("ADSMANAGER_SEF_PROFILE","profile");
DEFINE("ADSMANAGER_SEF_EDIT","edit");
DEFINE("ADSMANAGER_SEF_SAVE","save");
DEFINE("ADSMANAGER_SEF_MAIN","ads");

//v1.0.2
DEFINE("ADSMANAGER_NB_IMAGES","Nb Images"); 
DEFINE("ADSMANAGER_NB_IMAGES_LONG","Max number of images for one ad"); 
DEFINE( "ADSMANAGER_FORM_AD_PICTURE", "Picture");

DEFINE( "ADSMANAGER_TOOLS", "Tools");
DEFINE( "ADSMANAGER_TOOLS_MAIN_PAGE", "Tools");
DEFINE( "ADSMANAGER_CONVERT_MARKETPLACE","Import from Marketplace (Beta Version, Do not hesitate to report bug)");
DEFINE("ADSMANAGER_TOOLS_MARKETPLACE_CATEGORIES","Marketplace Categories");
DEFINE("ADSMANAGER_TOOLS_MARKETPLACE_ADS","Marketplace Ads");
DEFINE("ADSMANAGER_IMPORT_MARKETPLACE","Import Cats and Ads from Marketplace");
DEFINE("ADSMANAGER_IMPORT_SUCCESS","Importation Successfull");

DEFINE("ADSMANAGER_SHOW_CONTACT","Show Contact");
DEFINE("ADSMANAGER_SHOW_CONTACT_LONG","Display contact information");
DEFINE("ADSMANAGER_SHOW_CONTACT_LOGGED_ONLY","Only to logged users");
DEFINE("ADSMANAGER_SHOW_CONTACT_ALL","to anyone");

DEFINE("ADSMANAGER_ROOT_SUBMIT","Allow ads at root level");
DEFINE("ADSMANAGER_ROOT_SUBMIT_LONG","User may submit ads in 'root' categories (categories which contain sub categories)");
DEFINE("ADSMANAGER_ROOT_SUBMIT_ALLOWED","Allowed");
DEFINE("ADSMANAGER_ROOT_SUBMIT_NOT_ALLOWED","Not Allowed");

//v1.2.0
DEFINE('ADSMANAGER_COMMUNITY_BUILDER','Community Builder');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_LONG','Full: CB for Profile and User Ads, Profile: Use just the CB profile');
/*
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_PHONE','CB Phone');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_PHONE_LONG','Which CB field to use for Phone field');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_ZIP','CB Zip');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_ZIP_LONG','Which CB field to use for Zip field');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_CITY','CB City');
DEFINE('ADSMANAGER_COMMUNITY_BUILDER_CITY_LONG','Which CB field to use for City field');
*/
//v1.2.1
DEFINE('ADSMANAGER_SEND_EMAIL_BUTTON','Send');
DEFINE('ADSMANAGER_EMAIL_FORM','Send an Email');
DEFINE('ADSMANAGER_FORM_TITLE','Email Title');
DEFINE('ADSMANAGER_FORM_EMAIL_BODY','Email Content');
DEFINE('ADSMANAGER_EMAIL_TITLE',"Answer : ");
DEFINE('ADSMANAGER_EMAIL_BODY','Ad : ');
DEFINE('ADSMANAGER_WRITE_EMAIL','Email Form');
DEFINE('ADSMANAGER_EMAIL_DISPLAY','Email Display');
DEFINE('ADSMANAGER_EMAIL_DISPLAY_LONG','Choose how to display Email to visitor');
DEFINE('ADSMANAGER_EMAIL_DISPLAY_FORM','Form');
DEFINE('ADSMANAGER_EMAIL_DISPLAY_IMAGE','Image');
DEFINE('ADSMANAGER_EMAIL_DISPLAY_LINK','Link');
DEFINE('ADSMANAGER_EMAIL_SENT','Email Sent');

//v2
DEFINE('ADSMANAGER_FIELDS','Fields');
DEFINE('ADSMANAGER_COLUMNS','Columns');
DEFINE('ADSMANAGER_COLUMN_EDITION','Column Edition');
DEFINE('ADSMANAGER_ORDER','Order');
DEFINE('ADSMANAGER_AD_DISPLAY','Ad Display');
DEFINE('ADSMANAGER_FIELDS_LIST','Fields List');
DEFINE('ADSMANAGER_EDIT_FIELD','Edit Field');
DEFINE('ADSMANAGER_REGWARN_NUMBER','Sorry, only numbers may be entered in this field');
DEFINE('ADSMANAGER_REGWARN_ERROR','Chưa nhập thông tin');
DEFINE("ADSMANAGER_EMAIL_UPDATE","[Ads] Update: ");
DEFINE("ADSMANAGER_EMAIL_NEW","[Ads] New: ");
DEFINE("ADSMANAGER_UPDATE_SUCCESSFULL","Update Successful");
DEFINE("ADSMANAGER_SELECT_ITEM_TO_BE_DELETED","Select an item to delete");
DEFINE("ADSMANAGER_ERROR_SYSTEM_FIELD","You cannot erase a system field");

DEFINE("ADSMANAGER_FIELD_TYPE","Type: ");
DEFINE("ADSMANAGER_FIELD_NAME","Name: ");
DEFINE("ADSMANAGER_FIELD_TITLE","Title: ");
DEFINE("ADSMANAGER_FIELD_REQUIRED","Required?: ");
DEFINE("ADSMANAGER_FIELD_COLUMN","Column?:");
DEFINE("ADSMANAGER_FIELD_COLUMN_ORDER","ColumOrder: ");
DEFINE("ADSMANAGER_FIELD_POSITION_DISPLAY","Position Display?:");
DEFINE("ADSMANAGER_FIELD_POSITION_ORDER","Position Order:");
DEFINE("ADSMANAGER_FIELD_PROFILE","Use as Profile Field?:");
DEFINE("ADSMANAGER_FIELD_CB","Community Builder?:");
DEFINE("ADSMANAGER_FIELD_SORT_OPTION","Ad can be sort by this field?:");
DEFINE("ADSMANAGER_FIELD_SORT_DIRECTION","Sort Direction?:");
DEFINE("ADSMANAGER_FIELD_SIZE","Size:");
DEFINE("ADSMANAGER_FIELD_PUBLISHED","Published?");
DEFINE("ADSMANAGER_FIELD_MAX_LENGTH","Max Length:");
DEFINE("ADSMANAGER_FIELD_COLS","Cols:");
DEFINE("ADSMANAGER_FIELD_ROWS","Rows:");
DEFINE("ADSMANAGER_FIELD_VALUES_EXPLANATION","Use the table below to add new values.<br />");
DEFINE("ADSMANAGER_FIELD_VALUE_NAME","NAME");
DEFINE("ADSMANAGER_FIELD_VALUE_VALUE","VALUE");
DEFINE("ADSMANAGER_LIST_COLUMNS","List Columns");
DEFINE("ADSMANAGER_POSITIONS","Ad Display");

DEFINE("ADSMANAGER_TH_NAME","Name");
DEFINE("ADSMANAGER_TH_TYPE","Type");
DEFINE("ADSMANAGER_TH_REORDER","Type");
DEFINE("ADSMANAGER_TH_REQUIRED","Required?");

DEFINE("ADSMANAGER_NO_DISPLAY","No Display");
DEFINE("ADSMANAGER_NOT_USED","Not Used");

DEFINE("ADSMANAGER_POSITION_TOP","");
DEFINE("ADSMANAGER_POSITION_SUBTITLE","");
DEFINE("ADSMANAGER_POSITION_DESCRIPTION","");
DEFINE("ADSMANAGER_POSITION_DESCRIPTION2","Price: ");
DEFINE("ADSMANAGER_POSITION_CONTACT","Contact:<br/>");

//add nopic.gif
DEFINE("ADSMANAGER_NOPIC","nopic.gif");

//AdsManager v2.0.3
DEFINE("ADSMANAGER_EXPAND_MODE","Expand Mode");
DEFINE("ADSMANAGER_LAST_BOTTOM","Display - Front Bottom");
DEFINE("ADSMANAGER_LAST_TOP","Display - Front Top");
DEFINE("ADSMANAGER_LAST_NONE","Do not display - Hidden");

//AdsManager v2.1.0
DEFINE("ADSMANAGER_EXPIRATION_MAIL","Ad Expiration");
DEFINE("ADSMANAGER_EXPIRATION_MAIL_BODY","Your Ad : %s is going to be deleted in %s days.<br/> To cancel and resubmit click on the link below.<br/><a href=\"%s\">%s</a>");
DEFINE("ADSMANAGER_EXPIRATION","Ad Expiration");
DEFINE("ADSMANAGER_AD_DURATION","Ad Life Duration (days)");
DEFINE("ADSMANAGER_RECALL","Send Recall Email before expiration");
DEFINE("ADSMANAGER_RECALL_TIME","Number of days between recall and expiration");
DEFINE("ADSMANAGER_RECALL_TEXT","Recall Text added at the beginning of the mail");
DEFINE("ADSMANAGER_AD_RESUBMIT","Your ad has been resubmitted");
DEFINE("ADSMANAGER_VIEWS","%s Hit(s)");
DEFINE("ADSMANAGER_ORDER_HITS","Hits");
DEFINE("ADSMANAGER_FIELD_EDITABLE","Editable?");
DEFINE("ADSMANAGER_FIELD_SEARCHABLE","Search Option?");
DEFINE("ADSMANAGER_LOGIN","Đăng nhập");
DEFINE("ADSMANAGER_LOGIN_DESCRIPTION","Trước khi đăng tin bạn phải đăng nhập vào hệ thống.<br><br>Nếu chưa có tài khoản xin hãy đăng ký mới, việc đăng ký mới rất đơn giản.");
DEFINE("ADSMANAGER_ADVANCED_SEARCH","Tìm kiếm nâng cao");
DEFINE("ADSMANAGER_SUBMIT_BUTTON","Tìm ");
DEFINE("ADSMANAGER_SEF_SHOW_SEARCH","search");
DEFINE("ADSMANAGER_SEF_SHOW_RESULT","kết quả");

//AdsManager v2.1.2
DEFINE("ADSMANAGER_WAIT","Xin đợi ...");
DEFINE("ADSMANAGER_FIELD_DESCRIPTION","Description");

//AdsManager v2.1.4
DEFINE("ADSMANAGER_FIELD_DISPLAY_TITLE","Display Title");
DEFINE("ADSMANAGER_DISPLAY_DETAILS","Display in Ad Mode");
DEFINE("ADSMANAGER_DISPLAY_LIST","Display in List Mode");
DEFINE("ADSMANAGER_DISPLAY_LIST_AND_DETAILS","Display in Ad and List modes");
DEFINE("ADSMANAGER_YES","Yes");
DEFINE("ADSMANAGER_NO","No");

//AdsManager v2.1.5
DEFINE("ADSMANAGER_INSTALL_SUCCESSFULL","Install Successfull");
DEFINE("ADSMANAGER_ERROR_INSTALL","Error during Installation");
DEFINE("ADSMANAGER_ALREADY_INSTALL","Already Installed");
DEFINE("ADSMANAGER_INSTALL_SEF","Install extension file for ArtioSEF");
DEFINE("ADSMANAGER_INSTALL_JOOMFISH","Install extension files for Joomfish");
DEFINE("ADSMANAGER_REORDER","Reorder");

DEFINE("ADSMANAGER_IMAGE_DISPLAY","Image Display Type");
DEFINE("ADSMANAGER_IMAGE_DISPLAY_DEFAULT","Open Image in a new Window");
DEFINE("ADSMANAGER_IMAGE_DISPLAY_LIGHTBOX","Open Image with Lightbox (Beautiful Effect)");
DEFINE("ADSMANAGER_IMAGE_DISPLAY_LYTEBOX","Open Image with Lytebox (Beautiful Effect)");
DEFINE("ADSMANAGER_IMAGE_DISPLAY_HIGHSLIDE","Open Image with Highslide (Beautiful Effect)"); 
DEFINE("ADSMANAGER_IMAGE_DISPLAY_POPUP","Open Image in a popup");

DEFINE("ADSMANAGER_MAX_CATIMAGE_WIDTH","Max Category Image Width");
DEFINE("ADSMANAGER_MAX_CATIMAGE_WIDTH_LONG","Max Category Image Width");
DEFINE("ADSMANAGER_MAX_CATIMAGE_HEIGHT","Max Category Image height");
DEFINE("ADSMANAGER_MAX_CATIMAGE_HEIGHT_LONG","Max Category Image height");
DEFINE("ADSMANAGER_MAX_CATTHUMBNAIL_WIDTH","Max Category Thumbnail width");
DEFINE("ADSMANAGER_MAX_CATTHUMBNAIL_WIDTH_LONG","Max Category Thumbnail width");
DEFINE("ADSMANAGER_MAX_CATTHUMBNAIL_HEIGHT","Max Category Thumbnail height");
DEFINE("ADSMANAGER_MAX_CATTHUMBNAIL_HEIGHT_LONG","Max Category Thumbnail height");

DEFINE("ADSMANAGER_TAB_GENERAL","General");
DEFINE("ADSMANAGER_TAB_IMAGE","Image");
DEFINE("ADSMANAGER_TAB_TEXT","Text");
DEFINE("ADSMANAGER_TAB_EXPIRATION","Expiration");
DEFINE("ADSMANAGER_AD_DISPLAY_EXPLANATION","To change the display of an ad, you have to edit the fields and choose for each field where you want to display this information");
DEFINE("ADSMANAGER_DONATION","Click on the PayPal button to make a donation. Thanks in advance for your contribution :)");
DEFINE("ADSMANAGER_ADSENSE","Google AdSense is a fast and easy way for website publishers of all sizes to display relevant Google ads on their website's content pages and earn money. Because the ads are related to what your visitors are looking for on your site � or matched to the characteristics and interests of the visitors your content attracts � you'll finally have a way to both monetise and enhance your content pages.");

//AdsManager v2.1.6
DEFINE("ADSMANAGER_SUBMISSION_TYPE","Submission Type");
DEFINE("ADSMANAGER_SUBMISION_WITH_ACCOUNT_CREATION","Create User Account (if needed) when posting an ad");
DEFINE("ADSMANAGER_SUBMISSION_ALLOWED_ONLY_FOR_REGISTERS","User Account is needed to be able to post an ad");
DEFINE("ADSMANAGER_SUBMISSION_ALLOWED_FOR_VISITORS","Visitors can submit ad without user account creation");
DEFINE("ADSMANAGER_WARNING_NEW_AD_NO_ACCOUNT","<b> WARNING: You are not logged in !</b><br/> You may post an ad without logging in, but you will be unable to modify or delete the ad.<br/> Please register for an account and log in for full functionality.<br/>");
DEFINE("ADSMANAGER_SELECT_CATEGORY","-- Select a category --");
DEFINE("ADSMANAGER_AUTOMATIC_ACCOUNT","Use your login information or,<br />Enter username/password to create a new account"); 
DEFINE("ADSMANAGER_BAD_PASSWORD","<b>Error:</b> Username already exists, or you entered a bad password for this username");
DEFINE("ADSMANAGER_EMAIL_ALREADY_USED","<b>Error:</b> Email is already associated with another account. You have to use another email or use this Email's existing account.");
DEFINE("ADSMANAGER_NB_ADS_BY_USER","Number of Ads by User");
DEFINE("ADSMANAGER_NB_ADS_BY_USER_LONG","Number of Ads by User ( -1  = Unlimited ) ");
DEFINE("ADSMANAGER_MAX_NUM_ADS_REACHED","You cannot post a new ad. Max number of ads by user = %s");
DEFINE("ADSMANAGER_ATTACH_FILE","File");

DEFINE("ADSMANAGER_DISPLAY_MODE","Display Mode");
DEFINE("ADSMANAGER_SHORT_MODE","Short Mode");
DEFINE("ADSMANAGER_SHORT_AND_EXPAND_MODE","Short And Expand Mode");
DEFINE("ADSMANAGER_DISPLAY_MODE_LONG","<b>Short Mode:</b>Short ad description is displayed first, you can click on each ad to get full details<br /><b>Expand Mode:</b> In this mode, the full ad description is displayed directly<br /><b>Short and Expand Mode:</b> User can choose the mode");

DEFINE("ADSMANAGER_TAB_CONTACT","Contact");
DEFINE("ADSMANAGER_MESSAGE_SENT","Message Sent");
DEFINE("ADSMANAGER_CONTACT_BY_PMS","Contact by PMS");
DEFINE("ADSMANAGER_CONTACT_BY_PMS_LONG","Add a link to contact submitter by PMS, you need to install a PMS composant like JIM,Missus and the associated adsmanager mambot");
DEFINE("ADSMANAGER_ALLOW_ATTACHMENT","Allow Attachment");
DEFINE("ADSMANAGER_ALLOW_ATTACHMENT_LONG","Allow Attachment in Email Message");
DEFINE("ADSMANAGER_PMS_FORM","Contact %s by PMS");

DEFINE('ADSMANAGER_FORM_MESSAGE_TITLE','Title');
DEFINE('ADSMANAGER_FORM_MESSAGE_BODY','Message');
DEFINE('ADSMANAGER_FORM_MESSAGE_WRITE','Write Form');

//AdsManager 2.1.7
DEFINE('ADSMANAGER_PROFILE','Profile');
DEFINE('ADSMANAGER_FULL','Full');
DEFINE('ADSMANAGER_DATE_FORMAT_LC',"%m-%d-%Y");

//AdsManager 2.1.9
DEFINE('ADSMANAGER_FNAME','First Name');   
DEFINE('ADSMANAGER_MNAME','Middle Name');
DEFINE('ADSMANAGER_DISPLAY_FULLNAME','Display Full Name?');
DEFINE('ADSMANAGER_DISPLAY_FULLNAME_LONG','Người đăng tin');
DEFINE("ADSMANAGER_POSITION_DESCRIPTION3","");
DEFINE("ADSMANAGER_SHOW_RSS","Display Rss Link");
DEFINE("ADSMANAGER_SHOW_RSS_LONG","");
DEFINE("ADSMANAGER_DOWNLOAD_FILE","Download file");
DEFINE("ADSMANAGER_FILE_TOO_BIG",'File Size is too big');

DEFINE("ADSMANAGER_USERNAME",'Tên đăng nhập');
DEFINE("ADSMANAGER_PASSWORD",'Mật khẩu');
DEFINE("ADSMANAGER_REMEMBER_ME",'Remember me');
DEFINE("ADSMANAGER_LOST_PASSWORD",'Lost Password?');
DEFINE("ADSMANAGER_NO_ACCOUNT",'No account yet?');
DEFINE("ADSMANAGER_CREATE_ACCOUNT",'Register');
DEFINE("ADSMANAGER_BUTTON_LOGIN",'Login');

DEFINE("ADSMANAGER_FIELDS_REORDER","Fields Reordered");
DEFINE("ADSMANAGER_CMN_SORT_DESC","Sort Descending");
DEFINE("ADSMANAGER_CMN_SORT_ASC","Sort Ascending");
DEFINE('ADSMANAGER_REGISTER_PASS','Password:');
DEFINE('ADSMANAGER_REGISTER_VPASS','Verify Password:');
DEFINE('ADSMANAGER_EMAIL','Email');
DEFINE('ADSMANAGER_UNAME','User Name:');
DEFINE('ADSMANAGER_PASS','Mật khẩu:');
DEFINE('ADSMANAGER_VPASS','Nhập lại mật khẩu:');
DEFINE('ADSMANAGER_NAME','Name:');
DEFINE('ADSMANAGER_PROMPT_UNAME','Username:');
DEFINE('ADSMANAGER_PROMPT_EMAIL','E-mail Address:');
DEFINE('ADSMANAGER_VALID_AZ09',"Please enter a valid %s.  No spaces, more than %d characters and contain 0-9,a-z,A-Z");
DEFINE('ADSMANAGER_REGWARN_NAME','Please enter your name.');
DEFINE('ADSMANAGER_REGWARN_UNAME','Please enter a User name.');
DEFINE('ADSMANAGER_REGWARN_MAIL','Please enter a valid e-mail address.');
DEFINE('ADSMANAGER_REGWARN_PASS','Please enter a valid password.  No spaces, more than 6 characters and contain 0-9,a-z,A-Z');
DEFINE('ADSMANAGER_REGWARN_VPASS1','Please verify the password.');
DEFINE('ADSMANAGER_REGWARN_VPASS2','Password and verification do not match, please try again.');
DEFINE('ADSMANAGER_FIELD_SIZE_LONG','Text Size or File Size (if field type = "file")');
DEFINE('ADSMANAGER_DELETE_CATEGORY_SELECT_CHIDLS','At least one category has child categories unselected. Please select all childs if you want to delete a parent category');
DEFINE('ADSMANAGER_EDIT_PROFILE','Thông tin cá nhân');
//AdsManager 2.2.0
DEFINE("ADSMANAGER_IMAGE_DISPLAY_LONG","To use highslide read first this <a href='http://vikjavev.no/highslide/#licence'>webpage</a> for terms of usage");
//Remove any blank line, RSS feed will not work
?>