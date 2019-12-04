.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;
.super Landroid/widget/FrameLayout;
.source "BubbleContainerTrashBoxView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCircleBackgroundView:Landroid/widget/ImageView;

.field private mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDisplayWidth:I

.field private mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private mHideTrashBoxRunnable:Ljava/lang/Runnable;

.field private mIsTrashBoxCoverOpened:Z

.field private mRemoveRangeBounds:Landroid/graphics/Rect;

.field private mRemoveRangeHeight:I

.field private mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mTargetTrashView:Landroid/view/View;

.field private mTmpLocation:[I

.field private mTrashBoxBodyView:Landroid/widget/ImageView;

.field private mTrashBoxCircleBgCloseColor:I

.field private mTrashBoxCircleBgOpenColor:I

.field private mTrashBoxCoverDirection:I

.field private mTrashBoxCoverView:Landroid/widget/ImageView;

.field private mTrashBoxGroupView:Landroid/widget/LinearLayout;

.field private mTrashBoxIconView:Landroid/view/View;

.field private mTrashBoxTextView:Landroid/widget/TextView;

.field private mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 80
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTmpLocation:[I

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    .line 89
    iput p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    .line 96
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToHideTrashBoxGroupView()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animateToBounceTrashBoxIcon()V
    .locals 20

    move-object/from16 v0, p0

    .line 255
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3e800000    # 0.25f

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x10a

    .line 258
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 260
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v12, 0x3f8ccccd    # 1.1f

    const v13, 0x3f8ccccd    # 1.1f

    const v14, 0x3f8ccccd    # 1.1f

    const v15, 0x3f8ccccd    # 1.1f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x14d

    .line 262
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 263
    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 271
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 273
    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 275
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 277
    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToChangeCircleBackgroundViewColor(Z)V
    .locals 3

    .line 299
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TrashBox] animateToChangeCircleBackgroundViewColor, openTrashBoxCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 302
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    aput p1, v0, v2

    .line 303
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    aput p1, v0, v1

    goto :goto_0

    .line 305
    :cond_1
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    aput p1, v0, v2

    .line 306
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    aput p1, v0, v1

    .line 308
    :goto_0
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 309
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$F288rW1VfTUn5mkrW3IKkN-Syfk;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$F288rW1VfTUn5mkrW3IKkN-Syfk;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 312
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideCircleBackgroundView()V
    .locals 11

    .line 281
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 286
    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 289
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 290
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x14d

    .line 291
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x1

    .line 292
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 293
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 295
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToHideTrashBoxGroupView()V
    .locals 11

    .line 316
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 317
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 321
    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 322
    new-instance v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 334
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 335
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 336
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x14d

    .line 337
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x1

    .line 338
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 340
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToHideTrashBoxText()V
    .locals 3

    .line 376
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe9

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 378
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 381
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToMoveTrashToTrashBox(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 13

    .line 459
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTmpLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 461
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTmpLocation:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 462
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 463
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 464
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 466
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v11, v0

    .line 467
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float v12, p2

    .line 468
    new-instance p2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ee66666    # 0.45f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3ee66666    # 0.45f

    move-object v6, p2

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 469
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 471
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 472
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 473
    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 474
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x10a

    .line 475
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 476
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 477
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 478
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 490
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToOpenCloseTrashBoxCover(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 345
    iget v1, v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/high16 v1, -0x3e900000    # -15.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41700000    # 15.0f

    :goto_0
    move v3, v1

    if-eqz p1, :cond_1

    .line 352
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 354
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const v17, -0x42b33333    # -0.05f

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 358
    :cond_1
    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 360
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const v16, -0x42b33333    # -0.05f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 365
    :goto_1
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 366
    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 367
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v3, 0x10a

    .line 369
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 370
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 372
    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToScaleTrashBoxIconLayout(FF)V
    .locals 10

    .line 385
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 387
    sget-object p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0x85

    .line 388
    invoke-virtual {v9, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 389
    invoke-virtual {v9, p1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 390
    invoke-virtual {v9, p1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 391
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToShowHideCircleBackgroundView(Z)V
    .locals 13

    .line 395
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 401
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 402
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 406
    :cond_0
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 407
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f400000    # 0.75f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 411
    :goto_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 412
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 413
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 414
    sget-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 415
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 416
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const-wide/16 v0, 0xe9

    .line 417
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 418
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 431
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToShowTrashBoxGroupView()V
    .locals 11

    .line 435
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 436
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 438
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 440
    sget-object v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 442
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 443
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 444
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x14d

    .line 445
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x1

    .line 446
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 447
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToSwallowTrash()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 452
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 453
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 454
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private closeTrashBoxCover()V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToChangeCircleBackgroundViewColor(Z)V

    .line 245
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 246
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToScaleTrashBoxIconLayout(FF)V

    .line 247
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    .line 248
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    :cond_0
    return-void
.end method

.method private openTrashBoxCover()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    .line 238
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToChangeCircleBackgroundViewColor(Z)V

    :cond_0
    return-void
.end method

.method private updateRemoveRangeBounds()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 203
    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mDisplayWidth:I

    if-eq v1, v0, :cond_0

    .line 204
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mDisplayWidth:I

    .line 205
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mDisplayWidth:I

    div-int/lit8 v1, v0, 0x3

    .line 206
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeHeight:I

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 207
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TrashBox] updateRemoveRangeBounds: RemoveRangeBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BubbleContainerManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateTrashBoxCoverDirection(Landroid/graphics/Rect;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mDisplayWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 228
    :goto_0
    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    if-eq v1, p1, :cond_1

    .line 229
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    .line 230
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3f8ccccd    # 1.1f

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToScaleTrashBoxIconLayout(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method clearAllAnimations()V
    .locals 2

    .line 175
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[TrashBox] clearAnimations()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mSwallowAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method hideTrashBox()V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[TrashBox] hideTrashBox()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToHideTrashBoxGroupView()V

    return-void
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 101
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->minimize_container_trash_box_remove_range_height:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeHeight:I

    .line 106
    sget p1, Lcom/android/systemui/R$id;->trash_box_circle_background_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->minimize_container_trash_box_cover_closed_circle_color:I

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    .line 109
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->minimize_container_trash_box_cover_opened_circle_color:I

    .line 110
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgCloseColor:I

    .line 111
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->minimize_container_trash_box_circle_bg_drawable:I

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 113
    sget p2, Lcom/android/systemui/R$id;->minimize_container_trash_box_circle_bg_drawable_layer:I

    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCircleBgOpenColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    sget p1, Lcom/android/systemui/R$id;->trash_box_group_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxGroupView:Landroid/widget/LinearLayout;

    .line 119
    sget p1, Lcom/android/systemui/R$id;->trash_box_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxIconView:Landroid/view/View;

    .line 120
    sget p1, Lcom/android/systemui/R$id;->trash_box_cover_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverView:Landroid/widget/ImageView;

    .line 121
    sget p1, Lcom/android/systemui/R$id;->trash_box_body_swallow_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxBodyView:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$anim;->minimize_container_trash_box_body_swallow_anim:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    sget p1, Lcom/android/systemui/R$id;->trash_box_text_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method isInRemoveRange(Landroid/graphics/Rect;)Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mRemoveRangeBounds:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$animateToChangeCircleBackgroundViewColor$2$BubbleContainerTrashBoxView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCircleBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 310
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 309
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public synthetic lambda$throwTrashAway$0$BubbleContainerTrashBoxView()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToHideCircleBackgroundView()V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToBounceTrashBoxIcon()V

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToSwallowTrash()V

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToHideTrashBoxText()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$throwTrashAway$1$BubbleContainerTrashBoxView()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToOpenCloseTrashBoxCover(Z)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method removeRunnables()V
    .locals 2

    .line 192
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[TrashBox] removeRunnables()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 197
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method showTrashBox(Landroid/graphics/Rect;)Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v1, "fullscreen_mode_request_trash_box"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v2, "[TrashBox] showTrashBox()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->setTrashBoxShownState(Z)V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->updateRemoveRangeBounds()V

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 137
    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToShowTrashBoxGroupView()V

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mIsTrashBoxCoverOpened:Z

    .line 141
    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTrashBoxCoverDirection:I

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->updateTrashBoxCoverState(Landroid/graphics/Rect;)V

    return v2

    :cond_1
    return v1
.end method

.method throwTrashAway(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 155
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mTargetTrashView:Landroid/view/View;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToMoveTrashToTrashBox(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 157
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$rwTKzL9Zm87QTmQkQTRjHOAjmjE;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$rwTKzL9Zm87QTmQkQTRjHOAjmjE;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$yqD0zptuRJTPg2_Flk1nWUhOygo;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerTrashBoxView$yqD0zptuRJTPg2_Flk1nWUhOygo;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    .line 170
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mHideTrashBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->mCloseTrashBoxCoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x85

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateTrashBoxCoverState(Landroid/graphics/Rect;)V
    .locals 1

    .line 217
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->openTrashBoxCover()V

    .line 219
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->updateTrashBoxCoverDirection(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->closeTrashBoxCover()V

    :goto_0
    return-void
.end method
