.class public Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardLockSecureIconView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# static fields
.field private static final mSineInOut33:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field private mAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

.field private mPlayingShortcutAffordance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    .line 69
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    .line 70
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 71
    fill-array-data p1, :array_0

    const-string p2, "alpha"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAlphaAnimation:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object p0
.end method

.method private cancelIconAnimation()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 129
    sget v0, Lcom/android/systemui/R$id;->lock_secure_icon_src:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method public showIcon(ZZZ)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->cancelIconAnimation()V

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x8

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 164
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateIcon()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_secure_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_secure_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->mIconImage:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    return-void
.end method
