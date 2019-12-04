.class public Lcom/android/systemui/qs/bar/MediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "MediaDevicesBar.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final EMERGENCY_MODE_URI:Landroid/net/Uri;

.field public static final MEDIA_DEVICES_AVAILABLE:Ljava/lang/String; = "qspanel_media_quickcontrol_bar_available"

.field private static final MEDIA_DEVICES_PANEL_SETTING:Ljava/lang/String; = "com.android.systemui.qspanel_media_devices_setting"

.field public static final MEDIA_DEVICES_USING_REMOTE_VIEW:Ljava/lang/String; = "qspanel_media_devices_using_remote_view"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicesContainer:Landroid/widget/LinearLayout;

.field private mDevicesIcon:Landroid/widget/ImageView;

.field private mDevicesTitleText:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mMediaContainer:Landroid/widget/LinearLayout;

.field private mMediaDevicesEditor:Landroid/content/SharedPreferences$Editor;

.field private mMediaDevicesPref:Landroid/content/SharedPreferences;

.field private mMediaIcon:Landroid/widget/ImageView;

.field private mMediaTitleText:Landroid/widget/TextView;

.field mOldOrientation:I

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emergency_mode"

    .line 54
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    .line 55
    new-instance v0, Lcom/android/systemui/qs/bar/-$$Lambda$MediaDevicesBar$D75FYpL7TL9HzL3_R-LuQkcYdJE;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/-$$Lambda$MediaDevicesBar$D75FYpL7TL9HzL3_R-LuQkcYdJE;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    .line 63
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "qspanel_media_quickcontrol_bar_available"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    sget-object v4, Lcom/android/systemui/qs/bar/MediaDevicesBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    const-string v1, "media_quickcontrol_pref"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesPref:Landroid/content/SharedPreferences;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesPref:Landroid/content/SharedPreferences;

    const-string v1, "initialized"

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesEditor:Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesPref:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :cond_0
    if-nez v5, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_2

    .line 74
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesEditor:Landroid/content/SharedPreferences$Editor;

    .line 76
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show"

    goto :goto_0

    :cond_1
    const-string v0, "hide"

    :goto_0
    const-string v1, "2005"

    .line 75
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaDevicesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/MediaDevicesBar;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->startActivity(Ljava/lang/String;)V

    return-void
.end method

.method private startActivity(Ljava/lang/String;)V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdx.quickboard"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/bar/-$$Lambda$8YHi7_mzxSJDJuPZ9BP2FPl79FY;->INSTANCE:Lcom/android/systemui/qs/bar/-$$Lambda$8YHi7_mzxSJDJuPZ9BP2FPl79FY;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t start activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateBarVisibility()V
    .locals 4

    .line 170
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    const-string v2, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 171
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 172
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_padding_top_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qspanel_media_quick_control_bar_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->media_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->media_icon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaIcon:Landroid/widget/ImageView;

    .line 105
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_icon:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesIcon:Landroid/widget/ImageView;

    .line 108
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDivider:Landroid/view/View;

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->media_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->quickcontrol_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;-><init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/BarItemImpl;->setType(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MEDIA_DEVICES_BAR:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$MediaDevicesBar(Landroid/net/Uri;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->updateBarVisibility()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 195
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 202
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_padding_top_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qspanel_media_quickcontrol_padding_top_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mOldOrientation:I

    :cond_1
    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 178
    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->status_bar_header_setting_tint_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mMediaContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->show_button_background_state_hide_tile_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mDevicesContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->show_button_background_state_hide_tile_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTuningChanged() : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "qspanel_media_quickcontrol_bar_available"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    return-void

    .line 159
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    goto :goto_1

    .line 161
    :catch_0
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method
