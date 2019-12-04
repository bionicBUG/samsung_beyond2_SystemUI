.class public Lcom/android/systemui/keyguard/KeyguardSideMargin;
.super Ljava/lang/Object;
.source "KeyguardSideMargin.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mSettingHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 44
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method public static getFingerPrintInDisplay(Landroid/content/Context;)I
    .locals 3

    .line 86
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->facewidget_page_margin_side_land_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 90
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;

    return-object v0
.end method

.method public static getTabletClockSidePadding(IZ)I
    .locals 0

    int-to-float p0, p0

    if-eqz p1, :cond_0

    const p1, 0x3e3851ec    # 0.18f

    goto :goto_0

    :cond_0
    const p1, 0x3d99999a    # 0.075f

    :goto_0
    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private isLandscape()Z
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needToSidePaddingForClock(Landroid/content/Context;)Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 127
    :cond_1
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "floating"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private update(Landroid/content/Context;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    .line 110
    const-class p1, Landroid/util/DisplayMetrics;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/DisplayMetrics;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  KeyguardSideMargin"

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      FingerPrint in display Area: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      needToSidePaddingForClock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->needToSidePaddingForClock(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClockSidePadding(Landroid/content/Context;)I
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->update(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isLandscape()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getTabletClockSidePadding(IZ)I

    move-result p0

    return p0

    .line 62
    :cond_0
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->needToSidePaddingForClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3e25e354    # 0.162f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_0
    return p0

    .line 77
    :cond_2
    sget p0, Lcom/android/systemui/R$dimen;->facewidget_page_margin_side:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getShortCutSidePadding(Landroid/content/Context;)I
    .locals 1

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result p0

    .line 99
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->needToSidePaddingForClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result p1

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method
