.class public Lcom/android/systemui/settings/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    }
.end annotation


# instance fields
.field private brightnessEditor:Landroid/content/SharedPreferences$Editor;

.field private brightnessPref:Landroid/content/SharedPreferences;

.field private mAutoBrightnessContainer:Landroid/view/View;

.field private mAutoBrightnessSwitch:Landroid/widget/Switch;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field protected mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mBrightnessDetailView:Landroid/view/View;

.field private mBrightnessPrefInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V
    .locals 3

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 103
    new-instance v0, Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    const-string v0, "brightness_pref"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    const-string v0, "initialized"

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    .line 80
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 81
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    .line 83
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "4006"

    .line 83
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "4007"

    .line 86
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessDetail;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDetail;->isAutoBrightnessAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessDetail;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDetail;->isBrightnessOpationsAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-object p0
.end method

.method private isAutoBrightnessAvailable()Z
    .locals 1

    .line 336
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isBrightnessOpationsAvailable()Z
    .locals 1

    .line 327
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 328
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BrightnessDetail"

    const-string v0, "Brightness options are not available."

    .line 329
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getBrightnessDetilaAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-void
.end method

.method public showDetail(Z)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method
