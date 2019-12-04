.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.super Landroid/widget/FrameLayout;
.source "FloatingShortcutAreaView.java"


# static fields
.field public static final ACCESSIBILITY_ACTION_ID_ARR:[I

.field public static final SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field private mAppShortcutCenterPos:[I

.field private mAppShortcutIcon:Landroid/view/View;

.field private mAppShortcutIconImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mEffectLayer:Landroid/view/ViewGroup;

.field private mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

.field private mIsBouncer:Z

.field private mIsExpanded:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOn:Z

.field private mLastDensityDpi:I

.field private mLastUpdatedRotation:I

.field private mLastUserActivityTime:J

.field private mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

.field private mLogStore:Lcom/android/systemui/util/DebugLogStore;

.field private mPm:Landroid/os/PowerManager;

.field private final mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

.field private mShortcutLayer:Landroid/widget/FrameLayout;

.field private mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

.field private mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

.field private mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

.field private mShortcutViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/floating/FloatingShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 78
    sget v1, Lcom/android/systemui/R$id;->floating_shortcut_accessibility_action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->floating_shortcut_accessibility_action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->ACCESSIBILITY_ACTION_ID_ARR:[I

    .line 82
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 94
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    const/4 p3, 0x0

    .line 95
    iput p3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastDensityDpi:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    .line 104
    iput p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    .line 105
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    .line 106
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsBouncer:Z

    .line 107
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsKeyguardShowing:Z

    .line 109
    iput p3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    .line 110
    new-instance p2, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$rZWqryA7ch8HP2nIIrzuYOkAWws;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$rZWqryA7ch8HP2nIIrzuYOkAWws;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 119
    new-instance p2, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$-jDVShsUV4FLARJc0tmHH8VAesw;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$-jDVShsUV4FLARJc0tmHH8VAesw;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 123
    new-instance p2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mDisplayObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    const-wide/16 p2, 0x0

    .line 131
    iput-wide p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    .line 163
    new-instance p2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 201
    new-instance p2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 215
    new-instance p2, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$O30fSDJ-f-xKhbfT59D95KjEa7c;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$O30fSDJ-f-xKhbfT59D95KjEa7c;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 219
    new-instance p2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    .line 243
    new-instance p2, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    .line 244
    new-instance p1, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    .line 246
    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    .line 247
    const-class p1, Lcom/android/systemui/util/DebugLogStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DebugLogStore;

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLogStore:Lcom/android/systemui/util/DebugLogStore;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsBouncer:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateShortcutInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private relocationShortcutView()V
    .locals 6

    .line 666
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v1, "relocationShortcutView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 669
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v4, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideViewImmediately(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAppShortcutIconLocation()V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 473
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateAppShortcutIconLocation() mAppShortcutIcon is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getAppShortcutIconLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, v0, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    aget v1, v1, v5

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    iget v3, v0, Landroid/graphics/Point;->x:I

    aput v3, v1, v2

    .line 484
    iget v0, v0, Landroid/graphics/Point;->y:I

    aput v0, v1, v5

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->relocationShortcutView()V

    :cond_3
    return-void
.end method

.method private updateEnableState()V
    .locals 14

    .line 554
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FLOATING_SHORTCUT:Z

    if-nez v0, :cond_0

    return-void

    .line 558
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "floating"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 559
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    .line 560
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 561
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 562
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    xor-int/2addr v6, v4

    .line 563
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsBouncer:Z

    xor-int/2addr v7, v4

    .line 564
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsKeyguardShowing:Z

    .line 565
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockManager;->isShortcutInvisible()Z

    move-result v9

    xor-int/2addr v9, v4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    .line 569
    :goto_2
    sget-object v11, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateEnableState() currentState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isFloatingShortcutEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isSettingEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isScreenOn="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMoreThanOneShortcutEnabled="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEmergencyModeDisabled="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isUPSMDisabled="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNotBouncer="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isKeyguardShowing="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDLSShortcutEnabled"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_6

    .line 580
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 581
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    .line 584
    new-instance v0, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    goto :goto_3

    .line 586
    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    goto :goto_3

    .line 589
    :cond_6
    new-instance v0, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :goto_3
    return-void
.end method

.method private updateShortcutInfo()V
    .locals 9

    .line 594
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->canBeSkipOnWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 599
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateShortcutInfo() mShortcutLayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getShortcutList()Ljava/util/ArrayList;

    move-result-object v0

    .line 605
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    const/4 v1, 0x0

    move v2, v1

    .line 607
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 608
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    .line 610
    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_2

    .line 611
    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V

    goto :goto_1

    .line 613
    :cond_2
    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$layout;->floating_shortcut_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 614
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V

    .line 615
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 618
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v8, v7, v1

    aget v4, v7, v4

    invoke-virtual {v3, v2, v6, v8, v4}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v3

    .line 619
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideViewImmediately(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 624
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 625
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 626
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 629
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIconImageView:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v1, :cond_5

    .line 630
    new-instance v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$5;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_5
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .line 704
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 705
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private userActivity()V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 353
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "userActivity() mPm is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 358
    iget-wide v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    return-void

    .line 362
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    .line 364
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method declared-synchronized changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 391
    :try_start_0
    sget-object p1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v0, "changeState() return - state is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    sget-object p1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->resetState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 401
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->exitState()V

    .line 404
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->enterState()V

    .line 406
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;
    .locals 2

    .line 381
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 382
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->isCollision(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public focusShortcut(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->showShortcut()V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-ne v2, p1, :cond_1

    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 462
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3f99999a    # 1.2f

    const-wide/16 v6, 0x15e

    .line 463
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->focusView(FFFJ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x96

    .line 465
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->focusView(FFFJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    return-object p0
.end method

.method public getShortcutList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 681
    new-instance v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;-><init>()V

    .line 682
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setShortcutIndex(I)V

    .line 683
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutProperty(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setShortcutProperty(I)V

    .line 684
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setAppTitle(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 686
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setLaunchIntent(Landroid/content/Intent;)V

    .line 687
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->isShortcutEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setEnabled(Z)V

    .line 688
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getViewPosition()[I
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    return-object p0
.end method

.method hideAppIcon()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 439
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v0, "hideAppIcon() mAppShortcutIcon is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 444
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method hideShortcut()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 448
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 450
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v6, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v3

    .line 451
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideView(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isExpandedByFloatingShortcut()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    return p0
.end method

.method isTouchedAppIcon(II)Z
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 370
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string p1, "isTouchedAppIcon() mAppShortcutIcon is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 374
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 375
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, p0, v1

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    if-ge v3, p1, :cond_1

    aget v3, p0, v1

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    aget p1, p0, v4

    sub-int/2addr p1, v2

    if-ge p1, p2, :cond_1

    aget p0, p0, v4

    add-int/2addr p0, v2

    if-ge p2, p0, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method public synthetic lambda$new$0$FloatingShortcutAreaView(I)V
    .locals 3

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result p1

    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    if-eq v0, p1, :cond_0

    .line 113
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$FloatingShortcutAreaView(Landroid/net/Uri;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    return-void
.end method

.method public synthetic lambda$new$2$FloatingShortcutAreaView(I)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->hideEffect()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$FloatingShortcutAreaView()V
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    :cond_0
    return-void
.end method

.method launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 512
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string p1, "launchFocusedApp() return - focused app is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_1

    .line 517
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string p1, "launchFocusedApp() return - mStatusBar is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getShortcutProperty()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 522
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    if-eqz p0, :cond_6

    .line 523
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getShortcutIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->launchAffordanceForTask(I)V

    goto/16 :goto_1

    .line 526
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 529
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string p1, "launchFocusedApp() return - launchIntent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 534
    :cond_3
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FLOATING_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 537
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchFocusedApp() intent = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mLaunchInterface = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setFloatingShortcutLaunching(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    sget-object p1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v0, "launchFocusedApp() launch camera"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;->launchCamera()V

    goto :goto_0

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    sget-object p1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v0, "launchFocusedApp() launch phone"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;->launchPhone()V

    goto :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 548
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->sendAppLaunchLogging()V

    :cond_6
    :goto_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 252
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 254
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 255
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->registerCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    .line 257
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lock_shortcut_type"

    .line 258
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "emergency_mode"

    .line 259
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 260
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    .line 263
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 139
    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastDensityDpi:I

    if-eq v0, p1, :cond_2

    .line 140
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() density "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastDensityDpi:I

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->floating_shortcut_app_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->floating_shortcut_app_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->floating_shortcut_app_icon_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->loadDimens()V

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->loadDimens()V

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 277
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->unregisterCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    .line 279
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 281
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 292
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 294
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    .line 297
    sget v0, Lcom/android/systemui/R$id;->floating_shortcut_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    .line 298
    sget v0, Lcom/android/systemui/R$id;->floating_app_shortcut_image_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$wz2pXIABDIWgZM_b7S5xjOT-mok;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$wz2pXIABDIWgZM_b7S5xjOT-mok;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 308
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->floating_app_shortcut_image_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIconImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 310
    sget v0, Lcom/android/systemui/R$id;->floating_effect_layer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectLayer:Landroid/view/ViewGroup;

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectLayer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->setEffectLayer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLogStore:Lcom/android/systemui/util/DebugLogStore;

    if-eqz v0, :cond_1

    .line 334
    sget-object v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLogStore:Lcom/android/systemui/util/DebugLogStore;

    if-eqz v0, :cond_3

    .line 340
    sget-object v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->userActivity()V

    const/4 p0, 0x1

    return p0

    .line 348
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setForceExpandedByShortcut(Z)V
    .locals 1

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceExpandedByShortcut(Z)V

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateVisibility()V

    return-void
.end method

.method public setLaunchInterface(Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    return-void
.end method

.method public setPreviewMode()V
    .locals 1

    .line 709
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 710
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method setShortcutIconPressed(Z)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setFloatingShortcutIconPressed(Z)V

    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    .line 695
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    .line 696
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateVisibility()V

    return-void
.end method

.method showAppIcon()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 411
    sget-object p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showAppIcon() mAppShortcutIcon is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method showShortcut()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 430
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v6, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v3

    .line 433
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->showView(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateBlurAndDim(Z)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBlueAndDimByShortcut(Z)V

    :cond_0
    return-void
.end method
