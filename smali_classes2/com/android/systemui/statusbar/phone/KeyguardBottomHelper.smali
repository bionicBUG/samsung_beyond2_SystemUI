.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "KeyguardBottomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    }
.end annotation


# instance fields
.field private mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mIndicationArea:Landroid/widget/LinearLayout;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mIsTargetedPreview:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mPreviewAnimationStarted:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mSelfieIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field private mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 8

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 67
    move-object v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initIcons()V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initDimens()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mAlphaInterpolator:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSineIn33:Landroid/view/animation/Interpolator;

    return-object p0
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 8

    .line 342
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    return-void
.end method

.method protected centerSwipePossible()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 300
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p0

    const/16 v0, 0xbf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getIconAtPosition(FF)Landroid/view/View;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object p0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->centerSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIconExact(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected initDimens()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    return-void
.end method

.method protected initIcons()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updatePreviews()V

    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method protected isOnIcon(Landroid/view/View;FF)Z
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 264
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 266
    aget v3, v1, v2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x1

    .line 267
    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    add-float/2addr v1, p1

    sub-float/2addr p2, v3

    float-to-double p1, p2

    sub-float/2addr p3, v1

    float-to-double v5, p3

    .line 269
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 273
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/2addr p0, v0

    int-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    move v2, v4

    :cond_0
    return v2
.end method

.method protected isOnIconExact(Landroid/view/View;FF)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 279
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 281
    aget v1, p0, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    aget p2, p0, v2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    aget p0, p0, v2

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    return p0
.end method

.method public isSwipingInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchAffordance(ZZ)V
    .locals 0

    return-void
.end method

.method protected leftSwipePossible()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 294
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p0

    const/16 v0, 0xbf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 178
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    return v2

    .line 182
    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez p0, :cond_2

    return v2

    .line 234
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 205
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v0, :cond_5

    return v2

    .line 214
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v0, :cond_6

    return p1

    .line 220
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSelfieIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eq v0, v1, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isPlayingHintAnimation()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isWaitingLaunchAppInSecure()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 223
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    goto :goto_1

    .line 221
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    :goto_1
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    return p1

    .line 192
    :cond_9
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-eqz v1, :cond_a

    if-eq v1, v0, :cond_a

    goto :goto_2

    .line 198
    :cond_a
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 199
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 194
    :cond_b
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    return v2
.end method

.method public reset(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->reset()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setAlpha(F)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    return-void
.end method

.method protected rightSwipePossible()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 288
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p0

    const/16 v0, 0xbf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1

    .line 396
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    .line 306
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v1

    .line 307
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v2

    if-eqz p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_1

    move-object v4, v1

    move-object/from16 v1, p2

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    move-object v4, v2

    .line 316
    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 317
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 324
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShortcutHintAnimation()V

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x96

    const/4 v9, 0x0

    .line 326
    new-instance v10, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;

    invoke-direct {v10, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 332
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v14, 0x96

    const/16 v16, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V

    move-object/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startPreviewAnimation(Landroid/view/View;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 127
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v3, v2, 0x1

    .line 130
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    .line 131
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    .line 132
    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getShaderPreview()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIsTargetedPreview:Z

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreviewAnimation() show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardBottomHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    .line 136
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 137
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startShowHelpTextAnimation()V

    .line 139
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v3, :cond_2

    .line 140
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0xc8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 141
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    const-wide/16 v16, -0x1

    const-wide/16 v18, 0xc8

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 142
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v2, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0xc8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 143
    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 144
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const-wide/16 v15, -0x1

    const-wide/16 v17, 0xc8

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 145
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSelfieIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0xc8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    .line 146
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 147
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0xc8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0xc8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    .line 150
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 151
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 155
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mUSIMText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    if-eqz v2, :cond_6

    .line 156
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->startHideHelpTextAnimation()V

    .line 157
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_7

    .line 158
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 159
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 160
    :cond_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v5, :cond_8

    .line 161
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 162
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 163
    :cond_8
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mSelfieIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-ne v1, v2, :cond_9

    .line 164
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 165
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 166
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 168
    :cond_9
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 169
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    :goto_0
    return-void
.end method

.method protected startSwiping(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected updateIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FFZZZZ)V
    .locals 0

    .line 348
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    if-nez p6, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method public updatePreviews()V
    .locals 0

    return-void
.end method
