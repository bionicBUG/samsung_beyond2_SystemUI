.class public Lcom/android/systemui/stackdivider/GuideViewController;
.super Ljava/lang/Object;
.source "GuideViewController.java"


# static fields
.field public static final SINE_IN_OUT90:Landroid/view/animation/Interpolator;

.field private static sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;


# instance fields
.field private mDefaultHandleMoveThreshold:I

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mDockSide:I

.field private mFirstSplitTargetPosition:I

.field private final mGuideBarRect:Landroid/graphics/Rect;

.field private final mGuideHeight:I

.field private mGuideView:Lcom/android/systemui/stackdivider/GuideView;

.field private mGuideViewColor:I

.field private mIsMoving:Z

.field private mLastSplitTargetPosition:I

.field private mMaximizeGuideView:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    const-string/jumbo v0, "window"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multiwindow_divider_guideview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->mw_divider_handle_move_threshold_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/GuideViewController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    return-void
.end method

.method private addView(Landroid/content/Context;)V
    .locals 2

    .line 283
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 284
    sget v0, Lcom/android/systemui/R$layout;->divider_guideview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/GuideView;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    .line 285
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    .line 319
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v10, p3

    goto :goto_3

    .line 323
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 325
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v9

    .line 326
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x3

    if-ne v3, v2, :cond_4

    .line 329
    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    goto :goto_2

    :cond_4
    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    :goto_2
    move v10, p3

    .line 327
    invoke-virtual {p1, p3, v2, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    .line 330
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/GuideViewController;->addView(Landroid/content/Context;)V

    .line 331
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    iget v8, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    move v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/stackdivider/GuideView;->init(ILandroid/graphics/Rect;ZLandroid/graphics/Rect;II)V

    .line 334
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_5

    move v3, v9

    goto :goto_4

    :cond_5
    move v3, p2

    :goto_4
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 335
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_6

    move v9, v10

    :cond_6
    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 336
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_7

    move/from16 v3, p6

    goto :goto_5

    .line 337
    :cond_7
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int/2addr v3, v4

    :goto_5
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 338
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_8

    .line 339
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_8
    move/from16 v3, p7

    :goto_6
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 342
    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v2, :cond_9

    .line 343
    new-instance v2, Lcom/android/systemui/stackdivider/GuideViewController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/stackdivider/GuideViewController$2;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 351
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    iget-boolean v4, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/systemui/stackdivider/GuideView;->show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V

    const/4 v1, 0x1

    .line 352
    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-gt p3, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    sub-int v0, p3, v0

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    .line 462
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    .line 467
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 470
    :goto_1
    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result p3

    .line 472
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 473
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 474
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 477
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    if-ne v0, p1, :cond_6

    .line 478
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    goto :goto_3

    .line 481
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    if-ne v0, p1, :cond_6

    .line 482
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 300
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v0, "MultiWindow GuideView"

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x800033

    .line 302
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x2

    .line 303
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, -0x1

    .line 304
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 305
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0xa2e

    .line 306
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x318

    .line 307
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    .line 312
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object p0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/GuideViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    .line 73
    :cond_0
    sget-object p0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    return-object p0
.end method

.method private isDockSideRight()Z
    .locals 1

    .line 492
    iget p0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isOutOfRangePosition(III)Z
    .locals 2

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    if-eq p2, v1, :cond_0

    if-le p1, p2, :cond_0

    return v0

    :cond_0
    if-eq p3, v1, :cond_3

    if-ge p1, p3, :cond_3

    return v0

    :cond_1
    if-eq p2, v1, :cond_2

    if-ge p1, p2, :cond_2

    return v0

    :cond_2
    if-eq p3, v1, :cond_3

    if-le p1, p3, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private removeView()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    :cond_0
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V
    .locals 14

    move-object v10, p0

    .line 358
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p6, :cond_1

    move/from16 v0, p4

    goto :goto_0

    :cond_1
    move/from16 v0, p3

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 368
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    const/4 v3, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_3

    .line 373
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_3

    .line 375
    :cond_3
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 376
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    .line 380
    :cond_5
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v2

    if-nez v2, :cond_7

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    .line 384
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 386
    :goto_1
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_3

    .line 388
    :cond_7
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    iget v3, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_2

    .line 393
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 395
    :goto_2
    iget v2, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_3

    :cond_9
    move v0, v1

    move v2, v0

    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v1

    const/4 v11, 0x1

    aput v2, v3, v11

    .line 398
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 399
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/stackdivider/GuideViewController;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 401
    iget-object v12, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$8Ir9l66rPGYQpfF0QiHSWNe-S3E;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$8Ir9l66rPGYQpfF0QiHSWNe-S3E;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;III)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 410
    iput-boolean v11, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    .line 411
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    :goto_4
    return-void
.end method

.method private scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
    .locals 14

    move-object v10, p0

    .line 417
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    move/from16 v0, p3

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    .line 424
    :goto_0
    iget v11, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v11, v1, v0

    .line 426
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 427
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/stackdivider/GuideViewController;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 429
    iget-object v12, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p4

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;III)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 438
    iget-object v7, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/stackdivider/GuideViewController$3;

    move-object v0, v8

    move v5, v11

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/stackdivider/GuideViewController$3;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;III)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method actionDown(Lcom/android/internal/policy/DividerSnapAlgorithm;Lcom/android/internal/policy/DividerSnapAlgorithm;ZZII)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_0

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_0
    iput p2, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-eqz p4, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_1
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    sub-int p2, p5, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    div-int/lit8 p1, p1, 0x2

    :goto_2
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-eqz p3, :cond_6

    if-eqz p4, :cond_5

    .line 102
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_3

    .line 103
    :cond_5
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int/2addr p6, p1

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p1, p6

    :goto_3
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    goto :goto_5

    :cond_6
    if-eqz p4, :cond_7

    .line 105
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_4

    .line 106
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_4

    .line 108
    :cond_8
    iget p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p1, p5

    :goto_4
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    :goto_5
    return-void
.end method

.method actionMove(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZLandroid/graphics/Rect;II)V
    .locals 14

    move-object v10, p0

    .line 115
    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 116
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    const/4 v1, 0x1

    if-eqz p7, :cond_0

    sub-int v2, p6, p3

    .line 117
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_0
    sub-int v2, p5, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    iput-boolean v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    :cond_2
    if-eqz p7, :cond_3

    move/from16 v12, p3

    goto :goto_1

    :cond_3
    move/from16 v12, p2

    .line 121
    :goto_1
    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    const/4 v13, -0x1

    if-nez v0, :cond_b

    .line 122
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {p0, v12, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p7, :cond_4

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move v4, v12

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 124
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 127
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    .line 130
    :goto_2
    iget-boolean v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-nez v0, :cond_10

    .line 131
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {p0, v12, v0, v13}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_3

    :cond_5
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_3
    move v12, v0

    goto/16 :goto_9

    .line 136
    :cond_6
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {p0, v12, v0, v13}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    :goto_4
    move v3, v0

    goto :goto_5

    .line 138
    :cond_7
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0, v12, v13, v0}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_4

    .line 141
    :cond_8
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    move v3, v12

    :goto_5
    if-eqz p7, :cond_a

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 146
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto/16 :goto_9

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move/from16 v3, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 149
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto/16 :goto_9

    .line 154
    :cond_b
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    invoke-direct {p0, v12, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-nez v0, :cond_10

    .line 155
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    iget v1, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0, v12, v0, v1}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p7, :cond_c

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 157
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move v4, v12

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 160
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    .line 163
    :goto_6
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-direct {p0, v12, v0, v13}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_7

    :cond_d
    iget v0, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_7
    move v12, v0

    goto :goto_8

    :cond_e
    if-eqz p7, :cond_f

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v3, v12

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 167
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_8

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move v2, v12

    move/from16 v3, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    .line 174
    :goto_8
    iput-boolean v11, v10, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    :cond_10
    :goto_9
    move-object v0, p1

    move-object/from16 v1, p4

    .line 177
    invoke-direct {p0, p1, v1, v12}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V

    return-void
.end method

.method actionUpOrCancel(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IZZLandroid/graphics/Rect;II)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p5

    .line 184
    iget-boolean v5, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-eqz v5, :cond_1

    if-eqz p6, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v5

    :goto_0
    const/4 v6, 0x0

    .line 189
    iput-boolean v6, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    .line 190
    iget-boolean v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_a

    .line 191
    invoke-virtual {p1, v5, v8, v6, v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 192
    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    iget v8, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0, v5, v7, v8}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-eq v4, v7, :cond_2

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    if-ne v4, v7, :cond_3

    :cond_2
    move v4, v9

    goto :goto_1

    :cond_3
    move v4, v6

    .line 195
    :goto_1
    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    const/4 v8, -0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    iget v5, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_3

    .line 197
    :cond_4
    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-direct {p0, v5, v8, v7}, Lcom/android/systemui/stackdivider/GuideViewController;->isOutOfRangePosition(III)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->isDockSideRight()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    move v5, v6

    :cond_6
    :goto_3
    if-nez p7, :cond_8

    if-eqz p6, :cond_7

    .line 202
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p2, v5}, Landroid/graphics/Point;-><init>(II)V

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    goto/16 :goto_7

    .line 204
    :cond_7
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v5, p3}, Landroid/graphics/Point;-><init>(II)V

    xor-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    goto/16 :goto_7

    :cond_8
    if-eqz p6, :cond_9

    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 208
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto/16 :goto_7

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v5

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 211
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_7

    :cond_a
    move-object/from16 v4, p4

    .line 216
    invoke-virtual {v4, v5, v8, v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 218
    iget v10, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 219
    iget v11, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-ge v5, v11, :cond_b

    .line 220
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 221
    iget v10, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_4

    .line 222
    :cond_b
    iget v11, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-le v5, v11, :cond_c

    .line 223
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    .line 224
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 227
    :cond_c
    :goto_4
    iget v4, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 228
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    if-eqz p6, :cond_d

    .line 230
    invoke-virtual {v5, p2, v10}, Landroid/graphics/Point;->set(II)V

    goto :goto_5

    .line 232
    :cond_d
    invoke-virtual {v5, v10, p3}, Landroid/graphics/Point;->set(II)V

    .line 235
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 236
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$NsZJk_WY2afcfgeDXh86XJ5_e2s;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V

    iget-object v1, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    .line 239
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    .line 236
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 241
    :cond_e
    invoke-virtual {p1, v4, v8, v6, v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 242
    invoke-virtual {p0, p1, v5, v9}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    .line 244
    :goto_6
    iput-boolean v6, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    :goto_7
    return-void
.end method

.method hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 266
    new-instance p3, Lcom/android/systemui/stackdivider/GuideViewController$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/stackdivider/GuideViewController$1;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/stackdivider/GuideView;->dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {p2}, Lcom/android/systemui/stackdivider/GuideView;->cancelAnimation()V

    const/4 p2, 0x0

    .line 276
    invoke-virtual {p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->onGuideViewVisibilityChanged(Z)V

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$actionUpOrCancel$0$GuideViewController(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    .line 238
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;Z)V

    return-void
.end method

.method public synthetic lambda$scrollGuideView$1$GuideViewController(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    move/from16 v4, p8

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$scrollMinimizeGuideView$2$GuideViewController(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    move/from16 v4, p8

    move v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method onLongPress(Lcom/android/systemui/stackdivider/DividerView;IIZILandroid/graphics/Rect;II)V
    .locals 9

    const/4 v0, 0x0

    move-object v1, p0

    .line 250
    iput-boolean v0, v1, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p5

    move v5, p4

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 252
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p3

    move v5, p4

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 255
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 0

    .line 488
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDockSide:I

    return-void
.end method

.method public setGuideViewBackgroundColor(I)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideViewColor:I

    return-void
.end method
