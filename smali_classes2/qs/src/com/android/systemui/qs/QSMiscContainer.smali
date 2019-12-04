.class public Lqs/src/com/android/systemui/qs/QSMiscContainer;
.super Landroid/widget/FrameLayout;
.source "QSMiscContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;
.implements Lcom/android/systemui/statusbar/notification/collection/NotificationData$NotificationSumCallback;
.implements Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;
    }
.end annotation


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mExpanded:Z

.field private mHeaderBadgeText:Ljava/lang/String;

.field private mIsMenuShown:Z

.field private mIsQsLayoutBadgeShown:Z

.field private mListening:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonBadge:Landroid/widget/TextView;

.field private mMoreButtonBadgeText:Ljava/lang/String;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mMorePopupMenu:Landroid/widget/PopupMenu;

.field private mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

.field private mPanelColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

.field private mPowerButton:Landroid/widget/ImageButton;

.field private mPowerButtonBadge:Landroid/widget/TextView;

.field private mPowerButtonContainer:Landroid/view/View;

.field private final mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mQsDisabled:Z

.field private mQsMiscContainer:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mScreenOffObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchButtonContainer:Landroid/view/View;

.field private mSettingsBadgeCount:I

.field private mSettingsButton:Landroid/widget/ImageButton;

.field private mSettingsButtonBadge:Landroid/widget/TextView;

.field protected mSettingsContainer:Landroid/view/View;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mShowingPowerButtonBadge:Z

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 184
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 185
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 186
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserInfoController;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 187
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 184
    invoke-direct/range {v1 .. v6}, Lqs/src/com/android/systemui/qs/QSMiscContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const-string v0, "emergency_mode"

    .line 95
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iput-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsValueList:[Landroid/net/Uri;

    .line 114
    iput v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsBadgeCount:I

    const-string p2, "0"

    .line 118
    iput-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadgeText:Ljava/lang/String;

    .line 138
    new-instance p2, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;

    invoke-direct {p2, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$1;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    iput-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mScreenOffObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 148
    new-instance p2, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;

    invoke-direct {p2, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$2;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    iput-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 743
    new-instance p2, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;Lqs/src/com/android/systemui/qs/QSMiscContainer$1;)V

    iput-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    .line 166
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    .line 168
    iput-object p3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 169
    iput-object p4, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 170
    iput-object p5, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 172
    new-instance p1, Lqs/src/com/android/systemui/qs/QSMiscContainer$3;

    invoke-direct {p1, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$3;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsMenuShown:Z

    return p0
.end method

.method static synthetic access$002(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsMenuShown:Z

    return p1
.end method

.method static synthetic access$100(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->dismissMorePopupMenu()V

    return-void
.end method

.method static synthetic access$1000(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->launchNotiSettings()V

    return-void
.end method

.method static synthetic access$1100(Lqs/src/com/android/systemui/qs/QSMiscContainer;Landroid/content/Context;)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->launchContactUsApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object p0
.end method

.method static synthetic access$1400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPanelColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    return-object p0
.end method

.method static synthetic access$1500(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    return p0
.end method

.method static synthetic access$202(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    return p1
.end method

.method static synthetic access$300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateMoreButtonBadgeVisibility()V

    return-void
.end method

.method static synthetic access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method static synthetic access$600(Lqs/src/com/android/systemui/qs/QSMiscContainer;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setPowerButtonBadgeShow(Z)V

    return-void
.end method

.method static synthetic access$700(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setPowerButtonBadgeVisibility()V

    return-void
.end method

.method static synthetic access$800(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/widget/ImageButton;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$900(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 82
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method private dismissMorePopupMenu()V
    .locals 0

    .line 570
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private isSfinderEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 623
    :try_start_0
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.app.galaxyfinder"

    .line 624
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 623
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "QSMiscContainer"

    const-string v1, "Thrown by PackageManager.getApplicationInfo if the package does not exist"

    .line 626
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSupportContactUs(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "com.samsung.android.voc"

    .line 602
    invoke-static {p1, p0}, Lcom/android/systemui/util/DeviceState;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 606
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 608
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0xa220268

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :catch_0
    :goto_0
    return v1

    :cond_1
    const-string p0, "QSMiscContainer"

    const-string p1, "contact us not installed."

    .line 615
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic lambda$onClick$2()V
    .locals 0

    return-void
.end method

.method private launchContactUsApp(Landroid/content/Context;)Z
    .locals 4

    .line 579
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    new-instance v1, Landroid/content/Intent;

    const-string v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.systemui.quickpanel"

    const-string v3, "packageName"

    .line 584
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "3l25p17305"

    const-string v3, "appId"

    .line 585
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appName"

    .line 586
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ask"

    const-string v2, "feedbackType"

    .line 587
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 590
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p0, "QSMiscContainer"

    const-string p1, "Don\'t find samsung members packcage."

    .line 594
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchNotiSettings()V
    .locals 2

    .line 574
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.STATUS_BAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private setPowerButtonBadgeShow(Z)V
    .locals 2

    .line 643
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    .line 644
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    const-string v1, "QsPowerOffButtonShowBadge"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mShowingPowerButtonBadge : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSMiscContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPowerButtonBadgeVisibility()V
    .locals 3

    .line 649
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "QsPowerOffButtonShowBadge"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    .line 651
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonBadge:Landroid/widget/TextView;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 655
    :cond_1
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonBadge:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showMorePopupMenu()V
    .locals 4

    .line 495
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsMiscContainer:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    .line 496
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    sget v1, Lcom/android/systemui/R$menu;->sec_qspanel_more_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 499
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_edit:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 500
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    .line 504
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v2

    .line 503
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    :goto_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 508
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->qspanel_layout:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 513
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenuQsLayout:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    .line 517
    :cond_2
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->noti_settings:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->noti_settings:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 522
    :cond_3
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->contact_us:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;

    invoke-direct {v2, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 561
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setGravity(I)V

    .line 562
    iput-boolean v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsMenuShown:Z

    .line 563
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$CUITMxVnW_USstsQ-qE7lJW6eNI;

    invoke-direct {v1, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$CUITMxVnW_USstsQ-qE7lJW6eNI;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 566
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMorePopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private startSFinderActivity()V
    .locals 4

    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 633
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 636
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caller"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "clear_task"

    .line 637
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 638
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 2

    .line 489
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateClickabilities()V
    .locals 5

    .line 340
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 341
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 344
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 345
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 347
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 349
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 350
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v3

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v4

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void
.end method

.method private updateCustomTileBadgeState(Ljava/lang/String;I)V
    .locals 0

    .line 685
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadgeText:Ljava/lang/String;

    .line 686
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateMoreButtonBadgeVisibility()V

    return-void
.end method

.method private updateMoreButtonBadgeVisibility()V
    .locals 2

    .line 690
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadge:Landroid/widget/TextView;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 697
    :cond_2
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadge:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateResources()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->dismissMorePopupMenu()V

    return-void
.end method

.method private updateSettingsBadge()V
    .locals 2

    .line 661
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButtonBadge:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 663
    :cond_0
    iget v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsBadgeCount:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 664
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButtonBadge:Landroid/widget/TextView;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 667
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateVisibilities()V
    .locals 6

    .line 355
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 356
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    .line 357
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    .line 358
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsContainer:Landroid/view/View;

    iget-boolean v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v1}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    .line 367
    :cond_2
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->getCurrentBixbySettings()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v5

    .line 368
    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 369
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonContainer:Landroid/view/View;

    iget-boolean v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBixbySettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSMiscContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    if-eqz v1, :cond_5

    .line 373
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setPowerButtonBadgeVisibility()V

    .line 375
    :cond_5
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    iget-boolean v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    iget-boolean v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :cond_9
    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    :cond_a
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateMoreButtonBadgeVisibility()V

    :cond_b
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 322
    :goto_0
    iget-boolean p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 323
    :cond_1
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsDisabled:Z

    .line 324
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateEverything()V

    return-void
.end method

.method public getCurrentBixbySettings()I
    .locals 2

    .line 385
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_key_mapping"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCustomTileListChanged$4$QSMiscContainer(Ljava/lang/String;I)V
    .locals 0

    .line 681
    invoke-direct {p0, p1, p2}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateCustomTileBadgeState(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$setListening$0$QSMiscContainer()V
    .locals 0

    .line 315
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method public synthetic lambda$showMorePopupMenu$3$QSMiscContainer(Landroid/widget/PopupMenu;)V
    .locals 0

    const/4 p1, 0x0

    .line 564
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsMenuShown:Z

    return-void
.end method

.method public synthetic lambda$updateEverything$1$QSMiscContainer()V
    .locals 1

    .line 329
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateVisibilities()V

    .line 330
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateClickabilities()V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 334
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateSettingsBadge()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 260
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->init()V

    .line 264
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->setNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationData$NotificationSumCallback;)V

    .line 269
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getNotificationSum()I

    move-result v0

    invoke-virtual {p0, v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->onNotificationSumChanged(I)V

    .line 273
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 274
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mScreenOffObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 275
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 408
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsMenuShown:Z

    const-string v1, "QSMiscContainer"

    if-eqz v0, :cond_0

    const-string p0, "Button can\'t be clicked since menu popup is shown."

    .line 409
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 418
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_1

    .line 420
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$kALnKoUWQwZAU8O3wqi0cBOuHPA;->INSTANCE:Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$kALnKoUWQwZAU8O3wqi0cBOuHPA;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 424
    :cond_1
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    .line 425
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mExpanded:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x196

    goto :goto_0

    :cond_2
    const/16 v0, 0x1ea

    .line 424
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 448
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->startSettingsActivity()V

    .line 450
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "1103"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 453
    :cond_3
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    const-string p1, "!@[Shutdown] Click power off button."

    .line 454
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;

    invoke-static {}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->globalactionForceShow()V

    .line 457
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1136"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    if-eqz p1, :cond_7

    .line 460
    new-instance p1, Lqs/src/com/android/systemui/qs/QSMiscContainer$4;

    invoke-direct {p1, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$4;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 468
    :cond_4
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 469
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->isSfinderEnabled()Z

    move-result p1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click search button, isSfinderEnabled()= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 472
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->startSFinderActivity()V

    goto :goto_1

    .line 474
    :cond_5
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->sec_quick_settings_finder_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 477
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4200"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 480
    :cond_6
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_7

    .line 481
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->showMorePopupMenu()V

    .line 483
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "2003"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateResources()V

    return-void
.end method

.method public onCustomTileListChanged(Ljava/lang/String;I)V
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomTileListChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSMiscContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;

    invoke-direct {v0, p0, p1, p2}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$08J1L6hqEwDtNDZDN1Z2-8DcMlE;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->setListening(Z)V

    .line 281
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 284
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    .line 289
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->removeNotificationSumCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationData$NotificationSumCallback;)V

    .line 297
    :cond_1
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->destroy()V

    .line 300
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 301
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mScreenOffObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 302
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 192
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 194
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    .line 195
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsContainer:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 199
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    sget v1, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->qs_footer_actions_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mActionsContainer:Landroid/view/View;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->search_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->search_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButtonContainer:Landroid/view/View;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->power_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->power_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonContainer:Landroid/view/View;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->more_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonContainer:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget v0, Lcom/android/systemui/R$id;->qs_misc_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsMiscContainer:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->qs_edit_panel_badge_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mHeaderBadgeText:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->settings_button_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButtonBadge:Landroid/widget/TextView;

    .line 217
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    sget v0, Lcom/android/systemui/R$id;->power_button_badge:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButtonBadge:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    const-string v2, "QsPowerOffButtonShowBadge"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mShowingPowerButtonBadge:Z

    .line 221
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->more_button_badge:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButtonBadge:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    const-string v2, "QsLayoutNewBadge"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mIsQsLayoutBadgeShown:Z

    .line 227
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 229
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateResources()V

    .line 231
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 232
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateEverything()V

    return-void
.end method

.method public onNotificationSumChanged(I)V
    .locals 1

    .line 672
    iput p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsBadgeCount:I

    .line 673
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationSumChanged() : mSettingsBadgeCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsBadgeCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSMiscContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateSettingsBadge()V

    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 4

    .line 708
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPanelColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    .line 709
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    .line 711
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 712
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPanelColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    iget v2, v2, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->RippleBackground:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 713
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 714
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 717
    :cond_1
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 718
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 719
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 721
    :cond_2
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 722
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 725
    :cond_3
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 726
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 729
    :cond_4
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v1, :cond_5

    .line 730
    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ripple_drawable_20dp:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 732
    :cond_5
    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mDateView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 733
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    :cond_6
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mClockView:Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz p0, :cond_7

    .line 736
    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->ClockText:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 244
    invoke-direct {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateResources()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 253
    :cond_0
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mExpanded:Z

    .line 254
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateEverything()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 309
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 312
    :cond_0
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mListening:Z

    .line 314
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMumAndDexHelper:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 315
    new-instance p1, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$ih12GwpakncRctrPeVj-iz1w5XA;

    invoke-direct {p1, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$ih12GwpakncRctrPeVj-iz1w5XA;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 394
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 395
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 399
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .line 328
    new-instance v0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$2mVJ4W9wKFTPnTt8wz7yyhS8YWc;

    invoke-direct {v0, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$2mVJ4W9wKFTPnTt8wz7yyhS8YWc;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
