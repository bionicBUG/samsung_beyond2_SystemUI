.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;
.super Landroid/widget/FrameLayout;
.source "BubbleContainerView.java"

# interfaces
.implements Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActivatedXSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mActivatedYSpringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimElevation:I

.field private mContext:Landroid/content/Context;

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFolderItemLeftMargin:I

.field private mFolderItemTopMargin:I

.field private mFolderItemWidth:I

.field private mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private mIconViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsAppIconMoving:Z

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLongClickPositionX:F

.field private mLongClickPositionY:F

.field private mMoveInterval:I

.field private mPointerFolderDescription:Ljava/lang/String;

.field private mPointerGroupView:Landroid/view/ViewGroup;

.field private mPointerHeight:I

.field private mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPointerMarginLeft:I

.field private mPointerMarginRight:I

.field private mPointerMarginTop:I

.field private mPointerSettleDownEffectRequested:Z

.field private mPointerSettleDownGap:I

.field private mPointerTouchListener:Landroid/view/View$OnTouchListener;

.field private mPointerView:Landroid/widget/ImageView;

.field private mPointerWidth:I

.field private mSecondIconView:Landroid/widget/ImageView;

.field private mSpringChainX:Lcom/facebook/rebound/SpringChain;

.field private mSpringChainY:Lcom/facebook/rebound/SpringChain;

.field private mStatusBarHeight:I

.field private mTmpLocation:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRegion:Landroid/graphics/Region;

.field private mTouchableRegion:Landroid/graphics/Region;

.field private mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 99
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpLocation:[I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 112
    iput-boolean p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownEffectRequested:Z

    .line 117
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRegion:Landroid/graphics/Region;

    .line 118
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    .line 120
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$tKeQOlyzASaEzKiCE-SuBDAkgeQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$tKeQOlyzASaEzKiCE-SuBDAkgeQ;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    const/16 p2, 0xa

    const/16 v0, 0x96

    .line 812
    invoke-static {v0, p2, v0, p2}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 813
    invoke-static {v0, p2, v0, p2}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 814
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    .line 815
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    const-string p2, "BubbleContainerManager"

    const-string v0, "[ContainerView] Create BubbleContainerView"

    .line 130
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mAnimElevation:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Landroid/view/ViewGroup;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->settleDownPointerEffect()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->isSpringEffectCompleted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 2

    .line 612
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ContainerView] addIconView: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->createIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)Landroid/widget/ImageView;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePositionOfIconViewList()V

    .line 620
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isPointerViewState()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 621
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePointerViewVisibility(I)V

    .line 622
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_1

    .line 623
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 626
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToShowPointerGroupView()V

    .line 633
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->buildSpringChainsOfAllAppIcons()V

    .line 634
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_3

    const p1, 0x3f933333    # 1.15f

    .line 635
    invoke-direct {p0, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->scaleTopIconView(FF)V

    :cond_3
    return-void
.end method

.method private adjustPointerPosition()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerPosition(FF)V

    return-void
.end method

.method private animateToScaleIconViewList(FF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 224
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 225
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$Yv1kr_F2x6Q7wf1EBDmPlqNRnE4;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$Yv1kr_F2x6Q7wf1EBDmPlqNRnE4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xa7

    .line 232
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private buildSpringChainsOfAllAppIcons()V
    .locals 8

    .line 818
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0xa

    const/16 v1, 0x96

    .line 826
    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 827
    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    .line 829
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 831
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-int v6, v0, v2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    if-ge v2, v1, :cond_1

    const/4 v3, 0x4

    .line 835
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 837
    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    new-instance v6, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;

    invoke-direct {v6, p0, v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;F)V

    invoke-virtual {v3, v6}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    .line 874
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$7;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$7;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/SpringChain;->addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 913
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateAllSpringsCurrentValue()V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    .line 916
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0, v3}, Lcom/facebook/rebound/SpringChain;->setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private createFloatingIconAnimation(FF)Landroid/view/animation/AnimationSet;
    .locals 11

    .line 295
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 297
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v8, p1

    move v10, p2

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 p1, 0xfa

    .line 299
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 300
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 303
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 304
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 305
    sget-object p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 307
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private createIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)Landroid/widget/ImageView;
    .locals 2

    .line 778
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 781
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 783
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 785
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->setIconView(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private getPointerViewBounds()Landroid/graphics/Rect;
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 601
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 602
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    add-int/2addr v3, v0

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerHeight:I

    add-int/2addr p0, v1

    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpLocation:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    .line 215
    aget p0, p0, v1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, v0

    add-int/2addr p1, p0

    .line 219
    invoke-virtual {p2, v0, p0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private initListeners()V
    .locals 1

    .line 338
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$GnmnTc4up-PEM9JDEaijeG0xoC8;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$GnmnTc4up-PEM9JDEaijeG0xoC8;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerTouchListener:Landroid/view/View$OnTouchListener;

    .line 440
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9jSI-JFoSNu4xSutjg0QlrM0UZ4;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9jSI-JFoSNu4xSutjg0QlrM0UZ4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->registerListeners()V

    return-void
.end method

.method private initPosition()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mStatusBarHeight:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 156
    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getSafeInsetTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginTop:I

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 157
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 158
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerPosition(FF)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->saveBubbleContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initResources()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mStatusBarHeight:I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_move_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mMoveInterval:I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerHeight:I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_settle_down_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownGap:I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginTop:I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginLeft:I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_pointer_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginRight:I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemWidth:I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemLeftMargin:I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemTopMargin:I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_folder_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mAnimElevation:I

    .line 188
    sget v0, Lcom/android/systemui/R$id;->minimize_container_pointer_group_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 190
    sget v0, Lcom/android/systemui/R$id;->minimize_container_pointer_control_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->bubble_container_pointer_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerFolderDescription:Ljava/lang/String;

    return-void
.end method

.method private isSpringEffectCompleted()Z
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mActivatedXSpringList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerListeners()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private removeAllSpringsListeners()V
    .locals 3

    .line 939
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[ContainerView] removeAllSpringsListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 941
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 944
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    const/16 v1, 0x96

    .line 947
    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    .line 948
    invoke-static {v1, v0, v1, v0}, Lcom/facebook/rebound/SpringChain;->create(IIII)Lcom/facebook/rebound/SpringChain;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    return-void
.end method

.method private removeIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Z)V
    .locals 2

    .line 640
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 648
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 649
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 650
    sget-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 651
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 666
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->buildSpringChainsOfAllAppIcons()V

    return-void
.end method

.method private requestPointerSettleDownEffect()V
    .locals 1

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownEffectRequested:Z

    return-void
.end method

.method private scaleTopIconView(FF)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 329
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 331
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 332
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private setPointerPosition(FF)V
    .locals 7

    .line 202
    new-instance v6, Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerHeight:I

    add-int/2addr v1, p2

    invoke-direct {v6, p1, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 205
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mStatusBarHeight:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 206
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginLeft:I

    neg-int v2, p1

    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerMarginRight:I

    neg-int v4, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 208
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget p2, v6, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget p1, v6, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private settleDownPointerEffect()V
    .locals 8

    .line 732
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownEffectRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownEffectRequested:Z

    .line 737
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 739
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 740
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_1

    .line 741
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 743
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 744
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    .line 745
    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownGap:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v4, v7, v0

    aput v5, v7, v2

    .line 747
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 748
    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v6, [F

    .line 755
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 756
    new-instance v6, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$CSsXAGMKec0V8jxO_A7icUwHxzQ;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$CSsXAGMKec0V8jxO_A7icUwHxzQ;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 763
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 764
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 765
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0xc8

    .line 767
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 768
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 769
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 771
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 772
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private unregisterListeners()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private updateAllSpringsCurrentValue()V
    .locals 6

    .line 952
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 953
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 954
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/rebound/Spring;

    .line 955
    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 956
    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    float-to-double v4, v0

    .line 957
    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 959
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 960
    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 961
    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    float-to-double v2, v1

    .line 962
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updatePositionOfIconViewList()V
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 678
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 680
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 681
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 682
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSecondIconView()V
    .locals 6

    .line 692
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 695
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 705
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerFolderDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    new-instance v4, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    .line 718
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_3

    .line 722
    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    .line 724
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method private updateSpringChainEndValue()V
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 925
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 926
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getAllSprings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 933
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object p0

    float-to-double v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :cond_1
    return-void
.end method

.method private updateSpringConfig(II)V
    .locals 7

    .line 967
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 969
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    int-to-double v3, p2

    .line 970
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 971
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 973
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 974
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 976
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 977
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 978
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainX:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 979
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    iput-wide v5, p1, Lcom/facebook/rebound/SpringConfig;->friction:D

    .line 980
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p1

    .line 981
    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/facebook/rebound/SpringConfig;->tension:D

    .line 982
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSpringChainY:Lcom/facebook/rebound/SpringChain;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;

    move-result-object p0

    .line 983
    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/rebound/SpringConfig;->friction:D

    return-void
.end method


# virtual methods
.method animateToHidePointerView(Landroid/graphics/Rect;)V
    .locals 6

    .line 249
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemLeftMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 250
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemTopMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 251
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 253
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemWidth:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFolderItemLeftMargin:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int v0, p1

    .line 257
    :cond_0
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x11b

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 259
    sget-object v3, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 260
    new-instance v3, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {p1, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePositionOfIconViewList()V

    .line 278
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    .line 281
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 282
    iget-object v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 283
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 285
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 286
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 287
    sget-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method animateToShowPointerGroupView()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 239
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 241
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    new-instance v3, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$9dGdZBEzx13OR444NICxOUaBNso;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;FF)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 571
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 572
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[ContainerView] dispatchKeyEvent(DOWN)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->onKeyDown(I)V

    .line 578
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateTouchableRegion()V

    .line 477
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isPointerViewState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 484
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 485
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method getFolderPosition(II)Landroid/graphics/PointF;
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerWidth:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 607
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerHeight:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    .line 608
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 136
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->registerCallback(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;)V

    .line 137
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->initResources()V

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->initListeners()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->initPosition()V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const/16 p1, 0x8

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$animateToScaleIconViewList$1$BubbleContainerView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 227
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$animateToShowPointerGroupView$2$BubbleContainerView(FF)V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePositionOfIconViewList()V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->createFloatingIconAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->requestPointerSettleDownEffect()V

    return-void
.end method

.method public synthetic lambda$initListeners$3$BubbleContainerView()V
    .locals 2

    const v0, 0x3f933333    # 1.15f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToScaleIconViewList(FF)V

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    .line 405
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v1, "fullscreen_mode_request_pointer_moving"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 406
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initListeners$4$BubbleContainerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 340
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, ")"

    const-string v4, "[ContainerView] onTouch("

    const-string v5, "BubbleContainerManager"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_e

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-eq v2, v7, :cond_7

    if-eq v2, v9, :cond_0

    const/4 p1, 0x3

    if-eq v2, p1, :cond_7

    goto/16 :goto_3

    .line 355
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-nez v3, :cond_5

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget v9, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFirstDownX:F

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v9, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mMoveInterval:I

    int-to-float v9, v9

    cmpl-float v3, v3, v9

    if-gez v3, :cond_2

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFirstDownY:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mMoveInterval:I

    int-to-float v3, v3

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v7

    :goto_1
    if-nez p2, :cond_3

    goto/16 :goto_3

    .line 362
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v3, "fullscreen_mode_request_pointer_moving"

    invoke-virtual {p2, v3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 363
    iput-boolean v7, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->requestPointerSettleDownEffect()V

    const/16 p2, 0x96

    .line 365
    invoke-direct {p0, p2, v8}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSpringConfig(II)V

    .line 366
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 367
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 368
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 369
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    const v3, 0x3f933333    # 1.15f

    .line 371
    invoke-direct {p0, p2, v3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToScaleIconViewList(FF)V

    .line 372
    sget-boolean p2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): Ready to move"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionX:F

    sub-float v2, v0, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionY:F

    sub-float v2, v1, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 382
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionX:F

    .line 383
    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionY:F

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSpringChainEndValue()V

    .line 386
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 387
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    :cond_6
    move v6, v7

    goto/16 :goto_3

    .line 394
    :cond_7
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_a

    .line 397
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result p1

    if-nez p1, :cond_9

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->adjustPointerPosition()V

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSpringChainEndValue()V

    .line 400
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->saveBubbleContainerBounds(Landroid/graphics/Rect;)V

    .line 402
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$B8wrMOsr4loSMNj2s6qOCW1Htrs;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$B8wrMOsr4loSMNj2s6qOCW1Htrs;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 411
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 412
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 412
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->throwTrashAway(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 414
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionX:F

    iget p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionY:F

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerPosition(FF)V

    goto :goto_2

    .line 417
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->hideTrashBox()V

    .line 418
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionX:F

    iget p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionY:F

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerPosition(FF)V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSpringChainEndValue()V

    const/16 p1, 0x64

    .line 420
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSpringConfig(II)V

    .line 422
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->saveBubbleContainerBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 423
    :cond_c
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isFolderCloseAnimating()Z

    move-result p1

    if-nez p1, :cond_10

    .line 424
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result p1

    if-ne p1, v7, :cond_d

    .line 425
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1, v6}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 427
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->launchItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_3

    .line 430
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    goto :goto_3

    .line 345
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxHiding()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    .line 348
    :cond_f
    iput-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    .line 349
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFirstDownX:F

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionX:F

    .line 350
    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mFirstDownY:F

    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLastPositionY:F

    .line 351
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return v6
.end method

.method public synthetic lambda$initListeners$5$BubbleContainerView(Landroid/view/View;)Z
    .locals 1

    .line 441
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 444
    :cond_0
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BubbleContainerManager"

    const-string v0, "[ContainerView] onLongClick: Show Trash"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionX:F

    .line 446
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mLongClickPositionY:F

    .line 447
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$BubbleContainerView(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    .line 122
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 123
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 124
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 p0, 0x3

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public synthetic lambda$settleDownPointerEffect$6$BubbleContainerView(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 749
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-nez p0, :cond_0

    .line 750
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 751
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$settleDownPointerEffect$7$BubbleContainerView(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 757
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIsAppIconMoving:Z

    if-nez p0, :cond_0

    .line 758
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 759
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 467
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 468
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    .line 564
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCloseSystemDialogs(Ljava/lang/String;)V

    .line 565
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "BubbleContainerManager"

    const-string v0, "[ContainerView] onCloseSystemDialogs"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    return-void
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->showWindow()V

    .line 508
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->addIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSecondIconView()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    .line 518
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->removeIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Z)V

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateSecondIconView()V

    if-eqz v0, :cond_2

    .line 521
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 522
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->removeAllSpringsListeners()V

    .line 524
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->hideWindow()V

    .line 526
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 527
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "BubbleContainerManager"

    const-string v0, "[ContainerView] onItemRemoved: 1 item left, close folder if needed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    :cond_4
    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isPointerViewState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    .line 543
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 545
    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 547
    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerPosition(FF)V

    .line 548
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePositionOfIconViewList()V

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateAllSpringsCurrentValue()V

    .line 551
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    .line 553
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result p2

    iget p3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownGap:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 554
    iget-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 555
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mSecondIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getPointerViewBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->saveBubbleContainerBounds(Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V

    .line 499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewDestroyed()V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->unregisterListeners()V

    return-void
.end method

.method removeAllIconViews()V
    .locals 3

    const/16 v0, 0x8

    .line 793
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePointerViewVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 795
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 799
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->removeAllSpringsListeners()V

    .line 800
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->hideWindow()V

    return-void
.end method

.method setPointerViewAccessibility(Z)V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-void
.end method

.method updatePointerViewVisibility(I)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateTouchableRegion()V
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 583
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isPointerViewState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getViewBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 585
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mPointerSettleDownGap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 595
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method
