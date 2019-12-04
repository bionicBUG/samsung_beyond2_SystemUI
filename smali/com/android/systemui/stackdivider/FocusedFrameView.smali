.class public Lcom/android/systemui/stackdivider/FocusedFrameView;
.super Landroid/view/View;
.source "FocusedFrameView.java"


# instance fields
.field private mAdjustedForIme:Z

.field private mAnimating:Z

.field protected mBackground:Landroid/view/View;

.field private mDividerButtonsVisible:Z

.field protected mDockSide:I

.field private mDockedStackMinimized:Z

.field private mFocusedStackWindowingMode:I

.field private mGuideViewVisible:Z

.field private mRemovedDockDivider:Z

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    .line 52
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private layoutFocusedFrameView()V
    .locals 5

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->needToHideFocusedFrameView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isPrimaryFocused(I)Z

    move-result v0

    .line 145
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    move v0, v3

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_3

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_2

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_3

    .line 150
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_1
    sub-int/2addr v0, v1

    goto :goto_2

    .line 161
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_2
    move v4, v3

    move v3, v0

    move v0, v4

    .line 179
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private needToHideFocusedFrameView()Z
    .locals 3

    .line 188
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    .line 189
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->rawInitDockSide()V

    .line 196
    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isAllowedDockSide(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    return-void
.end method

.method protected isAllowedDockSide(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPrimaryFocused(I)Z
    .locals 0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$setDockSide$0$FocusedFrameView()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public synthetic lambda$setFocusedStack$1$FocusedFrameView()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public synthetic lambda$setMinimizedDockStack$2$FocusedFrameView()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    return-void
.end method

.method public synthetic lambda$setMinimizedDockStack$3$FocusedFrameView()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected rawInitDockSide()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    return-void
.end method

.method setAdjustedForIme(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public setDockSide(IZ)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz p2, :cond_0

    .line 82
    new-instance p1, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$f1jGMDp8LuET7OfOI3NNv4LMOYw;

    invoke-direct {p1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$f1jGMDp8LuET7OfOI3NNv4LMOYw;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setFocusedStack(Landroid/app/ActivityManager$StackInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    :goto_0
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    if-eq v0, p1, :cond_1

    .line 94
    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    .line 95
    new-instance p1, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;

    invoke-direct {p1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setGuideView(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setMinimizedDockStack(ZJ)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    if-eq v0, p1, :cond_2

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    .line 107
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    if-eqz p1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$wfgTxv16SpQrkO3ii2rB4gV_-qc;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$wfgTxv16SpQrkO3ii2rB4gV_-qc;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$ohNiBVDvlkVkFRR6BO7tx8yZ-qY;

    invoke-direct {p2, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$ohNiBVDvlkVkFRR6BO7tx8yZ-qY;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method setRemovedDockDivider(Z)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    if-eq v0, p1, :cond_0

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method
