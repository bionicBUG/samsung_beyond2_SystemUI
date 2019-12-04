.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final SEC_WIFI6_SIGNAL_STRENGTH:[I

.field static final SEC_WIFI_ACTIVITY_DEFAULT:[I

.field static final SEC_WIFI_ACTIVITY_LGT:[I

.field static final SEC_WIFI_ACTIVITY_VZW:[I

.field static final SEC_WIFI_CALLING_SIGNAL_STRENGTH:[[I

.field static final SEC_WIFI_SIGNAL_FLASH:I

.field static final SEC_WIFI_SIGNAL_STRENGTH:[[I

.field static final SEC_WIFI_SIGNAL_STRENGTH_KT:[[I

.field static final SEC_WIFI_SIGNAL_STRENGTH_LGT:[[I

.field static final SEC_WIFI_SIGNAL_STRENGTH_PURE:[[I

.field static final SEC_WIFI_SIGNAL_STRENGTH_VZW:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 23
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_0:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_1:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_3:I

    const/4 v7, 0x3

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_4:I

    const/4 v8, 0x4

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v2, [I

    .line 38
    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi6_signal_0:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi6_signal_1:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi6_signal_2:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi6_signal_3:I

    aput v3, v1, v7

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi6_signal_4:I

    aput v3, v1, v8

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI6_SIGNAL_STRENGTH:[I

    new-array v1, v8, [I

    .line 48
    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_no_inout:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_in:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_out:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_inout:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_ACTIVITY_DEFAULT:[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 57
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_captive_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_captive_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_captive_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_captive_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_captive_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_nwbooster_wifi_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 72
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_pure_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_0_pure:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_1_pure:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_2_pure:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_3_pure:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_4_pure:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_STRENGTH_PURE:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 88
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_calling_signal_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_CALLING_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 103
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_STRENGTH_LGT:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 116
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_kt_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_STRENGTH_KT:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 129
    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_captive_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_vzw_4:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_STRENGTH_VZW:[[I

    new-array v1, v8, [I

    .line 142
    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_no_inout:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_in:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_out:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_lgt_inout:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_ACTIVITY_LGT:[I

    new-array v1, v8, [I

    .line 149
    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_no_inout:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_in:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_out:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_signal_inout:I

    aput v3, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_ACTIVITY_VZW:[I

    .line 158
    sget v1, Lcom/android/systemui/R$drawable;->sec_stat_sys_wifi_signal_checking_flash:I

    sput v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->SEC_WIFI_SIGNAL_FLASH:I

    new-array v1, v2, [I

    .line 160
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v1, v2, [I

    .line 168
    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_0:I

    aput v3, v1, v5

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    aput v3, v1, v6

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    aput v3, v1, v0

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    aput v3, v1, v7

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    aput v3, v1, v8

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 181
    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_full:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_0:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_1:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_2:I

    aput v3, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_3:I

    aput v0, v2, v7

    sget v0, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifi_full:I

    aput v0, v2, v8

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 193
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 199
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v5

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x10805d2
        0x10805d3
        0x10805d4
        0x10805d5
        0x10805d6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
