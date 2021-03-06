.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "PhoneStatusBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private mBattery:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mNetspeedView:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;

.field private final mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 2

    .line 46
    sget v0, Lcom/android/systemui/R$drawable;->status_background:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 49
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_alpha:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    .line 50
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->status_background:I

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method private applyMode(IZ)V
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_4

    .line 99
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    .line 100
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 101
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 102
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 103
    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v0

    .line 100
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz v0, :cond_2

    new-array v2, v3, [Landroid/animation/Animator;

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 110
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x5dc

    .line 111
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 113
    :cond_3
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 114
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    if-eqz p0, :cond_5

    .line 121
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->isOpaque(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 72
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    :goto_0
    return p0
.end method

.method private isOpaque(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    aput p2, p0, v0

    const-string p2, "alpha"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->networkSpeed:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mNetspeedView:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method
