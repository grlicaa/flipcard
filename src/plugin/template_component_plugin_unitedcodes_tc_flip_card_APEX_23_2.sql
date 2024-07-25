prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0-17'
,p_default_workspace_id=>30564665038162146149
,p_default_application_id=>67321
,p_default_id_offset=>6472750346073423586
,p_default_owner=>'TRTDEMO'
);
end;
/
 
prompt APPLICATION 67321 - (United Codes) Flip Card
--
-- Application Export:
--   Application:     67321
--   Name:            (United Codes) Flip Card
--   Date and Time:   13:17 Friday October 27, 2023
--   Exported By:     ANDREJGR
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 6568375575969604780
--   Manifest End
--   Version:         23.2.0-17
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/unitedcodes_tc_flip_card
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(6568375575969604780)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'UNITEDCODES_TC_FLIP_CARD'
,p_display_name=>'Flip Card'
,p_supported_component_types=>'REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/flipcard#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/flip-card#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="flip-card a-CardView"></div>',
'{else/}',
'<div class="flip-card a-CardView"> ',
'    <div class="flip-card-inner">',
'        <div class="flip-card-front{if F_CARD_CSS/} #F_CARD_CSS#{endif/}{if F_TITLE/} has-title{endif/}{if F_SUBTITLE/} has-subtitle{endif/}{if F_BODY_MAIN/} has-body{endif/}{if F_BODY_SUB/} has-secondary{endif/}{if F_ICON_SOURCE/} has-icon{case F_IC'
||'ON_POSITION/}{when a-CardView-iconWrap--start/} has-icon--start{when a-CardView-iconWrap--end/} has-icon--end{otherwise/} has-icon--top{endcase/}{endif/}{if F_BADGE_VAL/} has-badge{endif/}{if F_MEDIA_SOURCE/} has-media{case F_MEDIA_POSITION/}{when a-'
||'CardView-media--first/} has-media--first{when a-CardView-media--body/} has-media--body{otherwise/} has-media--background{endcase/}{case F_MEDIA_SIZING/}{when a-CardView-media--fit/} has-media--fit{otherwise/} has-media--cover{endcase/}{endif/}">',
'            {if F_MEDIA_SOURCE/}',
'            <div class="a-CardView-media #F_MEDIA_POSITION#{if F_MEDIA_APPEAR/} #F_MEDIA_APPEAR#{endif/}{if F_MEDIA_SIZING/} #F_MEDIA_SIZING#{endif/}">',
'                {case F_MEDIA_SOURCE/}',
'                {when a-CardView-mediaImg/}',
'                    <img class="a-CardView-mediaImg" src="#F_MEDIA#" alt="" loading="lazy">',
'                {otherwise/}',
'                    #F_MEDIA#',
'                {endcase/}',
'            </div>       ',
'            {endif/}',
'            <div class="a-CardView-header">',
'                {case F_ICON_SOURCE/}',
'                    {when a-CardView-icon/}',
'                        <div class="a-CardView-iconWrap #F_ICON_POSITION#">',
'                            <span class="a-CardView-icon u-color fa #F_ICON#" aria-hidden="true"></span>',
'                        </div>',
'                    {when a-CardView-initials/}',
'                        <div class="a-CardView-iconWrap #F_ICON_POSITION#">',
'                            <span class="a-CardView-initials u-color #F_ICON#" aria-hidden="true">#F_ICON_INIC#</span>',
'                        </div>',
'                    {when a-CardView-iconImg/}    ',
'                        <div class="a-CardView-iconWrap #F_ICON_POSITION#">',
'                            <img class="a-CardView-iconImg #F_ICON#" src="#F_ICON_URL#" alt="" loading="lazy">',
'                        </div>',
'                    {endcase/}',
'                <div class="a-CardView-headerBody">',
'                    {if F_TITLE/}<h3 class="a-CardView-title{if F_TITLE_CSS/} #F_TITLE_CSS#{endif/}">#F_TITLE#</h3>{endif/}',
'                    {if F_SUBTITLE/}<h4 class="a-CardView-subTitle{if F_SUBTITLE_CSS/} #F_SUBTITLE_CSS#{endif/}">#F_SUBTITLE#</h4>{endif/}',
'                 </div>',
'				{if F_BADGE_VAL/}',
'				<div class="a-CardView-badge" title="#F_BADGE_LABEL# #F_BADGE_VAL#">',
'                    {if F_BADGE_LABEL/}    ',
'					<span class="a-CardView-badgeLabel">#F_BADGE_LABEL#</span>',
'                    {endif/}',
'					<span class="a-CardView-badgeValue">#F_BADGE_VAL#</span>',
'				</div>           ',
'				{endif/}     ',
'            </div>',
'			<div class="a-CardView-body">{if F_BODY_MAIN/}<div class="a-CardView-mainContent{if F_BODY_MAIN_CSS/} #F_BODY_MAIN_CSS#{endif/}">#F_BODY_MAIN#</div>{endif/}{if F_BODY_SUB/}<div class="a-CardView-subContent{if F_BODY_SUB_CSS/} #F_BODY_SUB_CSS#{endi'
||'f/}">#F_BODY_SUB#</div>{endif/}</div>',
'            {if F_B_PRIMARY/}<div class="a-CardView-actions"><div class="a-CardView-actionsPrimary">#F_B_PRIMARY#</div>{if F_B_CENTER/}<div class="flip-actons-center">#F_B_CENTER#</div>{endif/}{if F_B_SECONDARY/}<div class="a-CardView-actionsSecondar'
||'y">#F_B_SECONDARY#</div>{endif/}</div>',
'            {elseif F_B_SECONDARY/}<div class="a-CardView-actions">{if F_B_CENTER/}<div class="flip-actons-center">#F_B_CENTER#</div>{endif/}<div class="a-CardView-actionsSecondary">#F_B_SECONDARY#</div></div>',
'            {else/}',
'                {if F_B_CENTER/}',
'                <div class="a-CardView-actions flip-actons-center">',
'                    #F_B_CENTER#',
'                </div>       ',
'                {endif/}',
'            {endif/}',
'        </div>',
'        {if B_F_LINK/}<a href="#B_F_LINK#" class="flip-card-url">{endif/}',
'        <div class="flip-card-back{if B_CARD_CSS/} #B_CARD_CSS#{endif/}{if B_TITLE/} has-title{endif/}{if B_SUBTITLE/} has-subtitle{endif/}{if B_BODY_MAIN/} has-body{endif/}{if B_BODY_SUB/} has-secondary{endif/}{if B_ICON_SOURCE/} has-icon{case B_ICO'
||'N_POSITION/}{when a-CardView-iconWrap--start/} has-icon--start{when a-CardView-iconWrap--end/} has-icon--end{otherwise/} has-icon--top{endcase/}{endif/}{if B_BADGE_VAL/} has-badge{endif/}{if B_MEDIA_SOURCE/} has-media{case B_MEDIA_POSITION/}{when a-C'
||'ardView-media--first/} has-media--first{when a-CardView-media--body/} has-media--body{otherwise/} has-media--background{endcase/}{case B_MEDIA_SIZING/}{when a-CardView-media--fit/} has-media--fit{otherwise/} has-media--cover{endcase/}{endif/}">',
'            {if B_MEDIA_SOURCE/}',
'            <div class="a-CardView-media #B_MEDIA_POSITION#{if B_MEDIA_APPEAR/} #B_MEDIA_APPEAR#{endif/}{if B_MEDIA_SIZING/} #B_MEDIA_SIZING#{endif/}">',
'                {case B_MEDIA_SOURCE/}',
'                {when a-CardView-mediaImg/}',
'                    <img class="a-CardView-mediaImg" src="#B_MEDIA#" alt="" loading="lazy">',
'                {otherwise/}',
'                    #B_MEDIA#',
'                {endcase/}',
'            </div>       ',
'            {endif/}',
'            <div class="a-CardView-header">',
'                {case B_ICON_SOURCE/}',
'                    {when a-CardView-icon/}',
'                        <div class="a-CardView-iconWrap #B_ICON_POSITION#">',
'                            <span class="a-CardView-icon u-color fa #B_ICON#" aria-hidden="true"></span>',
'                        </div>',
'                    {when a-CardView-initials/}',
'                        <div class="a-CardView-iconWrap #B_ICON_POSITION#">',
'                            <span class="a-CardView-initials u-color #B_ICON#" aria-hidden="true">#ICON_INIC#</span>',
'                        </div>',
'                    {when a-CardView-iconImg/}    ',
'                        <div class="a-CardView-iconWrap #B_ICON_POSITION#">',
'                            <img class="a-CardView-iconImg #B_ICON#" src="#B_ICON_URL#" alt="" loading="lazy">',
'                        </div>',
'                    {endcase/}',
'                <div class="a-CardView-headerBody">{if B_TITLE/}<h3 class="a-CardView-title{if B_TITLE_CSS/} #B_TITLE_CSS#{endif/}">#B_TITLE#</h3>{endif/}{if B_SUBTITLE/}<h4 class="a-CardView-subTitle{if B_SUBTITLE_CSS/} #B_SUBTITLE_CSS#{endif/}">#B_'
||'SUBTITLE#</h4>{endif/}</div>',
'				{if B_BADGE_VAL/}',
'				<div class="a-CardView-badge" title="#B_BADGE_LABEL# #B_BADGE_VAL#">',
'                    {if B_BADGE_LABEL/}    ',
'					<span class="a-CardView-badgeLabel">#B_BADGE_LABEL#</span>',
'                    {endif/}',
'					<span class="a-CardView-badgeValue">#B_BADGE_VAL#</span>',
'				</div>           ',
'				{endif/}     ',
'            </div>',
'			<div class="a-CardView-body">',
'                {if B_BODY_MAIN/}<div class="a-CardView-mainContent{if B_BODY_MAIN_CSS/} #B_BODY_MAIN_CSS#{endif/}">#B_BODY_MAIN#</div>{endif/}',
'                {if B_BODY_SUB/}<div class="a-CardView-subContent{if B_BODY_SUB_CSS/} #B_BODY_SUB_CSS#{endif/}">#B_BODY_SUB#</div>{endif/}',
'            </div>   ',
'            <div class="flip-actons-bottom">',
'                {if B_B_PRIMARY/}<div class="a-CardView-actions"><div class="a-CardView-actionsPrimary">#B_B_PRIMARY#</div>{if B_B_CENTER/}<div class="flip-actons-center">#B_B_CENTER#</div>{endif/}{if B_B_SECONDARY/}<div class="a-CardView-actionsSeco'
||'ndary">#B_B_SECONDARY#</div>{endif/}</div>',
'                {elseif B_B_SECONDARY/}<div class="a-CardView-actions">{if B_B_CENTER/}<div class="flip-actons-center">#B_B_CENTER#</div>{endif/}<div class="a-CardView-actionsSecondary">#B_B_SECONDARY#</div></div>',
'                {else/}',
'                    {if B_B_CENTER/}',
'                    <div class="a-CardView-actions flip-actons-center">',
'                        #B_B_CENTER#',
'                    </div>       ',
'                    {endif/}',
'                {endif/}',
'            </div>',
'        </div>',
'        {if B_F_LINK/}</a>{endif/}',
'    </div>',
'</div>',
'{endif/}'))
,p_default_escape_mode=>'RAW'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div aria-hidden="false" class="{case FLIP_CARD_ACTION/}{when click/}t-click-card {otherwise/}t-hover-card {endcase/}t-CardsRegion #T_STYLE# {if APEX$COMPONENT_CSS_CLASSES/} #APEX$COMPONENT_CSS_CLASSES#{endif/}">',
'	<div class="a-TMV--cards a-TMV a-TMV--variableHeight">',
'        {if T=APEX$HAS_MESSAGE/}<div class="a-GV-noDataMsg a-GV-altMessage" role="region" aria-label="#APEX$MESSAGE#"><div class="a-GV-altMessage-icon" role="img" aria-label="#APEX$MESSAGE#"><span class="a-Icon icon-irr-no-results"></span></div><div '
||'role="status"><span class="a-GV-altMessage-text">#APEX$MESSAGE#</span></div></div>',
'        {else/}',
'            <div class="a-TMV-w-scroll" tabindex="-1">',
'                <ul class="a-CardView-items #T_LAYOUT#{if T_GRID_COLUMN/} #T_GRID_COLUMN#{endif/}">#APEX$ROWS#</ul>',
'            </div>',
'        {endif/}',
'    </div>',
'</div>'))
,p_report_row_template=>'<li class="a-CardView-item" #APEX$ROW_IDENTIFICATION# data-rownum="#APEX$ROW_ID#">#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'23.2.0'
,p_about_url=>'https://github.com/grlicaa/flipcard'
,p_files_version=>171
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(6575999437091282195)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_title=>'Template options'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(6575999784906282195)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_title=>'Front card'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(6576000184927282195)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_title=>'Back card'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578158575395811973)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'B_TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578158928974818541)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'B_TITLE_CSS'
,p_prompt=>'Title Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6578158575395811973)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6576018766666956525)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'F_TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6576019109068962504)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>62
,p_static_id=>'F_TITLE_CSS'
,p_prompt=>'Title Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6576018766666956525)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578159277549855859)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>10
,p_static_id=>'F_CARD_CSS'
,p_prompt=>'Card Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_help_text=>'here you can define top-level classes for the front card.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578159612244860190)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>10
,p_static_id=>'B_CARD_CSS'
,p_prompt=>'Card Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_help_text=>'here you can define top-level classes for the back card.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578353518422934629)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'F_BODY_MAIN'
,p_prompt=>'Body'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'<div class="a-CardView-mainContent">&BODY_COLUMN.</div>',
'<div class="a-CardView-subContent">&SECONDARY_BODY_COLUMN.</div>',
'</pre>'))
,p_help_text=>'In this field, you can define body look and feel. Also, you can add a secondary body if needed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578353766552937302)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'B_BODY_MAIN'
,p_prompt=>'Body'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'<div class="a-CardView-mainContent">&BODY_COLUMN.</div>',
'<div class="a-CardView-subContent">&SECONDARY_BODY_COLUMN.</div>',
'</pre>'))
,p_help_text=>'In this field, you can define body look and feel. Also, you can add a secondary body if needed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578354112547942005)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'F_BODY_MAIN_CSS'
,p_prompt=>'Body Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6578353518422934629)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_help_text=>'In this field, you can add additional classes to the body section.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578354422405944258)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'B_BODY_MAIN_CSS'
,p_prompt=>'Body Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6578353766552937302)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_help_text=>'In this field, you can add additional classes to the body section.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6589775239363327591)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'F_ICON_SOURCE'
,p_prompt=>'Icon Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_null_text=>'No Icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6590533151824088132)
,p_plugin_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_display_sequence=>10
,p_display_value=>'Icon Class'
,p_return_value=>'a-CardView-icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6590557667465091316)
,p_plugin_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_display_sequence=>20
,p_display_value=>'Inicials'
,p_return_value=>'a-CardView-initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6591667530478092745)
,p_plugin_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_display_sequence=>30
,p_display_value=>'Image URL'
,p_return_value=>'a-CardView-iconImg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6591790316364099588)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'B_ICON_SOURCE'
,p_prompt=>'Icon Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_null_text=>'No Icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6591885201588101368)
,p_plugin_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_display_sequence=>10
,p_display_value=>'Icon Class'
,p_return_value=>'a-CardView-icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6593217520851345668)
,p_plugin_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_display_sequence=>20
,p_display_value=>'Inicials'
,p_return_value=>'a-CardView-initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6593333995405348539)
,p_plugin_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_display_sequence=>30
,p_display_value=>'Image URL'
,p_return_value=>'a-CardView-iconImg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6595483201962369092)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'F_ICON_POSITION'
,p_prompt=>'Icon Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-iconWrap--top'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6596529036389126639)
,p_plugin_attribute_id=>wwv_flow_imp.id(6595483201962369092)
,p_display_sequence=>10
,p_display_value=>'Top'
,p_return_value=>'a-CardView-iconWrap--top'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6596530008476127449)
,p_plugin_attribute_id=>wwv_flow_imp.id(6595483201962369092)
,p_display_sequence=>20
,p_display_value=>'Start'
,p_return_value=>'a-CardView-iconWrap--start'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6597342859642371473)
,p_plugin_attribute_id=>wwv_flow_imp.id(6595483201962369092)
,p_display_sequence=>30
,p_display_value=>'End'
,p_return_value=>'a-CardView-iconWrap--end'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6599485267201135494)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'B_ICON_POSITION'
,p_prompt=>' Icon Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-iconWrap--top'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6599492360042136530)
,p_plugin_attribute_id=>wwv_flow_imp.id(6599485267201135494)
,p_display_sequence=>10
,p_display_value=>'Top'
,p_return_value=>'a-CardView-iconWrap--top'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6599675839674380804)
,p_plugin_attribute_id=>wwv_flow_imp.id(6599485267201135494)
,p_display_sequence=>20
,p_display_value=>'Start'
,p_return_value=>'a-CardView-iconWrap--start'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6599528237819138604)
,p_plugin_attribute_id=>wwv_flow_imp.id(6599485267201135494)
,p_display_sequence=>30
,p_display_value=>'End'
,p_return_value=>'a-CardView-iconWrap--end'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578358129666024378)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'F_BADGE_VAL'
,p_prompt=>' Badge Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578358431449028195)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'B_BADGE_VAL'
,p_prompt=>'Badge Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578358658771031509)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'F_BADGE_LABEL'
,p_prompt=>'Badge Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578359033861033158)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'B_BADGE_LABEL'
,p_prompt=>'Badge Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578360231318082221)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'F_MEDIA'
,p_prompt=>'Media'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6578360511211084577)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'B_MEDIA'
,p_prompt=>'Media'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6640636979177630980)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>205
,p_static_id=>'F_MEDIA_SOURCE'
,p_prompt=>'Media Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_null_text=>'No Media'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6640456482399876154)
,p_plugin_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_display_sequence=>10
,p_display_value=>'Image URL'
,p_return_value=>'a-CardView-mediaImg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6640496005648877897)
,p_plugin_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_display_sequence=>20
,p_display_value=>'Custom'
,p_return_value=>'a-CardMediaCustom'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6640832010205883989)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>215
,p_static_id=>'B_MEDIA_SOURCE'
,p_prompt=>'Media Source'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_null_text=>'No Media'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6640844649105885340)
,p_plugin_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_display_sequence=>10
,p_display_value=>'Image URL'
,p_return_value=>'a-CardView-mediaImg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6641201165013643476)
,p_plugin_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_display_sequence=>20
,p_display_value=>'Custom'
,p_return_value=>'a-CardMediaCustom'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6545560201519858711)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>27
,p_display_sequence=>64
,p_static_id=>'F_SUBTITLE'
,p_prompt=>'Subtitle'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6545624827557617884)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>28
,p_display_sequence=>44
,p_static_id=>'B_SUBTITLE'
,p_prompt=>'Subtitle'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6545583480529864365)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>29
,p_display_sequence=>66
,p_static_id=>'F_SUBTITLE_CSS'
,p_prompt=>'Subtitle Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6545560201519858711)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6545667652608623701)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>30
,p_display_sequence=>46
,p_static_id=>'B_SUBTITLE_CSS'
,p_prompt=>'Subtitle Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6545624827557617884)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6555371772408764772)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>31
,p_display_sequence=>124
,p_static_id=>'F_BODY_SUB'
,p_prompt=>'Secondary Body'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6555915417330768236)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>32
,p_display_sequence=>134
,p_static_id=>'B_BODY_SUB'
,p_prompt=>'Scondary Body'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6556676134337770538)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>33
,p_display_sequence=>126
,p_static_id=>'F_BODY_SUB_CSS'
,p_prompt=>'Scondary Body Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6555371772408764772)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6556996117610773059)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>34
,p_display_sequence=>136
,p_static_id=>'B_BODY_SUB_CSS'
,p_prompt=>'Scondary Body Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6555915417330768236)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6605818739726193499)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>35
,p_display_sequence=>170
,p_static_id=>'F_ICON'
,p_prompt=>'Icon Class'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6605751250345440670)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>36
,p_display_sequence=>180
,p_static_id=>'B_ICON'
,p_prompt=>'Icon Class'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
end;
/
begin
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6606246210207450533)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>37
,p_display_sequence=>175
,p_static_id=>'F_ICON_INIC'
,p_prompt=>'Inicials'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'a-CardView-initials'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6607193924076212885)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>38
,p_display_sequence=>185
,p_static_id=>'B_ICON_INIC'
,p_prompt=>'Inicials'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'a-CardView-initials'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6607547689406220800)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>39
,p_display_sequence=>177
,p_static_id=>'F_ICON_URL'
,p_prompt=>'Icon URL'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6589775239363327591)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'a-CardView-iconImg'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6608257769949467742)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>40
,p_display_sequence=>188
,p_static_id=>'B_ICON_URL'
,p_prompt=>'Icon URL'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6591790316364099588)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'a-CardView-iconImg'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6641542103722895330)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>41
,p_display_sequence=>208
,p_static_id=>'F_MEDIA_POSITION'
,p_prompt=>'Media Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-media--body'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6641549171668896165)
,p_plugin_attribute_id=>wwv_flow_imp.id(6641542103722895330)
,p_display_sequence=>10
,p_display_value=>'First'
,p_return_value=>'a-CardView-media--first'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6641558392926897462)
,p_plugin_attribute_id=>wwv_flow_imp.id(6641542103722895330)
,p_display_sequence=>20
,p_display_value=>'Body'
,p_return_value=>'a-CardView-media--body'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6642039571843656065)
,p_plugin_attribute_id=>wwv_flow_imp.id(6641542103722895330)
,p_display_sequence=>30
,p_display_value=>'Background'
,p_return_value=>'a-CardView-media--background'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6642085809740661055)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>42
,p_display_sequence=>217
,p_static_id=>'B_MEDIA_POSITION'
,p_prompt=>'Media Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-media--body'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6642095936900662635)
,p_plugin_attribute_id=>wwv_flow_imp.id(6642085809740661055)
,p_display_sequence=>10
,p_display_value=>'First'
,p_return_value=>'a-CardView-media--first'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6642107450932663841)
,p_plugin_attribute_id=>wwv_flow_imp.id(6642085809740661055)
,p_display_sequence=>20
,p_display_value=>'Body'
,p_return_value=>'a-CardView-media--body'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6642124630938664900)
,p_plugin_attribute_id=>wwv_flow_imp.id(6642085809740661055)
,p_display_sequence=>30
,p_display_value=>'Background'
,p_return_value=>'a-CardView-media--background '
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6643370756959676499)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>43
,p_display_sequence=>210
,p_static_id=>'F_MEDIA_APPEAR'
,p_prompt=>'Media Appearance'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'a-CardView-media--widescreen'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
,p_null_text=>'Auto'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6643385155262678589)
,p_plugin_attribute_id=>wwv_flow_imp.id(6643370756959676499)
,p_display_sequence=>10
,p_display_value=>'Square'
,p_return_value=>'a-CardView-media--square'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6643804868499679720)
,p_plugin_attribute_id=>wwv_flow_imp.id(6643370756959676499)
,p_display_sequence=>20
,p_display_value=>'Widescreen'
,p_return_value=>'a-CardView-media--widescreen'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6643787645395929446)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>44
,p_display_sequence=>220
,p_static_id=>'B_MEDIA_APPEAR'
,p_prompt=>'Media Appearance'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'a-CardView-media--widescreen'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
,p_null_text=>'Auto'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6644174556779687147)
,p_plugin_attribute_id=>wwv_flow_imp.id(6643787645395929446)
,p_display_sequence=>10
,p_display_value=>'Square'
,p_return_value=>'a-CardView-media--square'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6644179235314688141)
,p_plugin_attribute_id=>wwv_flow_imp.id(6643787645395929446)
,p_display_sequence=>20
,p_display_value=>'Widescreen'
,p_return_value=>'Widescreen'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6645197666282697970)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>45
,p_display_sequence=>215
,p_static_id=>'F_MEDIA_SIZING'
,p_prompt=>'Media Sizing'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-media--fit'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640636979177630980)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999784906282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6644845945114941887)
,p_plugin_attribute_id=>wwv_flow_imp.id(6645197666282697970)
,p_display_sequence=>10
,p_display_value=>'Cover'
,p_return_value=>'a-CardView-media--cover'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6644854319408943183)
,p_plugin_attribute_id=>wwv_flow_imp.id(6645197666282697970)
,p_display_sequence=>20
,p_display_value=>'Fit'
,p_return_value=>'a-CardView-media--fit'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6646639697990707061)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>46
,p_display_sequence=>225
,p_static_id=>'B_MEDIA_SIZING'
,p_prompt=>'Media Sizing'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-media--fit'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6640832010205883989)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6576000184927282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6646647633256708091)
,p_plugin_attribute_id=>wwv_flow_imp.id(6646639697990707061)
,p_display_sequence=>10
,p_display_value=>'Cover'
,p_return_value=>'a-CardView-media--cover'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6646649857482708872)
,p_plugin_attribute_id=>wwv_flow_imp.id(6646639697990707061)
,p_display_sequence=>20
,p_display_value=>'Fit'
,p_return_value=>'a-CardView-media--fit'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6576356656776059629)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'T_LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'a-CardView-items--grid'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999437091282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576356996437060402)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576356656776059629)
,p_display_sequence=>10
,p_display_value=>'Grid'
,p_return_value=>'a-CardView-items--grid'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576357395008061743)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576356656776059629)
,p_display_sequence=>20
,p_display_value=>'Float'
,p_return_value=>'a-CardView-items--float'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576357826261062539)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576356656776059629)
,p_display_sequence=>30
,p_display_value=>'Horizontal (Row)'
,p_return_value=>'a-CardView-items--row'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6576358996151085768)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'T_GRID_COLUMN'
,p_prompt=>'Grid Column'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(6576356656776059629)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'a-CardView-items--grid'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999437091282195)
,p_null_text=>'Auto'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576359317458087230)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576358996151085768)
,p_display_sequence=>10
,p_display_value=>'2 columns'
,p_return_value=>'a-CardView-items--grid2col'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576359671799087968)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576358996151085768)
,p_display_sequence=>20
,p_display_value=>'3 columns'
,p_return_value=>'a-CardView-items--grid3col'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576360062086088910)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576358996151085768)
,p_display_sequence=>30
,p_display_value=>'4 columns'
,p_return_value=>'a-CardView-items--grid4col'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576360521773089862)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576358996151085768)
,p_display_sequence=>40
,p_display_value=>'5 columns'
,p_return_value=>'a-CardView-items--grid5col'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6576353056972014434)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>5
,p_display_sequence=>5
,p_static_id=>'T_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'t-CardsRegion--styleA'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999437091282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576353443179015323)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576353056972014434)
,p_display_sequence=>10
,p_display_value=>'Style A'
,p_return_value=>'t-CardsRegion--styleA'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576353815416016715)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576353056972014434)
,p_display_sequence=>20
,p_display_value=>'Style B'
,p_return_value=>'t-CardsRegion--styleB'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6576354157686017981)
,p_plugin_attribute_id=>wwv_flow_imp.id(6576353056972014434)
,p_display_sequence=>30
,p_display_value=>'Style C'
,p_return_value=>'t-CardsRegion--styleC'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(6476300462938452728)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>26
,p_display_sequence=>1
,p_static_id=>'FLIP_CARD_ACTION'
,p_prompt=>'Flip Card on'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'hover'
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(6575999437091282195)
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6476339759165453948)
,p_plugin_attribute_id=>wwv_flow_imp.id(6476300462938452728)
,p_display_sequence=>10
,p_display_value=>'Hover'
,p_return_value=>'hover'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(6476394291183454651)
,p_plugin_attribute_id=>wwv_flow_imp.id(6476300462938452728)
,p_display_sequence=>20
,p_display_value=>'Click'
,p_return_value=>'click'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(6578368268839586836)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="t-Button{if IS_HOT/} t-Button--hot{endif/} {if ICON_CLASSES/}t-Button--iconText{else/}t-Button--text{endif/} #CSS_CLASSES#" onclick="event.stopPropagation()" href="#LINK_URL#" title="#LABEL!ATTR#" #LINK_ATTR# {if IS_DISABLED/}disabled{endif'
||'/}>',
'  <span class="t-Button-label">',
'    {if IS_ICON_ONLY/}',
'        <span class="t-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'    {else/}',
'        <span class="t-Button-icon #ICON_CLASSES#" aria-hidden="true"></span>',
'        <span class="t-Button-text">#LABEL#</span>    ',
'    {endif/}  ',
'  </span>',
'</a>'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(6578368812262603020)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="t-Button t-Button--borderless t-Button--icon" {if IS_DISABLED/}disabled{endif/} onclick="event.stopPropagation();$(''##MENU_ID#'').menu(''toggle'',event.pageX,event.pageY);" type="button" data-menu="#MENU_ID#">',
'  <span class="t-Button-label">',
'    <span class="t-Button-icon oj-ux-ico-overflow-h" aria-hidden="true"></span>',
'    <span class="t-Button-text">#LABEL#</span>',
'  </span>',
'</button> #MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6933094997901132995)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Back FullCard LLink'
,p_static_id=>'B_F_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6963784624784534236)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Front Button Primary'
,p_static_id=>'F_B_PRIMARY'
,p_display_sequence=>60
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6963810399319780613)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Front Button Center'
,p_static_id=>'F_B_CENTER'
,p_display_sequence=>70
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6964429845353539697)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Front Button Secondary'
,p_static_id=>'F_B_SECONDARY'
,p_display_sequence=>80
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6964687841405569445)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Back Button Secondary'
,p_static_id=>'B_B_SECONDARY'
,p_display_sequence=>40
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6966946881285830706)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Back Button Primary'
,p_static_id=>'B_B_PRIMARY'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(6967416559759592492)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_name=>'Back Button Centar'
,p_static_id=>'B_B_CENTER'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E666C69702D636172642D696E6E6572207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20207472616E736974696F6E3A207472616E73666F726D20';
wwv_flow_imp.g_varchar2_table(2) := '302E38733B0D0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0D0A2020626F782D736861646F773A203020347078203870782030207267626128302C302C302C302E32293B0D0A7D0D0A0D0A2E742D686F7665722D6361';
wwv_flow_imp.g_varchar2_table(3) := '7264202E666C69702D636172643A686F766572202E666C69702D636172642D696E6E6572207B0D0A20207472616E73666F726D3A20726F746174655928313830646567293B0D0A7D0D0A0D0A2E742D636C69636B2D63617264202E666C69707065642D63';
wwv_flow_imp.g_varchar2_table(4) := '617264202E666C69702D636172642D696E6E6572207B0D0A20207472616E73666F726D3A20726F746174655928313830646567293B0D0A7D0D0A0D0A2E742D636C69636B2D63617264202E666C69702D636172643A686F766572207B0D0A202020206375';
wwv_flow_imp.g_varchar2_table(5) := '72736F723A20706F696E7465723B0D0A7D0D0A0D0A2E666C69702D636172642D66726F6E74207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20202D';
wwv_flow_imp.g_varchar2_table(6) := '7765626B69742D6261636B666163652D7669736962696C6974793A2068696464656E3B0D0A20206261636B666163652D7669736962696C6974793A2068696464656E3B0D0A7D0D0A0D0A2E666C69702D636172642D6261636B207B0D0A2020706F736974';
wwv_flow_imp.g_varchar2_table(7) := '696F6E3A206162736F6C7574653B0D0A2020746F703A20303B206C6566743A20303B200D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A20202D7765626B69742D6261636B666163652D7669736962696C6974793A';
wwv_flow_imp.g_varchar2_table(8) := '2068696464656E3B0D0A20206261636B666163652D7669736962696C6974793A2068696464656E3B0D0A20207A2D696E6465783A3530303B0D0A0D0A20206261636B67726F756E642D636F6C6F723A2077686974653B0D0A2020636F6C6F723A20626C61';
wwv_flow_imp.g_varchar2_table(9) := '636B3B0D0A20207472616E73666F726D3A20726F746174655928313830646567293B0D0A7D0D0A0D0A0D0A2E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A2020677269642D74656D706C6174652D636F6C';
wwv_flow_imp.g_varchar2_table(10) := '756D6E733A206175746F3B0D0A7D0D0A2E666C69702D6163746F6E732D626F74746F6D2C0D0A2E666C69702D6163746F6E732D746F70207B0D0A20202020706F736974696F6E3A6162736F6C7574653B0D0A2020202077696474683A313030253B0D0A20';
wwv_flow_imp.g_varchar2_table(11) := '2020207A2D696E6465783A3630303B0D0A7D0D0A0D0A2E666C69702D6163746F6E732D626F74746F6D207B0D0A20202020626F74746F6D3A303B202020200D0A7D0D0A2E666C69702D6163746F6E732D746F70207B0D0A20202020746F703A303B0D0A7D';
wwv_flow_imp.g_varchar2_table(12) := '0D0A0D0A0D0A2E666C69702D6163746F6E732D63656E746572207B0D0A202020206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A0D0A2E612D43617264566965772D616374696F6E733A656D707479207B0D0A2020646973706C';
wwv_flow_imp.g_varchar2_table(13) := '61793A206E6F6E653B0D0A20206865696768743A3070783B0D0A7D0D0A0D0A0D0A2E612D43617264566965772D6974656D732D2D726F77202E666C69702D636172642D66726F6E742C0D0A2E612D43617264566965772D6974656D732D2D726F77202E66';
wwv_flow_imp.g_varchar2_table(14) := '6C69702D636172642D6261636B207B0D0A20202020646973706C61793A20666C65783B0D0A20202020666C65782D646972656374696F6E3A20726F773B0D0A7D0D0A0D0A2E612D43617264566965772D6974656D732D2D726F77202E666C69702D616374';
wwv_flow_imp.g_varchar2_table(15) := '6F6E732D626F74746F6D2C0D0A2E612D43617264566965772D6974656D732D2D726F77202E666C69702D6163746F6E732D746F70207B0D0A20202020706F736974696F6E3A7374617469633B0D0A2020202077696474683A6175746F3B0D0A202020207A';
wwv_flow_imp.g_varchar2_table(16) := '2D696E6465783A3630303B0D0A20202020646973706C61793A20636F6E74656E74733B0D0A7D0D0A2E612D43617264566965772D6974656D732D2D726F77202E666C69702D6163746F6E732D63656E746572207B0D0A202020206A7573746966792D636F';
wwv_flow_imp.g_varchar2_table(17) := '6E74656E743A2063656E7465723B0D0A7D0D0A0D0A2E612D43617264566965772D6D656469613A656D707479207B0D0A2020646973706C61793A206E6F6E653B0D0A20206865696768743A203070783B0D0A202077696474683A3070783B0D0A7D0D0A0D';
wwv_flow_imp.g_varchar2_table(18) := '0A612E666C69702D636172642D75726C207B0D0A2020636F6C6F723A20696E68657269743B202F2A20626C756520636F6C6F727320666F72206C696E6B7320746F6F202A2F0D0A2020746578742D6465636F726174696F6E3A20696E68657269743B202F';
wwv_flow_imp.g_varchar2_table(19) := '2A206E6F20756E6465726C696E65202A2F0D0A7D0D0A0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D';
wwv_flow_imp.g_varchar2_table(20) := '656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D62616467652E6861732D7365636F6E6461';
wwv_flow_imp.g_varchar2_table(21) := '72793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E';
wwv_flow_imp.g_varchar2_table(22) := '2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E68';
wwv_flow_imp.g_varchar2_table(23) := '61732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(24) := '74656D732D2D726F77202E6861732D7375627469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D4361726473526567696F6E2D2D7374796C6543202E61';
wwv_flow_imp.g_varchar2_table(25) := '2D43617264566965772D6974656D732D2D726F77202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E742D436172647352';
wwv_flow_imp.g_varchar2_table(26) := '6567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C200D0A2E';
wwv_flow_imp.g_varchar2_table(27) := '742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D4361726456';
wwv_flow_imp.g_varchar2_table(28) := '6965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20313670783B0D0A7D20200D0A0D0A2E612D43617264566965772D6D656469612D2D737175617265202E612D43617264566965772D6D65646961496D672C202E612D';
wwv_flow_imp.g_varchar2_table(29) := '43617264566965772D6D656469612D2D73717561726520696672616D652C202E612D43617264566965772D6D656469612D2D7769646573637265656E202E612D43617264566965772D6D65646961496D672C202E612D43617264566965772D6D65646961';
wwv_flow_imp.g_varchar2_table(30) := '2D2D7769646573637265656E20696672616D65207B0D0A20206865696768743A206175746F3B0D0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(6575951096725365636)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_file_name=>'css/flip-card.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '202F2F20676C6F62616C206E616D65737061636520556E6974656420436F6465730D0A20766172207563203D207563207C7C207B7D3B0D0A0D0A202F2F206E616D65737061636520466C6970436172640D0A2075632E466C697043617264203D207B0D0A';
wwv_flow_imp.g_varchar2_table(2) := '202020202076657273696F6E3A2232332E312E302E30222C200D0A20202020206F70743A207B0D0A202020202020202064656275673A207B0D0A202020202020202020202020656E61626C65643A747275652C0D0A202020202020202020202020707265';
wwv_flow_imp.g_varchar2_table(3) := '6669783A2255434643203E20222C0D0A2020202020202020202020206C6F636174696F6E3A226E616D657370616365220D0A20202020202020207D0D0A202020207D2C202020200D0A202020205F64656275674D7367286C6F632C206D73672C20706172';
wwv_flow_imp.g_varchar2_table(4) := '616D312C20706172616D322C20706172616D332C20706172616D3429207B0D0A202020202020202069662028746869732E6F70742E64656275672E656E61626C6564290D0A202020202020202020202020617065782E64656275672E7472616365287468';
wwv_flow_imp.g_varchar2_table(5) := '69732E6F70742E64656275672E707265666978202B206C6F632B2022203E2022202B206D73672C20706172616D312C20706172616D322C20706172616D332C20706172616D34293B202F2F74726163650D0A202020207D2C0D0A202020205F6465627567';
wwv_flow_imp.g_varchar2_table(6) := '457272286C6F632C206D73672C20706172616D312C20706172616D322C20706172616D332C20706172616D3429207B0D0A202020202020202069662028746869732E6F70742E64656275672E656E61626C6564290D0A2020202020202020202020206170';
wwv_flow_imp.g_varchar2_table(7) := '65782E64656275672E6572726F7228746869732E6F70742E64656275672E707265666978202B206C6F632B2022203E2022202B206D73672C20706172616D312C20706172616D322C20706172616D332C20706172616D34293B0D0A202020207D2C20200D';
wwv_flow_imp.g_varchar2_table(8) := '0A202020207365744C697374656E65723A66756E6374696F6E2829207B0D0A202020202020202075632E466C6970436172642E5F64656275674D73672875632E466C6970436172642E6F70742E64656275672E6C6F636174696F6E2C20227365744C6973';
wwv_flow_imp.g_varchar2_table(9) := '74656E657220657865637574656422293B0D0A20202020202020202428222E742D636C69636B2D63617264202E612D436172645669657722292E6F66662822636C69636B22293B0D0A20202020202020202428222E742D636C69636B2D63617264202E61';
wwv_flow_imp.g_varchar2_table(10) := '2D436172645669657722292E6F6E2822636C69636B222C2066756E6374696F6E28297B0D0A202020202020202020202020242874686973292E746F67676C65436C6173732822666C69707065642D6361726422293B0D0A20202020202020207D293B0D0A';
wwv_flow_imp.g_varchar2_table(11) := '202020207D2C0D0A20202020736574466C69704F6E2870426F6F6C65616E203D20747275652C2070456C656D656E7429207B0D0A202020202020202075632E466C6970436172642E5F64656275674D73672875632E466C6970436172642E6F70742E6465';
wwv_flow_imp.g_varchar2_table(12) := '6275672E6C6F636174696F6E2C2022736574466C69704F6E206578656375746564222C2070426F6F6C65616E2C2070456C656D656E74293B0D0A20202020202020206966202870426F6F6C65616E29207B0D0A2020202020202020202020202428287045';
wwv_flow_imp.g_varchar2_table(13) := '6C656D656E743F70456C656D656E743A2222292B22202E742D636C69636B2D63617264202E612D436172645669657722292E616464436C6173732822666C69707065642D6361726422293B0D0A20202020202020207D0D0A2020202020202020656C7365';
wwv_flow_imp.g_varchar2_table(14) := '207B0D0A20202020202020202020202024282870456C656D656E743F70456C656D656E742B2220223A2222292B222E742D636C69636B2D63617264202E612D436172645669657722292E72656D6F7665436C6173732822666C69707065642D6361726422';
wwv_flow_imp.g_varchar2_table(15) := '293B0D0A20202020202020207D0D0A202020207D2C0D0A20202020696E69743A66756E6374696F6E2829207B0D0A2020202020202020617065782E6A51756572792820617065782E6750616765436F6E746578742420292E6F6E28202261706578726561';
wwv_flow_imp.g_varchar2_table(16) := '6479656E64222C2066756E6374696F6E2820652029207B0D0A20202020202020202020202075632E466C6970436172642E5F64656275674D73672875632E466C6970436172642E6F70742E64656275672E6C6F636174696F6E2C2022696E697420657865';
wwv_flow_imp.g_varchar2_table(17) := '637574656422293B0D0A20202020202020202020202024282077696E646F7720292E6F6E2820227461626C656D6F64656C76696577706167656368616E6765222C2066756E6374696F6E28206576656E742C20646174612029207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(18) := '20202020202020202075632E466C6970436172642E7365744C697374656E657228293B0D0A2020202020202020202020207D20293B0D0A20202020202020202020202075632E466C6970436172642E7365744C697374656E657228293B0D0A2020202020';
wwv_flow_imp.g_varchar2_table(19) := '2020207D20293B0D0A202020207D0D0A207D3B0D0A0D0A75632E466C6970436172642E696E697428293B0D0A0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(6605567537782185865)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_file_name=>'js/flipcard.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722075633D75637C7C7B7D3B75632E466C6970436172643D7B76657273696F6E3A2232332E312E302E30222C6F70743A7B64656275673A7B656E61626C65643A21302C7072656669783A2255434643203E20222C6C6F636174696F6E3A226E616D65';
wwv_flow_imp.g_varchar2_table(2) := '7370616365227D7D2C5F64656275674D736728652C692C642C612C742C63297B746869732E6F70742E64656275672E656E61626C65642626617065782E64656275672E747261636528746869732E6F70742E64656275672E7072656669782B652B22203E';
wwv_flow_imp.g_varchar2_table(3) := '20222B692C642C612C742C63297D2C5F646562756745727228652C692C642C612C742C63297B746869732E6F70742E64656275672E656E61626C65642626617065782E64656275672E6572726F7228746869732E6F70742E64656275672E707265666978';
wwv_flow_imp.g_varchar2_table(4) := '2B652B22203E20222B692C642C612C742C63297D2C7365744C697374656E65723A66756E6374696F6E28297B75632E466C6970436172642E5F64656275674D73672875632E466C6970436172642E6F70742E64656275672E6C6F636174696F6E2C227365';
wwv_flow_imp.g_varchar2_table(5) := '744C697374656E657220657865637574656422292C2428222E742D636C69636B2D63617264202E612D436172645669657722292E6F66662822636C69636B22292C2428222E742D636C69636B2D63617264202E612D436172645669657722292E6F6E2822';
wwv_flow_imp.g_varchar2_table(6) := '636C69636B222C2866756E6374696F6E28297B242874686973292E746F67676C65436C6173732822666C69707065642D6361726422297D29297D2C736574466C69704F6E28653D21302C69297B75632E466C6970436172642E5F64656275674D73672875';
wwv_flow_imp.g_varchar2_table(7) := '632E466C6970436172642E6F70742E64656275672E6C6F636174696F6E2C22736574466C69704F6E206578656375746564222C652C69292C653F242828697C7C2222292B22202E742D636C69636B2D63617264202E612D436172645669657722292E6164';
wwv_flow_imp.g_varchar2_table(8) := '64436C6173732822666C69707065642D6361726422293A242828693F692B2220223A2222292B222E742D636C69636B2D63617264202E612D436172645669657722292E72656D6F7665436C6173732822666C69707065642D6361726422297D2C696E6974';
wwv_flow_imp.g_varchar2_table(9) := '3A66756E6374696F6E28297B617065782E6A517565727928617065782E6750616765436F6E7465787424292E6F6E2822617065787265616479656E64222C2866756E6374696F6E2865297B75632E466C6970436172642E5F64656275674D73672875632E';
wwv_flow_imp.g_varchar2_table(10) := '466C6970436172642E6F70742E64656275672E6C6F636174696F6E2C22696E697420657865637574656422292C242877696E646F77292E6F6E28227461626C656D6F64656C76696577706167656368616E6765222C2866756E6374696F6E28652C69297B';
wwv_flow_imp.g_varchar2_table(11) := '75632E466C6970436172642E7365744C697374656E657228297D29292C75632E466C6970436172642E7365744C697374656E657228297D29297D7D2C75632E466C6970436172642E696E697428293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(6696066945069434707)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_file_name=>'js/flipcard.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E666C69702D636172642D696E6E65727B706F736974696F6E3A72656C61746976653B77696474683A313030253B6865696768743A313030253B7472616E736974696F6E3A7472616E73666F726D202E38733B7472616E73666F726D2D7374796C653A70';
wwv_flow_imp.g_varchar2_table(2) := '726573657276652D33643B626F782D736861646F773A3020347078203870782030207267626128302C302C302C2E32297D2E742D636C69636B2D63617264202E666C69707065642D63617264202E666C69702D636172642D696E6E65722C2E742D686F76';
wwv_flow_imp.g_varchar2_table(3) := '65722D63617264202E666C69702D636172643A686F766572202E666C69702D636172642D696E6E65727B7472616E73666F726D3A726F746174655928313830646567297D2E742D636C69636B2D63617264202E666C69702D636172643A686F7665727B63';
wwv_flow_imp.g_varchar2_table(4) := '7572736F723A706F696E7465727D2E666C69702D636172642D6261636B2C2E666C69702D636172642D66726F6E747B706F736974696F6E3A72656C61746976653B77696474683A313030253B6865696768743A313030253B2D7765626B69742D6261636B';
wwv_flow_imp.g_varchar2_table(5) := '666163652D7669736962696C6974793A68696464656E3B6261636B666163652D7669736962696C6974793A68696464656E7D2E666C69702D636172642D6261636B7B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B7A2D69';
wwv_flow_imp.g_varchar2_table(6) := '6E6465783A3530303B6261636B67726F756E642D636F6C6F723A236666663B636F6C6F723A233030303B7472616E73666F726D3A726F746174655928313830646567297D2E612D43617264566965772D6974656D732D2D726F77202E612D436172645669';
wwv_flow_imp.g_varchar2_table(7) := '65777B677269642D74656D706C6174652D636F6C756D6E733A6175746F7D2E666C69702D6163746F6E732D626F74746F6D2C2E666C69702D6163746F6E732D746F707B706F736974696F6E3A6162736F6C7574653B77696474683A313030253B7A2D696E';
wwv_flow_imp.g_varchar2_table(8) := '6465783A3630307D2E666C69702D6163746F6E732D626F74746F6D7B626F74746F6D3A307D2E666C69702D6163746F6E732D746F707B746F703A307D2E666C69702D6163746F6E732D63656E7465727B6A7573746966792D636F6E74656E743A63656E74';
wwv_flow_imp.g_varchar2_table(9) := '65727D2E612D43617264566965772D616374696F6E733A656D7074797B646973706C61793A6E6F6E653B6865696768743A307D2E612D43617264566965772D6974656D732D2D726F77202E666C69702D636172642D6261636B2C2E612D43617264566965';
wwv_flow_imp.g_varchar2_table(10) := '772D6974656D732D2D726F77202E666C69702D636172642D66726F6E747B646973706C61793A666C65783B666C65782D646972656374696F6E3A726F777D2E612D43617264566965772D6974656D732D2D726F77202E666C69702D6163746F6E732D626F';
wwv_flow_imp.g_varchar2_table(11) := '74746F6D2C2E612D43617264566965772D6974656D732D2D726F77202E666C69702D6163746F6E732D746F707B706F736974696F6E3A7374617469633B77696474683A6175746F3B7A2D696E6465783A3630303B646973706C61793A636F6E74656E7473';
wwv_flow_imp.g_varchar2_table(12) := '7D2E612D43617264566965772D6974656D732D2D726F77202E666C69702D6163746F6E732D63656E7465727B6A7573746966792D636F6E74656E743A63656E7465727D2E612D43617264566965772D6D656469613A656D7074797B646973706C61793A6E';
wwv_flow_imp.g_varchar2_table(13) := '6F6E653B6865696768743A303B77696474683A307D612E666C69702D636172642D75726C7B636F6C6F723A696E68657269743B746578742D6465636F726174696F6E3A696E68657269747D2E742D4361726473526567696F6E2D2D7374796C6543202E61';
wwv_flow_imp.g_varchar2_table(14) := '2D43617264566965772D6974656D732D2D726F77202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(15) := '6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(16) := '67696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C2E742D436172';
wwv_flow_imp.g_varchar2_table(17) := '6473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F';
wwv_flow_imp.g_varchar2_table(18) := '64792C2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7375627469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D436172';
wwv_flow_imp.g_varchar2_table(19) := '64566965772D626F64792C2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D';
wwv_flow_imp.g_varchar2_table(20) := '2D626F647929202E612D43617264566965772D626F64792C2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D';
wwv_flow_imp.g_varchar2_table(21) := '656469612D2D626F647929202E612D43617264566965772D626F64792C2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D7469746C652E6861732D7365636F6E646172793A';
wwv_flow_imp.g_varchar2_table(22) := '6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64797B70616464696E672D626C6F636B2D73746172743A313670787D2E612D43617264566965772D6D656469612D2D737175617265202E612D43617264566965';
wwv_flow_imp.g_varchar2_table(23) := '772D6D65646961496D672C2E612D43617264566965772D6D656469612D2D73717561726520696672616D652C2E612D43617264566965772D6D656469612D2D7769646573637265656E202E612D43617264566965772D6D65646961496D672C2E612D4361';
wwv_flow_imp.g_varchar2_table(24) := '7264566965772D6D656469612D2D7769646573637265656E20696672616D657B6865696768743A6175746F7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(7071700876101148858)
,p_plugin_id=>wwv_flow_imp.id(6568375575969604780)
,p_file_name=>'css/flip-card.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
