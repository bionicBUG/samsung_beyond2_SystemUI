.class public Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricIrisView.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerShowing:Z

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mIrisPreview:Landroid/widget/FrameLayout;

.field private mIrisView:Landroid/view/ViewGroup;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    .line 57
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricIrisView$jSEp_NSA8PqxzOSpwL7eywKG0xA;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricIrisView$jSEp_NSA8PqxzOSpwL7eywKG0xA;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 112
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string p2, "accessibility"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 71
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p1, :cond_0

    .line 72
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mDisplay:Landroid/view/Display;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->updateTabletLayoutParams()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->isTimerRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mBouncerShowing:Z

    return p1
.end method

.method private isInViewArea(FFLandroid/view/View;)Z
    .locals 2

    .line 250
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p0

    .line 251
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    .line 252
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    cmpl-float v1, p1, p0

    if-ltz v1, :cond_0

    .line 253
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p0, v1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    cmpl-float p0, p2, v0

    if-ltz p0, :cond_0

    .line 254
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTimerRunning()Z
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$jSEp_NSA8PqxzOSpwL7eywKG0xA(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->onRotationChanged(I)V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->updateTabletLayoutParams(I)V

    return-void
.end method

.method private updateTabletLayoutParams()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->updateTabletLayoutParams(I)V

    return-void
.end method

.method private updateTabletLayoutParams(I)V
    .locals 8

    .line 272
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const-wide v2, 0x4040c00000000000L    # 33.5

    const/4 v4, 0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    const/16 v7, 0x11

    if-eq p1, v1, :cond_2

    if-eq p1, v4, :cond_1

    .line 309
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 311
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/android/keyguard/R$dimen;->kg_iris_preview_height:I

    .line 312
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v6, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {p1, v5, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 291
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int v0, v4

    const/16 v2, 0x15

    invoke-direct {v1, v0, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 298
    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 300
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/android/keyguard/R$dimen;->kg_iris_preview_height:I

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v6, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 280
    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v5, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 282
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 283
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int v0, v4

    const/16 v2, 0x13

    invoke-direct {v1, v0, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 98
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-nez v0, :cond_2

    .line 203
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 204
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    .line 206
    :cond_0
    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    const/4 v0, 0x1

    const-string v1, "KeyguardIrisView"

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mBouncerShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 207
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 208
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 209
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "preview to VISIBLE - onConfigurationChanged"

    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 212
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    .line 214
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "preview to INVISIBLE - onConfigurationChanged"

    .line 215
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 217
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 107
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardIrisView"

    const-string v1, "onFinishInflate()"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisView:Landroid/view/ViewGroup;

    .line 87
    sget v0, Lcom/android/keyguard/R$id;->keyguard_iris_preview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mCurrentOrientation:I

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->updateTabletLayoutParams()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mIrisPreview:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->isInViewArea(FFLandroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 234
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "KeyguardIrisView"

    const-string v2, "Stop recognition by touch on IrisPreview"

    .line 235
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 237
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method
