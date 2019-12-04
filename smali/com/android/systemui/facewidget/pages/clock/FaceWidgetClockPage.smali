.class public Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.source "FaceWidgetClockPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

.field private static final SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

.field private static final TAG:Ljava/lang/String; = "FaceWidgetClockPage"


# instance fields
.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

.field private mClockType:I

.field private final mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

.field private mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

.field private mIsDomesticRoamingIgnorable:Z

.field private mIsFMMLock:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field private mLocale:Ljava/util/Locale;

.field private mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

.field private mRefreshLogCounter:I

.field private mScaleMode:I

.field private mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mSettingHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1078
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    .line 1079
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    .line 1081
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v1, "SetAutoTimeAsiaSeoul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mLocale:Ljava/util/Locale;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockKey:Ljava/lang/String;

    const/16 p1, 0xa

    .line 99
    iput p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mRefreshLogCounter:I

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsFMMLock:Z

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsRMMLock:Z

    const/16 p2, 0x9

    .line 113
    iput p2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    .line 114
    iput p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    .line 116
    new-instance p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    invoke-direct {p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    .line 839
    new-instance p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;-><init>(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 130
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    .line 131
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private static canIgnoreDomesticRoamingToShowSingleClock(Landroid/content/Context;)Z
    .locals 3

    .line 1100
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v1, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1102
    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1106
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v2, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone"

    .line 1108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 1109
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    const-string v0, "21901"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 1113
    :cond_1
    sget-object p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v0, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "gsm.sim.operator.numeric"

    const-string v0, ""

    .line 1115
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "50503"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private considerChangeClockView()V
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .locals 4

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->runDetermineClockType(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    iget v2, v2, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->clockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hometime:"

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " locale:"

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasBG?"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockKey:Ljava/lang/String;

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previousClockKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newClockKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    iget p1, p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->clockType:I

    iput p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    .line 478
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    iget v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-interface {p1, v2}, Lcom/android/systemui/facewidget/FaceWidgetController;->setCurrentClockType(I)V

    .line 482
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateScaleMode(Z)V

    .line 484
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockKey:Ljava/lang/String;

    .line 485
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "considerChangeClockView() << END <<"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getClockType(Z)I
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_0

    .line 517
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getAODClockType()I

    move-result p0

    return p0

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockType(Z)I

    move-result p0

    return p0
.end method

.method private getNetworkSubId()Ljava/lang/String;
    .locals 1

    .line 832
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 834
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isChangeableVerticalOrHorizontalClock(Z)Z
    .locals 3

    .line 323
    iget v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isVerticalClockType(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    xor-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iget v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isHorizontalClockType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0, v2}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getClockType(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isVerticalClockType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    :goto_0
    return v2
.end method

.method private static isDomesticRoaming(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "phone"

    .line 1050
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1052
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    .line 1055
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    .line 1056
    const-class v3, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    .line 1057
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v6, 0x2

    aput-object p0, v4, v6

    const-string p0, "isDomesticRoaming subId=%s, vrt=%d, drt=%d"

    .line 1056
    invoke-static {v3, p0, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v2, v6, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    return v0
.end method

.method private isHorizontalClockType(I)Z
    .locals 0

    const p0, 0xc359

    if-eq p1, p0, :cond_1

    const p0, 0xc35c

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNetworkRoamingState()Z
    .locals 10

    .line 787
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 789
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-static {}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isRoamingWithVoiceOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 791
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 793
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isPsOnlyReg()Z

    move-result v3

    .line 794
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilMobileDataRadioTechnology()I

    move-result v4

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "isNetworkRoamingState isPsOnlyReg=%s radioTechType=%d"

    invoke-static {v5, v8, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    .line 798
    invoke-static {v4}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getSprDisplayRoam()Z

    move-result v0

    :goto_0
    move v1, v0

    goto/16 :goto_2

    .line 801
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    .line 802
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-nez v3, :cond_1

    .line 805
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v5

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 807
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v1

    .line 810
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    .line 811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v6

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    .line 812
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    const-string v0, "isNetworkRoamingState id=%s vrs=%d drs=%d vrt=%d drt=%d"

    .line 810
    invoke-static {v7, v0, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v5

    goto :goto_2

    .line 816
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isNetworkRoamingState no ServiceState"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 819
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkRoamingState id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isNetworkRoamingState no TelephonyManager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoamingState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isRoamClock()Z
    .locals 1

    .line 617
    iget p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const v0, 0xc35a

    if-eq p0, v0, :cond_1

    const v0, 0xc35d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isRoamingWithVoiceOnly()Z
    .locals 2

    .line 1089
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->CONFIG_LOCKSCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string v1, "RoamingWithVoiceOnly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isVerticalClockType(I)Z
    .locals 1

    const/4 p0, 0x1

    const v0, 0xc358

    if-eq p1, v0, :cond_1

    const v0, 0xc35b

    if-eq p1, v0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private needToShowDualClock()Z
    .locals 7

    .line 691
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDualClock()Z

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowRoamingClockOnKeyguard()Z

    move-result v1

    .line 693
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v2

    .line 695
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 697
    iget-boolean v4, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "needToShowDualClock() homecity_timezone is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 705
    :cond_1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->canIgnoreDomesticRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "needToShowDualClock() canIgnoreDomesticRoamingToShowSingleClock() is true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 708
    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "needToShowDualClock() isWiFiOnlyDevice() is true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 698
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToShowDualClock() isRoamingClockEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isWhereToShowOptionEnabled="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEasyModeEnabled="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsNetworkRoaming="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private needToShowHorizontalClock()Z
    .locals 0

    .line 458
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .locals 6

    .line 725
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setAutoHomecityTimezone(): isDeviceProvisioned=false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 736
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 737
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "HomecityTimezoneDeviceProvisioned"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setAutoHomecityTimezone(): TelephonyManager=null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 748
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHomecityTimezone(): simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    return-void

    .line 756
    :cond_4
    sget-boolean v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->SUPPORT_SET_SEOUL_AS_DEFAULT_HOMECITY_TIMEZONE:Z

    if-eqz v0, :cond_5

    const-string v0, "Asia/Seoul"

    goto :goto_0

    .line 759
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 761
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHomecityTimezone(): homecity_timezone set by SystemUI >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", homecity_timezone="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", persist.sys.timezone="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "persist.sys.timezone"

    .line 765
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isNetworkRoaming="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isNetworkRoamingState()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDomesticRoaming="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 767
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 768
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    const-string v1, ", plmn="

    const-string v3, ", sim="

    const-string v4, "gsm.operator.numeric"

    const-string v5, "gsm.sim.operator.numeric"

    if-eqz v0, :cond_6

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p1, v5, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sim2="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-static {p1, v5, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", plmn2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 774
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 777
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", subId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getNetworkSubId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 779
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneSet"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateClockColor()V
    .locals 2

    .line 876
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    .line 879
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    if-eqz v1, :cond_0

    .line 880
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_0
    return-void
.end method

.method private updateScaleMode(Z)V
    .locals 10

    .line 917
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-nez v0, :cond_0

    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 920
    iput v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    move v1, v2

    goto :goto_1

    .line 934
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    if-ne v1, v3, :cond_3

    .line 936
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 941
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    if-eqz v1, :cond_4

    .line 942
    iget v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 943
    check-cast v1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    const/4 v3, 0x1

    if-ne v1, v0, :cond_6

    .line 951
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 952
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isContainerExpanded()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;->isEnabled()Z

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 953
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isEnabledBioUnlock()Z

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 954
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationCount()I

    move-result v7

    .line 955
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 952
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getScaleMode(ZZZIZLandroid/content/Context;)I

    move-result v1

    .line 958
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "scaleMode %s"

    invoke-static {v0, v2, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    iget v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    if-eq v0, v1, :cond_7

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScaleMode() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    if-eqz p1, :cond_7

    .line 963
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 964
    invoke-direct {p0, v3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 493
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_2

    .line 496
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    .line 499
    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result p1

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 503
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setTimeVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    .line 509
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setDateVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "mShouldShowDualClock"

    const-string v1, "mShouldShowDefaultClock"

    const-string v2, "mIsThemeImageClock"

    const-string v3, "mIsNetworkRoaming"

    const-string v4, "mIsDomesticRoamingIgnorable"

    const-string v5, "mClockKey"

    .line 978
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$100(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$200(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockTypeResult:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;

    .line 983
    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$000(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p3, v2

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p3, v2

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsDomesticRoamingIgnorable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p3, v2

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockKey:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v0, p3, v2

    .line 985
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    defaultSubId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getNetworkSubId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    if-eqz p1, :cond_1

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    isDomesticRoaming: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isDomesticRoaming(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_2

    .line 996
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mClockView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / scalable: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mClockType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " / scaleMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    if-eqz p1, :cond_3

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    lastUpdatedClockColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getLastUpdatedClockColor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    lastUpdatedClockType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getLastUpdatedClockType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
    .locals 10

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentsView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$2;->$SwitchMap$com$android$systemui$facewidget$pages$FaceWidgetPageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    .line 545
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    iget v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-virtual {p1, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    .line 552
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v5

    .line 554
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 555
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockGravity()I

    move-result v6

    .line 556
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockPaddingStart()I

    move-result v7

    .line 557
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockPaddingEnd()I

    move-result v5

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    or-int/lit8 v9, v6, 0x50

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    if-eq v7, v8, :cond_1

    move v3, v7

    :cond_1
    if-eq v5, v8, :cond_2

    move v4, v5

    :cond_2
    if-ne v6, v8, :cond_3

    if-ne v7, v8, :cond_3

    if-eq v5, v8, :cond_5

    .line 561
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isRoamClock()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_4
    move v9, v0

    :cond_5
    move v0, v1

    .line 566
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 567
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v5, v2}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setParentType(I)V

    if-eqz v0, :cond_9

    .line 570
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_9

    .line 574
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 576
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 582
    iget v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 586
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800003

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 583
    :cond_8
    :goto_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    :cond_9
    :goto_3
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finally applied scale mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setScaleMode(I)V

    :cond_a
    return-object p1

    .line 600
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Lockscreen doesn\'t need to show clock."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 530
    move-object p0, p1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_d

    const/16 v1, 0x11

    .line 534
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 535
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-object p1

    .line 541
    :cond_e
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isCloneClock()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/doze/PluginAODManager;->getAODClockView(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "servicebox_clock"

    return-object p0
.end method

.method public getRectExceptHolder(I)Landroid/graphics/Rect;
    .locals 4

    .line 1026
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getCutoutPadding()I

    move-result v1

    .line 1030
    iget v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockType:I

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1032
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1035
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1036
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1038
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTopPosYOfHolder()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1039
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHeightOfHolder()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_Full"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p0, p1, :cond_0

    const/16 p0, 0x1f4

    .line 148
    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setDuration(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    goto :goto_0

    :cond_0
    const/16 p0, 0xa7

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setDuration(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    goto :goto_0

    :cond_1
    const/16 p0, 0x12c

    .line 155
    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setDuration(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const/16 p1, 0x10

    .line 156
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setPivot(II)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    :goto_0
    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 3

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews() mClockView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    instance-of v0, p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    .line 626
    check-cast p1, Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_1

    .line 630
    new-instance v0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$51BEgiScTgtBMGgyJeHjRF8i60w;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$51BEgiScTgtBMGgyJeHjRF8i60w;-><init>(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public isCloneClock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$initViews$0$FaceWidgetClockPage(Landroid/view/View;)V
    .locals 1

    .line 632
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v0, :cond_0

    .line 633
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DP Touch up close service box for DEX"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->closeWindow()V

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DP Touch up start service box"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSizeChanged$1$FaceWidgetClockPage(IIII)V
    .locals 4

    .line 1011
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v2, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x3

    aput-object p1, v2, p4

    const-string p1, "onSizeChanged w=%d h=%d oldW=%d, oldH=%d"

    invoke-static {v0, p1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    .line 1015
    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScaleMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p4

    const-string p0, "onSizeChanged externalClockView type=%d scale=%d w=%d h=%d"

    .line 1014
    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public makeTransitionData(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->cancel()V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->isContainerExpanded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isChangeableVerticalOrHorizontalClock(Z)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, v1, :cond_2

    if-eq p2, v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_3

    .line 351
    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    .line 354
    new-instance p2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p1

    invoke-direct {p2, v1, v0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 356
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setAdditionalTag(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 649
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onAttachedToWindow()V

    .line 651
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_2

    .line 652
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 653
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 652
    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    .line 669
    :cond_2
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 672
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateClockColor()V

    return-void
.end method

.method protected onChangedSidePadding()V
    .locals 1

    .line 611
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isRoamClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 678
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onDetachedFromWindow()V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 681
    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    .line 684
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 138
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    .line 139
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 887
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 888
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 908
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateScaleMode(Z)V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method protected onPageTransitionEnded()V
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p0, v0, :cond_0

    .line 380
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onClockPageTransitionEnded()V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 5

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isNetworkRoamingState()Z

    move-result v0

    .line 171
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->canIgnoreDomesticRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v0, :cond_0

    .line 175
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 179
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsDomesticRoamingIgnorable:Z

    if-eq v2, v1, :cond_1

    .line 180
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsDomesticRoamingIgnorable:Z

    move v0, v4

    .line 184
    :cond_1
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mLocale:Ljava/util/Locale;

    move v0, v4

    :cond_2
    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView()V

    :cond_3
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 3

    .line 234
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 235
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 236
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    .line 239
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    .line 240
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 241
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateScaleMode(Z)V

    goto :goto_1

    .line 237
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 1009
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1010
    new-instance v6, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;-><init>(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;IIII)V

    invoke-static {v6}, Lcom/android/systemui/util/LogUtil;->runInDebugLevelMidOnly(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    const/4 v0, 0x1

    .line 1045
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 893
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performAccessibilityAction DP Touch up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 895
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, p2, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DP Touch up start service box"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    const/4 p1, 0x0

    .line 898
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 902
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 2

    .line 247
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$2;->$SwitchMap$com$android$systemui$facewidget$FaceWidgetRefreshReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 287
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_5

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "refreshViews#start"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->refresh()V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "refreshViews#end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateClockColor()V

    goto/16 :goto_1

    .line 273
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    array-length p1, p2

    if-lez p1, :cond_5

    aget-object p1, p2, v1

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    .line 274
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 275
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    goto :goto_1

    .line 270
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    goto :goto_1

    .line 261
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 262
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateScaleMode(Z)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    .line 263
    array-length p1, p2

    if-lez p1, :cond_5

    aget-object p1, p2, v1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    move v1, v0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isChangeableVerticalOrHorizontalClock(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 265
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    goto :goto_1

    .line 251
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClockColorChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 252
    array-length p1, p2

    if-lez p1, :cond_4

    aget-object p1, p2, v1

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 253
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 258
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->updateClockColor()V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public runDetermineClockType(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)V
    .locals 11

    .line 413
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isContainerExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 414
    :goto_0
    const-class v3, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v3}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v3

    .line 415
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v4

    .line 416
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    .line 418
    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v6

    .line 419
    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v7

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 421
    iget-object v8, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 422
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    if-eqz v8, :cond_2

    .line 424
    iget-object v8, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    if-eqz v8, :cond_3

    .line 426
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/R$bool;->theme_use_image_clock:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v1

    .line 428
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->needToShowDualClock()Z

    move-result v10

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v4, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    :goto_5
    if-nez v3, :cond_6

    if-nez v0, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    if-eqz v8, :cond_c

    if-eqz v9, :cond_a

    if-eqz v10, :cond_9

    const p0, 0xc35d

    goto :goto_7

    :cond_9
    const p0, 0xc360

    goto :goto_7

    :cond_a
    if-eqz v10, :cond_b

    const p0, 0xc35a

    goto :goto_7

    :cond_b
    const p0, 0xc35f

    goto :goto_7

    :cond_c
    if-eqz v10, :cond_d

    const/4 p2, 0x7

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_e

    .line 443
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getDefaultClockType()I

    move-result p2

    goto :goto_6

    :cond_e
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getClockType(Z)I

    move-result p2

    :goto_6
    if-eqz v1, :cond_f

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->needToShowHorizontalClock()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    if-ne p2, v2, :cond_10

    const/4 p0, 0x2

    goto :goto_7

    :cond_10
    move p0, p2

    .line 451
    :goto_7
    iput p0, p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->clockType:I

    .line 452
    invoke-static {p1, v9}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$002(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z

    .line 453
    invoke-static {p1, v10}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$102(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z

    .line 454
    invoke-static {p1, v4}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;->access$202(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$ClockTypeResult;Z)Z

    return-void
.end method

.method public setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)V
    .locals 0

    .line 367
    invoke-super {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)V

    .line 368
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetController;->getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 373
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setHeight(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZZ)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v0, v1, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_2

    .line 308
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mClockView:Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->isScalable()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    .line 309
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->isNetworkRoamingState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->mIsNetworkRoaming:Z

    :cond_3
    const/4 p1, 0x1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->considerChangeClockView(Z)V

    goto :goto_1

    .line 307
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method
