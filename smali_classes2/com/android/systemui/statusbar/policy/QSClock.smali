.class public Lcom/android/systemui/statusbar/policy/QSClock;
.super Landroid/widget/TextView;
.source "QSClock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAttached:Z

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mHomeViewTag:Ljava/lang/String;

.field private mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

.field private mLockViewTag:Ljava/lang/String;

.field private mNonAdaptedColor:I

.field private mPrvColor:I

.field private final mShowDark:Z

.field private mUseWallpaperTextColor:Z

.field private mViewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/QSClock;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 63
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    .line 64
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    const-string v0, "QSClock"

    .line 67
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->Clock_showDark:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private amIHomeIndicatorClock()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mHomeViewTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mHomeViewTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private amILockIndicatorClock()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mLockViewTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mLockViewTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printWhiteBgSolutionLog(I)V
    .locals 2

    .line 325
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/QSClock;->DEBUG:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amIHomeIndicatorClock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mPrvColor:I

    if-eq v0, p1, :cond_2

    const v1, -0x42000001    # -0.12499999f

    if-eq v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    const/high16 v1, -0x67000000

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printWhiteBgSolutionLog() Home-Indicator-Color is changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mPrvColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mPrvColor:I

    :cond_2
    return-void
.end method

.method private updateClock()V
    .locals 7

    .line 287
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getSmallTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/QSClock;->notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateClockVisibility()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 168
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 197
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_2

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibilityByPolicy(Z)V

    :cond_2
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 178
    const-class p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public getTextMeasuredWidth()I
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    if-eqz p3, :cond_1

    .line 274
    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;->onTimeTextChanged()V

    .line 277
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amIHomeIndicatorClock()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "status_bar_clock notifyTimeChanged(currentTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") mClockVisibleByPolicy:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mClockVisibleByUser:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", visible?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", parent:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSClock"

    .line 280
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->qs_clock_tag_home_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mHomeViewTag:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->qs_clock_tag_lock_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mLockViewTag:Ljava/lang/String;

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    .line 113
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    .line 114
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_1

    .line 117
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 119
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClock()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amILockIndicatorClock()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 205
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->getFontColorOfLockIndicator()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amIHomeIndicatorClock()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 207
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    .line 211
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-nez p1, :cond_2

    .line 212
    iget p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amILockIndicatorClock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amIHomeIndicatorClock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 220
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 226
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 130
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mAttached:Z

    .line 133
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    .line 134
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 135
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mShowDark:Z

    if-eqz v0, :cond_0

    .line 137
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 139
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibleByUser(Z)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mKeyguardServiceBoxCallback:Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;

    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 160
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->amIHomeIndicatorClock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->printWhiteBgSolutionLog(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->printWhiteBgSolutionLog(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 243
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    .line 245
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mUseWallpaperTextColor:Z

    if-eqz p1, :cond_1

    .line 246
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 248
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setTextColor(I)V

    :goto_0
    return-void
.end method
