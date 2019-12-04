.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;,
        Lcom/android/systemui/statusbar/phone/LightBarController$stackRegionToBeDark;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightBarModel:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

.field private final mDarkModeColor:Landroid/graphics/Color;

.field private mDeviceDensity:I

.field private mDirectReplying:Z

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mForceDarkForScrim:Z

.field private mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mLongEdgeSize:I

.field private mNavbarColorManagedByIme:Z

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mQsCustomizing:Z

.field private mScreenSize:Landroid/graphics/Point;

.field mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

.field private mSmallEdgeSize:I

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mSystemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;

    .line 158
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScreenSize:Landroid/graphics/Point;

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mContext:Landroid/content/Context;

    .line 168
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkModeColor:Landroid/graphics/Color;

    .line 169
    check-cast p2, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 170
    sget-boolean p2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz p2, :cond_0

    .line 171
    const-class p2, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 173
    :cond_0
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 174
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 177
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p2

    const/16 p3, 0x21

    invoke-virtual {p2, p0, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    .line 178
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 179
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 187
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private addRequesterForcedBgToBeDark(Ljava/lang/String;I)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 583
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private animateChange()Z
    .locals 3

    .line 398
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private getRemainderRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 479
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSmallEdgeSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 481
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLongEdgeSize:I

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 482
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 484
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 487
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLongEdgeSize:I

    invoke-virtual {v0, p1, v3, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0
.end method

.method private isLight(III)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    and-int/2addr p1, p3

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, p0

    :goto_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    move p0, v0

    :cond_3
    return p0
.end method

.method private varargs removeRequesterForcedBgToDark(Ljava/lang/String;[I)V
    .locals 4

    .line 592
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 593
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateScreenSize(Landroid/content/res/Configuration;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 196
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScreenSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLongEdgeSize:I

    .line 198
    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSmallEdgeSize:I

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScreenSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLongEdgeSize:I

    .line 201
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSmallEdgeSize:I

    :goto_0
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11

    .line 407
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->needDarkFontOfLockIndicator()Z

    move-result v9

    .line 414
    new-instance v10, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 415
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v7

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v8, v1

    move-object v1, v10

    move-object v2, p0

    move v3, v9

    move v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;ZZZZZI)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mCurrentLightBarModel:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->isEqual(Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    :cond_1
    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mCurrentLightBarModel:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mCurrentLightBarModel:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

    const-string v2, "updateStatus()"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightBarController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeState()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v9, :cond_3

    .line 426
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 428
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v9, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 429
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLightStatusBarFlag(Z)V

    goto/16 :goto_2

    .line 433
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    .line 434
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 435
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 437
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLightStatusBarFlag(Z)V

    goto :goto_2

    .line 443
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-eqz v1, :cond_9

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v1, :cond_a

    if-nez p1, :cond_a

    .line 445
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 447
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 449
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLightStatusBarFlag(Z)V

    goto :goto_2

    .line 458
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->getRemainderRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 459
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-eqz v1, :cond_b

    move-object p1, p2

    .line 464
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 467
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 469
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 471
    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setLightStatusBarFlag(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "LightBarController: "

    .line 603
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mSystemUiVisibility=0x"

    .line 604
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFullscreenStackVisibility=0x"

    .line 606
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 607
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDockedStackVisibility=0x"

    .line 608
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mFullscreenLight="

    .line 611
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDockedLight="

    .line 612
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mLastFullscreenBounds="

    .line 614
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastDockedBounds="

    .line 615
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " mNavigationLight="

    .line 617
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasLightNavigationBar="

    .line 618
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mLastStatusBarMode="

    .line 620
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastNavigationBarMode="

    .line 621
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " mForceDarkForScrim="

    .line 623
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mQsCustomizing="

    .line 624
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDirectReplying="

    .line 625
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mNavbarColorManagedByIme="

    .line 626
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 628
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 631
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " StatusBarTransitionsController:"

    .line 633
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_1

    const-string v0, " NavigationBarTransitionsController:"

    .line 639
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 644
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mCurrentLightBarModel:Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;

    if-eqz p0, :cond_2

    const-string p1, "LightBarController"

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController$LightBarModel;->getLogString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getFontColorOfLockIndicator()I
    .locals 0

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->needDarkFontOfLockIndicator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, -0x67000000

    goto :goto_0

    :cond_0
    const p0, -0x42000001    # -0.12499999f

    :goto_0
    return p0
.end method

.method public isNavigationLight()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    return p0
.end method

.method public synthetic lambda$onSystemUiVisibilityChanged$0$LightBarController(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public needDarkFontOfLockIndicator()Z
    .locals 2

    .line 529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 207
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDeviceDensity:I

    if-eq v0, v1, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateScreenSize(Landroid/content/res/Configuration;)V

    .line 209
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDeviceDensity:I

    :cond_0
    return-void
.end method

.method public onNavigationVisibilityChanged(IIZIZ)V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "onNavigationVisibilityChanged : vis = %s, nbModeChanged = %b navigationBarMode = %d, navbarColorManagedByIme = %b"

    .line 288
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightBarController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p2, p1

    or-int/2addr p2, v1

    xor-int/2addr v0, p2

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    if-eqz p3, :cond_7

    .line 297
    :cond_0
    sget-boolean p3, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz p3, :cond_1

    .line 298
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 299
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 298
    invoke-interface {p3, p0, v0, v4}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 301
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {p3, v0}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v2

    .line 305
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 306
    invoke-direct {p0, p1, p4, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v3

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 308
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    if-nez p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-nez p1, :cond_6

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez p1, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 312
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq p1, v0, :cond_7

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 330
    :cond_7
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 331
    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 332
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 227
    iget v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    not-int v6, v1

    and-int v7, v5, v6

    and-int v8, p1, v1

    or-int/2addr v7, v8

    xor-int v8, v7, v5

    .line 230
    iget v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    and-int/2addr v6, v9

    and-int v10, p2, v1

    or-int/2addr v6, v10

    xor-int/2addr v9, v6

    and-int/lit16 v10, v8, 0x2000

    const/16 v11, 0x2000

    if-nez v10, :cond_0

    and-int/2addr v9, v11

    if-nez v9, :cond_0

    if-nez p6, :cond_0

    .line 233
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 236
    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 237
    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 239
    :cond_0
    invoke-direct {p0, v7, v4, v11}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    .line 241
    invoke-direct {p0, v6, v4, v11}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    .line 245
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForcedBgToBeDarkRequesters:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_3

    if-eq v10, v12, :cond_2

    goto :goto_0

    .line 254
    :cond_2
    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    goto :goto_0

    .line 251
    :cond_3
    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    goto :goto_0

    :cond_4
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    .line 265
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v12

    const/4 v1, 0x2

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x4

    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x5

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x6

    .line 268
    invoke-direct {p0, v7, v4, v11}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x7

    iget v5, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/16 v1, 0x8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const-string v1, "onSystemUiVisibilityChanged fullVis=%s mask=%s oldFullVal=%s newFullVal=%s fullDiff=%s mFullscreenLight=%s isLight(Full)=%s  mLastStatusBarMode=%d newBarMode=%d "

    .line 261
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LightBarController"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarController$TjzwLTp091OwKfcsENt6-mhIv7E;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_5
    iput v7, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 279
    iput v6, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 280
    iput v4, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    move/from16 v1, p8

    .line 281
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 282
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public reevaluate()V
    .locals 15

    .line 342
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V

    .line 345
    iget v10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    iget v13, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    iget-boolean v14, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setDirectReplying(Z)V
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 361
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method setDockedStackMinimized(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "setDockedStackMinimized"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 556
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->addRequesterForcedBgToBeDark(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v0, p1, v0

    .line 558
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->removeRequesterForcedBgToDark(Ljava/lang/String;[I)V

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    return-void
.end method

.method public setQsCustomizing(Z)V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 351
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 4

    .line 368
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 370
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 369
    invoke-interface {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSecNavbarStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 376
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 380
    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v3, :cond_3

    sget p1, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_1
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 385
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eq p1, v2, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_4
    return-void
.end method

.method public updateNavigation()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    .line 503
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    .line 503
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 5

    if-eqz p2, :cond_0

    const/16 v0, 0x20

    .line 514
    invoke-virtual {p2, v0}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 515
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->needDarkFontOfLockIndicator()Z

    move-result v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyle() statusBarUpdated?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p1, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", prmColor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    .line 517
    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "WHITE"

    goto :goto_2

    :cond_2
    const-string p2, "BLACK"

    goto :goto_2

    :cond_3
    const-string p2, "null"

    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", needDarkFontOfLockIndicator:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LightBarController"

    .line 516
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    and-int/2addr p1, v3

    if-nez p1, :cond_4

    return-void

    .line 523
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method
