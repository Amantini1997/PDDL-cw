;Copyright 2018 The MITRE Corporation. All rights reserved. Approved for public release. Distribution unlimited 17-2122.
; For more information on CALDERA, the automated adversary emulation system, visit https://github.com/mitre/caldera or email attack@mitre.org
; This has 10 hosts, 16 user, 1 admin per host, 3 active account per host
(define (problem p10_hosts_trial_9)
(:domain caldera)
(:objects
    id_fmrat id_fnrat id_fjrat id_firat id_fqrat id_frrat id_forat id_fgrat id_fkrat id_flrat id_fprat - observedrat
    str__r str__dw str__dv str__du str__q str__db str__da str__ey str__james str__robert str__michael str__bp str__ec str__cs str__cn str__ex str__dn str__bd str__susan str__bw str__ej str__fe str__m str__e str__i str__dp str__ff str__cm str__ew str__ca str__eq str__ce str__john str__cf str__y str__maria str__cz str__dg str__elizabeth str__ed str__cb str__barbara str__alpha str__do str__b str__bt str__jennifer str__bh str__cu str__bs str__charles str__u str__di str__william str__ct str__n str__linda str__ek str__fh str__ep str__f str__z str__richard str__dh str__bx str__bc str__cj str__bg str__david str__ei str__j str__bl str__patricia str__er str__eb str__v str__bo str__ci str__fd str__bk str__mary - string
    num__69 num__76 num__125 num__104 num__83 num__132 num__97 num__117 num__75 num__82 num__68 num__89 num__131 num__103 num__96 num__111 num__118 num__110 num__90 num__124 - num
    id_gifile id_ghfile id_gjfile id_gkfile id_gcfile id_gdfile id_ggfile id_glfile id_gefile id_gffile - observedfile
    id_cptimedelta id_eftimedelta id_dytimedelta id_ddtimedelta id_ettimedelta id_dktimedelta id_drtimedelta id_fatimedelta id_emtimedelta id_cwtimedelta - observedtimedelta
    id_ddomaincredential id_bjdomaincredential id_xdomaincredential id_ldomaincredential id_bzdomaincredential id_bndomaincredential id_cddomaincredential id_bfdomaincredential id_cldomaincredential id_brdomaincredential id_hdomaincredential id_bbdomaincredential id_bvdomaincredential id_pdomaincredential id_tdomaincredential id_chdomaincredential - observeddomaincredential
    id_dxhost id_eshost id_ezhost id_cvhost id_dqhost id_dchost id_elhost id_cohost id_eehost id_djhost - observedhost
    id_gdomainuser id_cdomainuser id_odomainuser id_kdomainuser id_ccdomainuser id_bmdomainuser id_wdomainuser id_budomainuser id_cgdomainuser id_bedomainuser id_badomainuser id_sdomainuser id_bqdomainuser id_ckdomainuser id_bydomainuser id_bidomainuser - observeddomainuser
    id_fwshare id_fxshare id_ftshare id_gbshare id_fvshare id_fzshare id_gashare id_fsshare id_fushare id_fyshare - observedshare
    id_adomain - observeddomain
    id_gtschtask id_gmschtask id_gqschtask id_guschtask id_gvschtask id_grschtask id_goschtask id_gsschtask id_gpschtask id_gnschtask - observedschtask
)
(:init
    (knows id_eehost)
    (knows id_fgrat)
    (knows_property id_eehost pfqdn)
    (knows_property id_fgrat pexecutable)
    (knows_property id_fgrat phost)
    (MEM_CACHED_DOMAIN_CREDS id_cohost id_cddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cohost id_ddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cohost id_pdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cvhost id_bjdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cvhost id_brdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cvhost id_chdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dchost id_brdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dchost id_cddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dchost id_ldomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_djhost id_brdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_djhost id_cddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_djhost id_pdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dqhost id_bvdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dqhost id_cldomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dqhost id_hdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dxhost id_bzdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dxhost id_cldomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_dxhost id_tdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eehost id_cddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eehost id_chdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eehost id_hdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_elhost id_bfdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_elhost id_brdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_elhost id_bzdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eshost id_hdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eshost id_ldomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_eshost id_xdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_ezhost id_bbdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_ezhost id_bzdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_ezhost id_tdomaincredential)
    (MEM_DOMAIN_USER_ADMINS id_cohost id_badomainuser)
    (MEM_DOMAIN_USER_ADMINS id_cvhost id_bydomainuser)
    (MEM_DOMAIN_USER_ADMINS id_dchost id_ccdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_djhost id_odomainuser)
    (MEM_DOMAIN_USER_ADMINS id_dqhost id_cdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_dxhost id_bqdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_eehost id_bidomainuser)
    (MEM_DOMAIN_USER_ADMINS id_elhost id_sdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_eshost id_bidomainuser)
    (MEM_DOMAIN_USER_ADMINS id_ezhost id_bqdomainuser)
    (mem_hosts id_adomain id_cohost)
    (mem_hosts id_adomain id_cvhost)
    (mem_hosts id_adomain id_dchost)
    (mem_hosts id_adomain id_djhost)
    (mem_hosts id_adomain id_dqhost)
    (mem_hosts id_adomain id_dxhost)
    (mem_hosts id_adomain id_eehost)
    (mem_hosts id_adomain id_elhost)
    (mem_hosts id_adomain id_eshost)
    (mem_hosts id_adomain id_ezhost)
    (prop_cred id_badomainuser id_bbdomaincredential)
    (prop_cred id_bedomainuser id_bfdomaincredential)
    (prop_cred id_bidomainuser id_bjdomaincredential)
    (prop_cred id_bmdomainuser id_bndomaincredential)
    (prop_cred id_bqdomainuser id_brdomaincredential)
    (prop_cred id_budomainuser id_bvdomaincredential)
    (prop_cred id_bydomainuser id_bzdomaincredential)
    (prop_cred id_cdomainuser id_ddomaincredential)
    (prop_cred id_ccdomainuser id_cddomaincredential)
    (prop_cred id_cgdomainuser id_chdomaincredential)
    (prop_cred id_ckdomainuser id_cldomaincredential)
    (prop_cred id_gdomainuser id_hdomaincredential)
    (prop_cred id_kdomainuser id_ldomaincredential)
    (prop_cred id_odomainuser id_pdomaincredential)
    (prop_cred id_sdomainuser id_tdomaincredential)
    (prop_cred id_wdomainuser id_xdomaincredential)
    (PROP_DC id_cohost no)
    (PROP_DC id_cvhost no)
    (PROP_DC id_dchost no)
    (PROP_DC id_djhost yes)
    (PROP_DC id_dqhost no)
    (PROP_DC id_dxhost no)
    (PROP_DC id_eehost no)
    (PROP_DC id_elhost no)
    (PROP_DC id_eshost no)
    (PROP_DC id_ezhost yes)
    (PROP_DNS_DOMAIN id_adomain str__b)
    (PROP_DNS_DOMAIN_NAME id_cohost str__cs)
    (PROP_DNS_DOMAIN_NAME id_cvhost str__cz)
    (PROP_DNS_DOMAIN_NAME id_dchost str__dg)
    (PROP_DNS_DOMAIN_NAME id_djhost str__dn)
    (PROP_DNS_DOMAIN_NAME id_dqhost str__du)
    (PROP_DNS_DOMAIN_NAME id_dxhost str__eb)
    (PROP_DNS_DOMAIN_NAME id_eehost str__ei)
    (PROP_DNS_DOMAIN_NAME id_elhost str__ep)
    (PROP_DNS_DOMAIN_NAME id_eshost str__ew)
    (PROP_DNS_DOMAIN_NAME id_ezhost str__fd)
    (PROP_DOMAIN id_badomainuser id_adomain)
    (PROP_DOMAIN id_bbdomaincredential id_adomain)
    (PROP_DOMAIN id_bedomainuser id_adomain)
    (PROP_DOMAIN id_bfdomaincredential id_adomain)
    (PROP_DOMAIN id_bidomainuser id_adomain)
    (PROP_DOMAIN id_bjdomaincredential id_adomain)
    (PROP_DOMAIN id_bmdomainuser id_adomain)
    (PROP_DOMAIN id_bndomaincredential id_adomain)
    (PROP_DOMAIN id_bqdomainuser id_adomain)
    (PROP_DOMAIN id_brdomaincredential id_adomain)
    (PROP_DOMAIN id_budomainuser id_adomain)
    (PROP_DOMAIN id_bvdomaincredential id_adomain)
    (PROP_DOMAIN id_bydomainuser id_adomain)
    (PROP_DOMAIN id_bzdomaincredential id_adomain)
    (PROP_DOMAIN id_cdomainuser id_adomain)
    (PROP_DOMAIN id_ccdomainuser id_adomain)
    (PROP_DOMAIN id_cddomaincredential id_adomain)
    (PROP_DOMAIN id_cgdomainuser id_adomain)
    (PROP_DOMAIN id_chdomaincredential id_adomain)
    (PROP_DOMAIN id_ckdomainuser id_adomain)
    (PROP_DOMAIN id_cldomaincredential id_adomain)
    (PROP_DOMAIN id_cohost id_adomain)
    (PROP_DOMAIN id_cvhost id_adomain)
    (PROP_DOMAIN id_ddomaincredential id_adomain)
    (PROP_DOMAIN id_dchost id_adomain)
    (PROP_DOMAIN id_djhost id_adomain)
    (PROP_DOMAIN id_dqhost id_adomain)
    (PROP_DOMAIN id_dxhost id_adomain)
    (PROP_DOMAIN id_eehost id_adomain)
    (PROP_DOMAIN id_elhost id_adomain)
    (PROP_DOMAIN id_eshost id_adomain)
    (PROP_DOMAIN id_ezhost id_adomain)
    (PROP_DOMAIN id_gdomainuser id_adomain)
    (PROP_DOMAIN id_hdomaincredential id_adomain)
    (PROP_DOMAIN id_kdomainuser id_adomain)
    (PROP_DOMAIN id_ldomaincredential id_adomain)
    (PROP_DOMAIN id_odomainuser id_adomain)
    (PROP_DOMAIN id_pdomaincredential id_adomain)
    (PROP_DOMAIN id_sdomainuser id_adomain)
    (PROP_DOMAIN id_tdomaincredential id_adomain)
    (PROP_DOMAIN id_wdomainuser id_adomain)
    (PROP_DOMAIN id_xdomaincredential id_adomain)
    (prop_elevated id_fgrat yes)
    (prop_executable id_fgrat str__fh)
    (PROP_FQDN id_cohost str__cu)
    (PROP_FQDN id_cvhost str__db)
    (PROP_FQDN id_dchost str__di)
    (PROP_FQDN id_djhost str__dp)
    (PROP_FQDN id_dqhost str__dw)
    (PROP_FQDN id_dxhost str__ed)
    (PROP_FQDN id_eehost str__ek)
    (PROP_FQDN id_elhost str__er)
    (PROP_FQDN id_eshost str__ey)
    (PROP_FQDN id_ezhost str__ff)
    (prop_host id_cptimedelta id_cohost)
    (prop_host id_cwtimedelta id_cvhost)
    (prop_host id_ddtimedelta id_dchost)
    (prop_host id_dktimedelta id_djhost)
    (prop_host id_drtimedelta id_dqhost)
    (prop_host id_dytimedelta id_dxhost)
    (prop_host id_eftimedelta id_eehost)
    (prop_host id_emtimedelta id_elhost)
    (prop_host id_ettimedelta id_eshost)
    (prop_host id_fatimedelta id_ezhost)
    (prop_host id_fgrat id_eehost)
    (PROP_HOSTNAME id_cohost str__ct)
    (PROP_HOSTNAME id_cvhost str__da)
    (PROP_HOSTNAME id_dchost str__dh)
    (PROP_HOSTNAME id_djhost str__do)
    (PROP_HOSTNAME id_dqhost str__dv)
    (PROP_HOSTNAME id_dxhost str__ec)
    (PROP_HOSTNAME id_eehost str__ej)
    (PROP_HOSTNAME id_elhost str__eq)
    (PROP_HOSTNAME id_eshost str__ex)
    (PROP_HOSTNAME id_ezhost str__fe)
    (PROP_IS_GROUP id_badomainuser no)
    (PROP_IS_GROUP id_bedomainuser no)
    (PROP_IS_GROUP id_bidomainuser no)
    (PROP_IS_GROUP id_bmdomainuser no)
    (PROP_IS_GROUP id_bqdomainuser no)
    (PROP_IS_GROUP id_budomainuser no)
    (PROP_IS_GROUP id_bydomainuser no)
    (PROP_IS_GROUP id_cdomainuser no)
    (PROP_IS_GROUP id_ccdomainuser no)
    (PROP_IS_GROUP id_cgdomainuser no)
    (PROP_IS_GROUP id_ckdomainuser no)
    (PROP_IS_GROUP id_gdomainuser no)
    (PROP_IS_GROUP id_kdomainuser no)
    (PROP_IS_GROUP id_odomainuser no)
    (PROP_IS_GROUP id_sdomainuser no)
    (PROP_IS_GROUP id_wdomainuser no)
    (PROP_MICROSECONDS id_cptimedelta num__68)
    (PROP_MICROSECONDS id_cwtimedelta num__75)
    (PROP_MICROSECONDS id_ddtimedelta num__82)
    (PROP_MICROSECONDS id_dktimedelta num__89)
    (PROP_MICROSECONDS id_drtimedelta num__96)
    (PROP_MICROSECONDS id_dytimedelta num__103)
    (PROP_MICROSECONDS id_eftimedelta num__110)
    (PROP_MICROSECONDS id_emtimedelta num__117)
    (PROP_MICROSECONDS id_ettimedelta num__124)
    (PROP_MICROSECONDS id_fatimedelta num__131)
    (PROP_PASSWORD id_bbdomaincredential str__bc)
    (PROP_PASSWORD id_bfdomaincredential str__bg)
    (PROP_PASSWORD id_bjdomaincredential str__bk)
    (PROP_PASSWORD id_bndomaincredential str__bo)
    (PROP_PASSWORD id_brdomaincredential str__bs)
    (PROP_PASSWORD id_bvdomaincredential str__bw)
    (PROP_PASSWORD id_bzdomaincredential str__ca)
    (PROP_PASSWORD id_cddomaincredential str__ce)
    (PROP_PASSWORD id_chdomaincredential str__ci)
    (PROP_PASSWORD id_cldomaincredential str__cm)
    (PROP_PASSWORD id_ddomaincredential str__e)
    (PROP_PASSWORD id_hdomaincredential str__i)
    (PROP_PASSWORD id_ldomaincredential str__m)
    (PROP_PASSWORD id_pdomaincredential str__q)
    (PROP_PASSWORD id_tdomaincredential str__u)
    (PROP_PASSWORD id_xdomaincredential str__y)
    (PROP_SECONDS id_cptimedelta num__69)
    (PROP_SECONDS id_cwtimedelta num__76)
    (PROP_SECONDS id_ddtimedelta num__83)
    (PROP_SECONDS id_dktimedelta num__90)
    (PROP_SECONDS id_drtimedelta num__97)
    (PROP_SECONDS id_dytimedelta num__104)
    (PROP_SECONDS id_eftimedelta num__111)
    (PROP_SECONDS id_emtimedelta num__118)
    (PROP_SECONDS id_ettimedelta num__125)
    (PROP_SECONDS id_fatimedelta num__132)
    (PROP_SID id_badomainuser str__bd)
    (PROP_SID id_bedomainuser str__bh)
    (PROP_SID id_bidomainuser str__bl)
    (PROP_SID id_bmdomainuser str__bp)
    (PROP_SID id_bqdomainuser str__bt)
    (PROP_SID id_budomainuser str__bx)
    (PROP_SID id_bydomainuser str__cb)
    (PROP_SID id_cdomainuser str__f)
    (PROP_SID id_ccdomainuser str__cf)
    (PROP_SID id_cgdomainuser str__cj)
    (PROP_SID id_ckdomainuser str__cn)
    (PROP_SID id_gdomainuser str__j)
    (PROP_SID id_kdomainuser str__n)
    (PROP_SID id_odomainuser str__r)
    (PROP_SID id_sdomainuser str__v)
    (PROP_SID id_wdomainuser str__z)
    (PROP_TIMEDELTA id_cohost id_cptimedelta)
    (PROP_TIMEDELTA id_cvhost id_cwtimedelta)
    (PROP_TIMEDELTA id_dchost id_ddtimedelta)
    (PROP_TIMEDELTA id_djhost id_dktimedelta)
    (PROP_TIMEDELTA id_dqhost id_drtimedelta)
    (PROP_TIMEDELTA id_dxhost id_dytimedelta)
    (PROP_TIMEDELTA id_eehost id_eftimedelta)
    (PROP_TIMEDELTA id_elhost id_emtimedelta)
    (PROP_TIMEDELTA id_eshost id_ettimedelta)
    (PROP_TIMEDELTA id_ezhost id_fatimedelta)
    (PROP_USER id_bbdomaincredential id_badomainuser)
    (PROP_USER id_bfdomaincredential id_bedomainuser)
    (PROP_USER id_bjdomaincredential id_bidomainuser)
    (PROP_USER id_bndomaincredential id_bmdomainuser)
    (PROP_USER id_brdomaincredential id_bqdomainuser)
    (PROP_USER id_bvdomaincredential id_budomainuser)
    (PROP_USER id_bzdomaincredential id_bydomainuser)
    (PROP_USER id_cddomaincredential id_ccdomainuser)
    (PROP_USER id_chdomaincredential id_cgdomainuser)
    (PROP_USER id_cldomaincredential id_ckdomainuser)
    (PROP_USER id_ddomaincredential id_cdomainuser)
    (PROP_USER id_hdomaincredential id_gdomainuser)
    (PROP_USER id_ldomaincredential id_kdomainuser)
    (PROP_USER id_pdomaincredential id_odomainuser)
    (PROP_USER id_tdomaincredential id_sdomainuser)
    (PROP_USER id_xdomaincredential id_wdomainuser)
    (PROP_USERNAME id_badomainuser str__michael)
    (PROP_USERNAME id_bedomainuser str__barbara)
    (PROP_USERNAME id_bidomainuser str__william)
    (PROP_USERNAME id_bmdomainuser str__elizabeth)
    (PROP_USERNAME id_bqdomainuser str__david)
    (PROP_USERNAME id_budomainuser str__jennifer)
    (PROP_USERNAME id_bydomainuser str__richard)
    (PROP_USERNAME id_cdomainuser str__james)
    (PROP_USERNAME id_ccdomainuser str__maria)
    (PROP_USERNAME id_cgdomainuser str__charles)
    (PROP_USERNAME id_ckdomainuser str__susan)
    (PROP_USERNAME id_gdomainuser str__mary)
    (PROP_USERNAME id_kdomainuser str__john)
    (PROP_USERNAME id_odomainuser str__patricia)
    (PROP_USERNAME id_sdomainuser str__robert)
    (PROP_USERNAME id_wdomainuser str__linda)
    (PROP_WINDOWS_DOMAIN id_adomain str__alpha)
)
(:goal
(and
    (prop_host id_fprat id_djhost)
    (prop_host id_fmrat id_dxhost)
    (prop_host id_fnrat id_eshost)
    (prop_host id_fjrat id_ezhost)
    (prop_host id_firat id_cvhost)
    (prop_host id_fqrat id_dqhost)
    (prop_host id_frrat id_dchost)
    (prop_host id_forat id_elhost)
    (prop_host id_fkrat id_cohost)
)
)
)