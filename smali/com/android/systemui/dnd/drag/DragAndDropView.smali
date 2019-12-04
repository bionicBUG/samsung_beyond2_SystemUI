.class public Lcom/android/systemui/dnd/drag/DragAndDropView;
.super Landroid/widget/FrameLayout;
.source "DragAndDropView.java"


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mCurrentTarget:I
    .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
    .end annotation
.end field

.field mDeltaPoint:Landroid/graphics/Point;

.field mDownPoint:Landroid/graphics/Point;

.field mDragTargetDimView:Landroid/view/View;

.field mDragTargetHandlerView:Landroid/view/View;

.field mDragTargetImageView:Landroid/widget/ImageView;

.field mDragTargetView:Landroid/widget/FrameLayout;

.field mDropTargetArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/dnd/drop/DropTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDropTargetMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/dnd/drop/DropTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDropTargetViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/dnd/drop/DropTargetView;",
            ">;"
        }
    .end annotation
.end field

.field mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

.field mFirstDragLocation:Z

.field mFirstFrameDrawn:Z

.field mIsDragEndCalled:Z

.field mIsPortrait:Z

.field mIsRealSnapshot:Z

.field mLastPoint:Landroid/graphics/Point;

.field mMovePoint:Landroid/graphics/Point;

.field mPassedInitialSlop:Z

.field mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

.field mService:Lcom/android/systemui/dnd/drag/IDragService;

.field mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

.field mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/drag/DragAndDropView;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/dnd/drag/DragAndDropView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    .line 60
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    .line 61
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    .line 62
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDeltaPoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    .line 82
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    .line 83
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    .line 86
    new-instance p2, Lcom/android/systemui/dnd/StackVisibility;

    invoke-direct {p2}, Lcom/android/systemui/dnd/StackVisibility;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstFrameDrawn:Z

    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstDragLocation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/dnd/drag/DragAndDropView;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dnd/drag/DragAndDropView;->onDragStart(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/dnd/drag/DragAndDropView;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->changeDropTarget(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/dnd/drag/DragAndDropView;)I
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getWindowingModeFromDropTarget()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/dnd/drag/DragAndDropView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->animateDragEnd()V

    return-void
.end method

.method private addOnPreDrawListener(Ljava/lang/Runnable;)V
    .locals 3

    .line 330
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/dnd/drag/DragAndDropView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView$2;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V
    .locals 3

    .line 448
    invoke-direct {p0, p2}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getDragTargetAnchorRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 449
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/android/systemui/dnd/drag/DragAndDropView$3;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView$3;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-instance p0, Landroid/view/animation/ElasticCustom;

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, p2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x1f4

    .line 462
    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateDragEnd()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 467
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 468
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    .line 467
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 470
    new-instance v1, Lcom/android/systemui/dnd/drag/DragAndDropView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/drag/DragAndDropView$4;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateScaleUpAnimation()V
    .locals 8

    .line 436
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v1, [F

    .line 437
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p0

    aput p0, v1, v6

    aput v5, v1, v7

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    aput-object p0, v2, v7

    .line 436
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 439
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    .line 440
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 441
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private changeDropTarget(I)V
    .locals 5
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    .line 185
    iget v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    if-ne v0, p1, :cond_0

    return-void

    .line 186
    :cond_0
    sget-object v1, Lcom/android/systemui/dnd/drag/DragAndDropView;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "changeDropTarget [%d->%d]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    if-eqz v0, :cond_1

    .line 189
    invoke-direct {p0, v0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getDropTargetView(I)Lcom/android/systemui/dnd/drop/DropTargetView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-direct {p0, v1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/dnd/drop/DropTargetView;->setFocus(Lcom/android/systemui/dnd/drop/DropTargetInfo;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 193
    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getDropTargetView(I)Lcom/android/systemui/dnd/drop/DropTargetView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->getDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/dnd/drop/DropTargetView;->setFocus(Lcom/android/systemui/dnd/drop/DropTargetInfo;Z)V

    .line 196
    :cond_2
    iput p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    return-void
.end method

.method private getDragTargetAnchorRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 418
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 420
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {p0}, Lcom/android/systemui/dnd/RequesterInfo;->getWindowingMode()I

    move-result p0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_1

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p0, p0, -0x12

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, -0x12

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 422
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p0, p0, -0x12

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x12

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-object v0
.end method

.method private getDropTargetInfo(I)Lcom/android/systemui/dnd/drop/DropTargetInfo;
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    .line 177
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    return-object p0
.end method

.method private getDropTargetView(I)Lcom/android/systemui/dnd/drop/DropTargetView;
    .locals 0
    .param p1    # I
        .annotation build Lcom/android/systemui/dnd/drop/DropTarget;
        .end annotation
    .end param

    .line 181
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dnd/drop/DropTargetView;

    return-object p0
.end method

.method private getWindowingModeFromDropTarget()I
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    iget v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->winner_dnd_disable_drop_to_home:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v2

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    iget p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-interface {v0, p0}, Lcom/android/systemui/dnd/drop/DropTargetStrategy;->getWindowingModeFromDropTarget(I)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 1

    .line 105
    sget v0, Lcom/android/systemui/R$id;->drag_target:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    .line 106
    sget v0, Lcom/android/systemui/R$id;->drag_target_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetImageView:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/android/systemui/R$id;->drag_target_handler:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetHandlerView:Landroid/view/View;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->drag_target_dim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetDimView:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mTouchSlop:I

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mPassedInitialSlop:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsDragEndCalled:Z

    .line 114
    invoke-static {}, Lcom/android/systemui/dnd/drag/DragAndDropDI;->getDropTargetStrategy()Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    return-void
.end method

.method private initDragTarget(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    .line 230
    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    .line 231
    invoke-virtual {v3}, Lcom/android/systemui/dnd/RequesterInfo;->getTaskId()I

    move-result v3

    .line 230
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getTaskSnapshotForcely(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsRealSnapshot:Z

    goto :goto_0

    .line 237
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsRealSnapshot:Z

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 245
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_2

    const v3, -0x50506

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/high16 v0, 0x41a00000    # 20.0f

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetHandlerView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsRealSnapshot:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    new-instance p1, Lcom/android/systemui/dnd/drag/DragAndDropView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dnd/drag/DragAndDropView$1;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private initDropTargets()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/dnd/drop/DropTargetStrategy;->getVisibleDropTargets(Landroid/content/Context;Lcom/android/systemui/dnd/StackVisibility;Lcom/android/systemui/dnd/RequesterInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$layout;->dnd_drop_target_view:I

    .line 162
    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dnd/drop/DropTargetView;

    .line 163
    invoke-virtual {v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v4}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/dnd/drop/DropTargetView;->bind(II)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 173
    iput v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    return-void
.end method

.method public static synthetic lambda$zJSX0C8LjNF9R9CTpbUKq24Jb9s(Lcom/android/systemui/dnd/drag/DragAndDropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->animateScaleUpAnimation()V

    return-void
.end method

.method private onDragStart(II)V
    .locals 6

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 351
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 353
    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetDimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 359
    iget-object v3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 360
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {p2}, Lcom/android/systemui/dnd/RequesterInfo;->getWindowingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/dnd/StackVisibility;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 362
    new-instance p2, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$32-wkOjNxgWGCrgQziYp8lplyTg;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 367
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 368
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsRealSnapshot:Z

    if-eqz v0, :cond_0

    .line 371
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 372
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v3, 0x216

    .line 376
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 377
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 378
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 381
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 383
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 384
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 389
    new-instance v2, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$zJSX0C8LjNF9R9CTpbUKq24Jb9s;

    invoke-direct {v2, p0}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$zJSX0C8LjNF9R9CTpbUKq24Jb9s;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;)V

    .line 393
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v5, 0x41

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 394
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 395
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 396
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr p1, v5

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v3

    .line 397
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 399
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 400
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object p2, v2

    .line 403
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 404
    new-instance p1, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->addOnPreDrawListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saLogging(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bind(Landroid/graphics/Bitmap;III)V
    .locals 3

    .line 204
    new-instance v0, Lcom/android/systemui/dnd/RequesterInfo;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/systemui/dnd/RequesterInfo;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    const/4 p4, 0x0

    .line 205
    iput-boolean p4, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstFrameDrawn:Z

    .line 206
    iput-boolean p4, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstDragLocation:Z

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsPortrait:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/dnd/StackVisibility;->init(Landroid/content/Context;)Lcom/android/systemui/dnd/StackVisibility;

    .line 212
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropView;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const/4 p2, 0x2

    iget-object p3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mStackVisibility:Lcom/android/systemui/dnd/StackVisibility;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p2

    const-string p2, "requesterType=%d, windowingMode=%d / stackVisibility=%s"

    .line 212
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->initDropTargets()V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->initDragTarget(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onDragStart$0$DragAndDropView(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dnd/drag/DragAndDropView;->animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$onDragStart$1$DragAndDropView(Ljava/lang/Runnable;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {v0}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetDimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetDimView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 413
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 221
    iget-boolean p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstFrameDrawn:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstFrameDrawn:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->init()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p0, p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, p0, p2

    const-string p1, "changed=%b, [%d, %d, %d, %d]"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 119
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "measure size=[%d, %d]"

    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    .line 122
    invoke-virtual {p2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetViews:Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {p2}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/dnd/drop/DropTargetView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 127
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performDragEnd(I)V
    .locals 3

    .line 484
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsDragEndCalled:Z

    if-nez v0, :cond_1

    .line 485
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDragEnd : mCurrentTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0, p1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->saLogging(I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    iget v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-interface {v0, v1}, Lcom/android/systemui/dnd/drop/DropTargetStrategy;->preDragEnd(I)V

    .line 492
    iget v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    const/16 v1, 0x66

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mService:Lcom/android/systemui/dnd/drag/IDragService;

    invoke-interface {v1}, Lcom/android/systemui/dnd/drag/IDragService;->getClient()Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDragEnd(IZ)V

    const/4 p1, 0x0

    .line 495
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 497
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDroptTargetStrategy:Lcom/android/systemui/dnd/drop/DropTargetStrategy;

    iget v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mCurrentTarget:I

    invoke-interface {p1, v0}, Lcom/android/systemui/dnd/drop/DropTargetStrategy;->postDragEnd(I)V

    .line 499
    iput-boolean v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mIsDragEndCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 502
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setParent(Lcom/android/systemui/dnd/drag/IDragService;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mService:Lcom/android/systemui/dnd/drag/IDragService;

    return-void
.end method
