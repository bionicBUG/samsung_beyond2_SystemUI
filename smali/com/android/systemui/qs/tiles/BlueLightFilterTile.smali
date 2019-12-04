.class public Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;,
        Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLF_FILTER_OFF:I = 0x0

.field private static final BLF_FILTER_ON:I = 0x1

.field private static final BLF_INTENT_EXTRA_SET_OFF:I = 0x16

.field private static final BLF_INTENT_EXTRA_SET_ON:I = 0x15

.field private static final BLF_INTENT_EXTRA_SET_START_DETAIL:I = 0x1f

.field private static final BLF_INTENT_EXTRA_USER_CHANGED:I = 0x29

.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

.field private static final COMPONENT_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.bluelightfilter"

.field private static final COMPONENT_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.bluelightfilter.BlueLightFilterService"

.field private static final COMPONENT_SERVICE_TYPE_NAME:Ljava/lang/String; = "BLUE_LIGHT_FILTER_SERVICE_TYPE"

.field private static final DB_BLUE_LIGHT_FILTER:Ljava/lang/String; = "blue_light_filter"

.field private static final DB_BLUE_LIGHT_FILTER_OP:Ljava/lang/String; = "blue_light_filter_opacity"

.field private static final DB_COLOR_ADJUSTMENT:Ljava/lang/String; = "color_blind"

.field private static final DB_COLOR_LENS:Ljava/lang/String; = "color_lens_switch"

.field private static final DB_GRAYSCALE:Ljava/lang/String; = "greyscale_mode"

.field private static final DB_NEGATIVE_COLORS:Ljava/lang/String; = "high_contrast"

.field private static final DB_SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final DB_SCREEN_MODE_SETTING_ADAPTIVE_DISPLAY:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final DB_SCREEN_MODE_SETTING_SW:Ljava/lang/String; = "sw_screen_mode_setting"

.field private static final READING_MODE_OFF:I = 0x4

.field private static final READING_MODE_ON:I = 0x5

.field private static final READING_MODE_SETTINGS:Ljava/lang/String; = "com.samsung.settings.ModePreviewTablet"

.field private static final READING_MODE_SUPPORT_HW:I = 0x0

.field private static final READING_MODE_SUPPORT_NONE:I = 0x2

.field private static final READING_MODE_SUPPORT_SW:I = 0x1


# instance fields
.field COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailListening:Z

.field private final mFeatureEnabled:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private final mFeatures:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mListening:Z

.field private final mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

.field private final mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mToasMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 102
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    .line 103
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    .line 110
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 122
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 134
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 146
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    .line 447
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 161
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 163
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v1, "blue_light_filter"

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 170
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v1, "blue_light_filter_opacity"

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    .line 185
    sget p1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 186
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v2, "screen_mode_setting"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 194
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v2, "screen_mode_automatic_setting"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_0

    .line 200
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 201
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/SystemSetting;

    .line 204
    :goto_0
    sget p1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "sw_screen_mode_setting"

    invoke-direct {p1, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_1

    .line 213
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/SystemSetting;

    .line 215
    :goto_1
    new-instance p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$BlueLightFilterDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 218
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private addFeature()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-string v0, "greyscale_mode"

    .line 461
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 464
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    .line 463
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "high_contrast"

    .line 468
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 471
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 470
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 472
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_blind"

    .line 475
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 478
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 477
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_lens_switch"

    .line 482
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    .line 485
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 484
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-virtual {v1, v0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isFeatureEnabled()Z
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->blue_light_disable_reason:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->quick_settings_bluelightfilter_detail_title:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "available"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    const-string v0, ""

    .line 443
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    return v2
.end method

.method private sendIntent(I)V
    .locals 4

    .line 425
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIntent( key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ) BLUE_LIGHT_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    const-string v3, "com.samsung.android.bluelightfilter"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 428
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private setMode(Z)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    .line 394
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    .line 233
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138d

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 355
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_bluelightfilter_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 304
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->getMetricsCategory()I

    move-result v4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v0, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    const/4 v0, 0x0

    const-string v1, "handle_click"

    .line 309
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0, p0, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 324
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 247
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 366
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {p2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result p2

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    .line 374
    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 378
    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 380
    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 382
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->quick_settings_bluelightfilter_label:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 383
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_blue_light_filter:I

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    const/16 v0, 0x29

    .line 262
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 273
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 500
    :cond_0
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "available"

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 252
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public setDetailListening(Z)V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mDetailListening:Z

    .line 280
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDetailListening( listening:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mOpacitySetting:Lcom/android/systemui/qs/SystemSetting;

    if-nez p0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    :goto_0
    return-void
.end method
