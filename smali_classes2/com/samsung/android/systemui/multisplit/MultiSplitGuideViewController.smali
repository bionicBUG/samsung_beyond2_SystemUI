.class public Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;
.super Ljava/lang/Object;
.source "MultiSplitGuideViewController.java"


# instance fields
.field private final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mContext:Landroid/content/Context;

.field private final mDismissPrimary:Ljava/lang/Runnable;

.field private final mDismissSecondary:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFirstTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

.field private mFocusedWindowingMode:I

.field private mFrom:I

.field private mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

.field private final mHideMultiSplit:Ljava/lang/Runnable;

.field private mInitialized:Z

.field private mIsHorizontalDivision:Z

.field private mIsShownToast:Z

.field private mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

.field private final mMargins:Landroid/graphics/Rect;

.field private mMaximizeGuideView:Z

.field private final mMaximizeMultiSplit:Ljava/lang/Runnable;

.field private mMinimizeGuideView:Z

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mPendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMargins:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$oslqI0w6Dbpb3ipuM_W0lBqjVDA;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$oslqI0w6Dbpb3ipuM_W0lBqjVDA;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeMultiSplit:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$31uZ3WOH-HKV006A8AkFFiXLw60;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$31uZ3WOH-HKV006A8AkFFiXLw60;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mHideMultiSplit:Ljava/lang/Runnable;

    .line 69
    sget-object v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$D2CiCmgGlj7gDkxEoxbw6Fg5uMY;->INSTANCE:Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$D2CiCmgGlj7gDkxEoxbw6Fg5uMY;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDismissPrimary:Ljava/lang/Runnable;

    .line 73
    sget-object v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$FW01QFplgHarQr2j67BZl6UqmvY;->INSTANCE:Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$FW01QFplgHarQr2j67BZl6UqmvY;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDismissSecondary:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mWm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addView(Landroid/content/Context;)V
    .locals 4

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 121
    sget v0, Lcom/android/systemui/R$layout;->multi_split_guideview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsHorizontalDivision:Z

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDisplayWidth:I

    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDisplayHeight:I

    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFocusedWindowingMode:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->initLayoutInfo(ZIII)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->generateWindowLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateMargins(ILandroid/graphics/Rect;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMargins:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->getMultiSplitStacksBounds(Landroid/graphics/Rect;Z)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->getMultiSplitStacksBounds(Landroid/graphics/Rect;Z)V

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMargins:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 154
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMargins:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 150
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method private createScrollAnimator(II)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 403
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 404
    sget-object p1, Lcom/android/systemui/stackdivider/GuideViewController;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0xe9

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private generateWindowLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 103
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0xa37

    .line 104
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v0, "MultiSplit GuideView"

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    .line 106
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 107
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object p0
.end method

.method private getPosition(Landroid/graphics/Rect;)I
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsHorizontalDivision:Z

    if-eqz p0, :cond_0

    .line 418
    iget p0, p1, Landroid/graphics/Rect;->top:I

    return p0

    .line 420
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method private offsetTo(Landroid/graphics/Rect;I)V
    .locals 1

    .line 371
    iget-boolean p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsHorizontalDivision:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 372
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method private relayoutGuideView(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;F)V

    return-void
.end method

.method private relayoutGuideView(Landroid/graphics/Rect;F)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->reLayout(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method

.method private removeView()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 136
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 137
    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    :cond_1
    return-void
.end method

.method private resizeMultiSplitWithOtherSide(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->getMultiSplitBounds(Landroid/graphics/Rect;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    .line 427
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeMultiSplitWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private scrollGuideView(Landroid/graphics/Rect;I)V
    .locals 2

    .line 379
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->getPosition(Landroid/graphics/Rect;)I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 383
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->createScrollAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 384
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private snapPosition(Landroid/graphics/Rect;IZZ)V
    .locals 2

    .line 225
    iget-object p4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p4, p2, v1, v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object p4

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 227
    iget-object p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p3, p3, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    if-ge p2, p3, :cond_1

    .line 228
    iget-boolean p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsShownToast:Z

    if-nez p2, :cond_0

    .line 229
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->cant_resize_home_apps_or_recents:I

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 230
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsShownToast:Z

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p2, p2, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p3, p3, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    if-le p2, p3, :cond_2

    invoke-virtual {p4}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissEnd()Z

    move-result p3

    if-nez p3, :cond_2

    .line 235
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissEnd()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 239
    iget-boolean p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    if-nez p3, :cond_4

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 242
    iget p2, p4, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p2, p2, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private snapPositionForSubHandler(Landroid/graphics/Rect;I)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 274
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 276
    iget p2, v0, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-le p2, v0, :cond_1

    .line 279
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 281
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addView()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mGuideView:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->addView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method commitSnap(Landroid/graphics/Rect;IZZ)V
    .locals 1

    .line 288
    iget-object p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p4, v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object p3

    .line 290
    invoke-virtual {p3}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissStart()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 305
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 307
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeMultiSplit:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeMultiSplit:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissEnd()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 314
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 316
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mHideMultiSplit:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 319
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mHideMultiSplit:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 321
    :cond_3
    iget-object p4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p4, p4, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    if-le p2, p4, :cond_4

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 323
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    iget p2, p2, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V

    .line 324
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 325
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    new-instance p4, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;

    invoke-direct {p4, p0, p3}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 347
    :cond_4
    invoke-direct {p0, p3}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->resizeMultiSplitWithOtherSide(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V

    :goto_0
    return-void
.end method

.method commitSnapForSubHandler(Landroid/graphics/Rect;I)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;->isDismissEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFrom:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDismissPrimary:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDismissSecondary:Ljava/lang/Runnable;

    .line 356
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 357
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$rFROYciN2oA9B-4Z3S9zQ8bppZA;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$rFROYciN2oA9B-4Z3S9zQ8bppZA;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 361
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 363
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-le p2, v0, :cond_3

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    .line 366
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public initGuideController(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;ZIIIILandroid/graphics/Rect;)V
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->getFirstSideTarget()Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    .line 87
    iput p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDisplayWidth:I

    .line 88
    iput p4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mDisplayHeight:I

    .line 89
    iput-boolean p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsHorizontalDivision:Z

    .line 90
    iput p5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFocusedWindowingMode:I

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMaximizeGuideView:Z

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMinimizeGuideView:Z

    .line 94
    iput p6, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mFrom:I

    .line 95
    invoke-direct {p0, p6, p7}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->calculateMargins(ILandroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    .line 97
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 99
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$commitSnap$9$MultiSplitGuideViewController(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->resizeMultiSplitWithOtherSide(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public synthetic lambda$commitSnapForSubHandler$11$MultiSplitGuideViewController(Ljava/lang/Runnable;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$0$MultiSplitGuideViewController()V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeMultiSplit(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$MultiSplitGuideViewController()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$_uYsVDc1arZWoZ3h8XLCnjedKpw;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$_uYsVDc1arZWoZ3h8XLCnjedKpw;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$2$MultiSplitGuideViewController()V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hideMultiSplit(Z)V

    return-void
.end method

.method public synthetic lambda$new$3$MultiSplitGuideViewController()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$tgx0s7iPAzTWtOiiLBwuE82cDYE;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$tgx0s7iPAzTWtOiiLBwuE82cDYE;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$requestHide$7$MultiSplitGuideViewController(Ljava/lang/Runnable;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->removeView()V

    .line 215
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$requestHideForSubHandler$6$MultiSplitGuideViewController(Ljava/lang/Runnable;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->removeView()V

    .line 197
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$scrollGuideView$12$MultiSplitGuideViewController(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 385
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public requestHide(Landroid/graphics/Rect;IZZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    .line 209
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mIsShownToast:Z

    .line 210
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->commitSnap(Landroid/graphics/Rect;IZZ)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 213
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    new-instance p3, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;

    invoke-direct {p3, p0, p5}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->removeView()V

    .line 220
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public requestHideForSubHandler(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->commitSnapForSubHandler(Landroid/graphics/Rect;I)V

    .line 193
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    monitor-enter p1

    .line 195
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mPendingRunnables:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$R3ACaI-yQSSB2g5IFE4SZshh0bQ;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$R3ACaI-yQSSB2g5IFE4SZshh0bQ;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->removeView()V

    .line 202
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public requestShow(Landroid/graphics/Rect;)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->addView()V

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public requestShow(Landroid/graphics/Rect;IZZ)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->addView()V

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->snapPosition(Landroid/graphics/Rect;IZZ)V

    :cond_0
    return-void
.end method

.method public requestShowForSubHandler(Landroid/graphics/Rect;I)V
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->addView()V

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->snapPositionForSubHandler(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method
