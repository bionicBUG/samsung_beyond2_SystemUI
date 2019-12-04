.class public Lcom/altamirasoft/path_animation/PathLineAnimationView;
.super Landroid/widget/ImageView;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field context:Landroid/content/Context;

.field private dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/PathLineAnimatorModel;",
            ">;"
        }
    .end annotation
.end field

.field haveLoaded:Z

.field haveSVG:Z

.field haveSize:Z

.field height:I

.field isFinished:Z

.field isFinishedSingleAnimation:Z

.field isReverse:Z

.field isSingleAnimation:Z

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

.field public needDebug:Z

.field needStart:Z

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field paint:Landroid/graphics/Paint;

.field pathPaint:Landroid/graphics/Paint;

.field pattern2:[F

.field pattern4:[F

.field reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field selfListener:Landroid/animation/Animator$AnimatorListener;

.field private set:Landroid/animation/AnimatorSet;

.field simplePaint:Landroid/graphics/Paint;

.field startDelay:J

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 87
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    .line 90
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 93
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 96
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v2, 0x0

    .line 107
    iput-wide v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    .line 109
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    .line 609
    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    .line 610
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    .line 135
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xc

    if-lt p1, p2, :cond_0

    .line 136
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 139
    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 153
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 154
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    .line 157
    iget-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 159
    iget-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    .line 162
    iget-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 164
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V
    .locals 1

    .line 715
    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 716
    iget-object p3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 717
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private resetAnimator()V
    .locals 8

    .line 513
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 516
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 520
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    new-array v3, v0, [F

    .line 521
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    .line 522
    iget-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;

    invoke-direct {v4, p0, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 536
    iget-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v3, :cond_0

    .line 538
    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 539
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 540
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 541
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 542
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 543
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 544
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    .line 546
    :cond_0
    iput-wide v6, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 547
    iput-wide v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-eqz v3, :cond_2

    .line 551
    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    .line 552
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 553
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 554
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    .line 555
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    .line 556
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    .line 557
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v1}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    .line 559
    :cond_2
    iput-wide v6, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    .line 560
    iput-wide v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    .line 567
    :goto_1
    iget-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    iget-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 571
    iget-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 572
    iget-object v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 574
    :cond_3
    iget v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    if-eqz v3, :cond_4

    .line 575
    iget-object v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 576
    iget-object v3, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v4, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 580
    :cond_4
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    iget-object v2, v2, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 583
    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    .line 584
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 585
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private runAnimation()V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    return-void

    .line 395
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    .line 403
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetProgress()V

    .line 404
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V

    .line 406
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateLineListenerValue()V

    .line 407
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V

    .line 411
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 412
    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 421
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public initData()V
    .locals 7

    .line 452
    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    .line 454
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    .line 458
    :cond_0
    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 463
    :cond_1
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    if-nez v0, :cond_2

    return-void

    .line 467
    :cond_2
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v0, :cond_3

    return-void

    .line 474
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    .line 475
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    .line 476
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    .line 477
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    .line 479
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    iget v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/altamirasoft/path_animation/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 484
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 485
    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 486
    new-instance v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {v3}, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;-><init>()V

    .line 487
    iput v2, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->position:I

    .line 488
    iget-object v5, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;

    .line 489
    iget-object v6, v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 490
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 491
    iget-object v5, v5, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    .line 492
    iput v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 493
    iput-boolean v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->isInitialized:Z

    .line 494
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_4
    iput-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    .line 499
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    if-eqz v0, :cond_5

    .line 500
    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    .line 501
    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public invalidateLineListenerValue()V
    .locals 3

    const/4 v0, 0x0

    .line 592
    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 594
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    if-eqz v2, :cond_0

    .line 595
    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineWidth(I)I

    move-result v2

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    .line 596
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineColor(I)I

    move-result v2

    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    .line 597
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v0}, Lcom/altamirasoft/path_animation/PathListener;->getLineCapStyle(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 616
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 623
    iget v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    move v2, v1

    .line 627
    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 629
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 632
    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    if-eqz v4, :cond_2

    .line 633
    iget-boolean v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 639
    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 640
    iget-object v3, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 648
    :cond_2
    iget v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    if-nez v4, :cond_3

    goto/16 :goto_1

    .line 653
    :cond_3
    iget v4, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    .line 657
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 659
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v7, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 669
    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    .line 670
    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float/2addr v6, v4

    .line 671
    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v11, v10

    add-float/2addr v11, v6

    sub-float/2addr v11, v4

    .line 673
    iget-object v12, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v5, v12, v1

    int-to-float v10, v10

    .line 674
    aput v10, v12, v9

    .line 675
    aput v6, v12, v8

    .line 676
    aput v4, v12, v7

    .line 678
    iget-object v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    invoke-direct {p0, p1, v6, v12, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    cmpl-float v6, v11, v5

    if-lez v6, :cond_6

    .line 680
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    aput v11, v6, v1

    .line 681
    aput v4, v6, v9

    .line 682
    iget-object v3, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    invoke-direct {p0, p1, v3, v6, v5}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto :goto_1

    .line 688
    :cond_4
    iget v6, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float/2addr v6, v4

    .line 689
    iget v10, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    if-lez v10, :cond_5

    .line 690
    iget-object v11, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    aput v5, v11, v1

    int-to-float v5, v10

    add-float/2addr v5, v4

    sub-float/2addr v5, v6

    .line 691
    aput v5, v11, v9

    .line 692
    aput v6, v11, v8

    .line 693
    aput v4, v11, v7

    .line 694
    iget-object v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    invoke-direct {p0, p1, v5, v11, v4}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    .line 698
    :cond_5
    iget v5, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v10, v5

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_6

    .line 699
    iget-object v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    int-to-float v11, v5

    add-float/2addr v11, v4

    aput v11, v10, v1

    .line 700
    aput v4, v10, v9

    .line 701
    aput v4, v10, v8

    .line 702
    aput v4, v10, v7

    .line 703
    iget-object v3, v3, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {p0, p1, v3, v10, v4}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 708
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 730
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string v1, "onRestoreInstanceState - view"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 722
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string v1, "onSaveInstanceState - view"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 739
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "log"

    const-string v1, "onSizeChanged - view"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 744
    iput-boolean p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    .line 745
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 752
    iget-boolean p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "log"

    const-string p1, "onViewAttachedToWindow - view"

    .line 753
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 760
    iget-boolean p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-eqz p1, :cond_0

    const-string p1, "log"

    const-string v0, "onViewDetachedFromWindow - view"

    .line 761
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->cancel()V

    return-void
.end method

.method public resetListener()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 182
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    .line 244
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public resetProgress()V
    .locals 3

    const/4 v0, 0x0

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    .line 439
    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 440
    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 442
    iput v2, v1, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
