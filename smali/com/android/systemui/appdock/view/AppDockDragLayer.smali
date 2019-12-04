.class public Lcom/android/systemui/appdock/view/AppDockDragLayer;
.super Landroid/widget/FrameLayout;
.source "AppDockDragLayer.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/DragLayerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;,
        Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;
    }
.end annotation


# instance fields
.field private mDragStartTouch:Landroid/graphics/Point;

.field private mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

.field private mDragTargetAnimating:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    .line 40
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    .line 45
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/appdock/view/AppDockDragLayer;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    return p1
.end method

.method private addDragTargetView(II)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "[%d, %d]"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->appdock_grid_ui_item_icon_size:I

    invoke-static {v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealDimen(Landroid/content/Context;I)I

    move-result v1

    .line 135
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 136
    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/2addr v1, v0

    sub-int/2addr p1, v1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 137
    iget p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p2, p1

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x33

    .line 138
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setElevation(F)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    .line 144
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 146
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {p2, v0, v2, v1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;->onDragStart(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addDropTarget(Landroid/view/View;)V
    .locals 3

    .line 175
    instance-of v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "parent is null"

    .line 182
    invoke-static {v0, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 186
    :cond_1
    instance-of v2, v0, Lcom/android/systemui/appdock/view/DragLayerInterface;

    if-eqz v2, :cond_2

    .line 187
    check-cast v0, Lcom/android/systemui/appdock/view/DragLayerInterface;

    check-cast p0, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;

    invoke-interface {v0, p0}, Lcom/android/systemui/appdock/view/DragLayerInterface;->registerDropTarget(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "reigsteration is done."

    .line 188
    invoke-static {v0, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private checkDropTargetAdd()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 70
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    if-eqz v2, :cond_1

    return v3

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->checkDropTargetAdd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 76
    iput-boolean v3, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    .line 77
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->addDragTargetView(II)V

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    iget-object v4, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    iget-object v4, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 94
    iget-object v4, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;

    .line 95
    iget-object v6, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-interface {v5, v6, v1, p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;->onDragEnd(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v0, v5

    goto :goto_0

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    if-eqz p1, :cond_8

    .line 103
    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_6

    new-array v1, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "onDragEnd : targetBounds=%s"

    invoke-static {v3, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 108
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 111
    :cond_6
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockDragLayer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockDragLayer$1;-><init>(Lcom/android/systemui/appdock/view/AppDockDragLayer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    goto :goto_2

    .line 86
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;

    .line 87
    iget-object v4, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-interface {v3, v4, v1, p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;->onDragging(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V

    goto :goto_1

    :cond_8
    :goto_2
    return v2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 50
    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->isIsLayoutChangeAnimRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;)V
    .locals 4

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTargetAnimating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "mDragTargetAnimating true"

    .line 198
    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/appdock/view/AppDockDragTargetView;-><init>(Landroid/content/Context;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    .line 203
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    iget v0, p1, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->x:I

    iget v2, p1, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->y:I

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Point;->set(II)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 204
    iget-object p1, p1, Lcom/android/systemui/appdock/event/AppDockEditDragStartEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "AppDockEditDragStartEvent : info=%s"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerDropTarget(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "mDropTargets size=%d"

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeDropTargetViewIfNeeded()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragTarget:Lcom/android/systemui/appdock/view/AppDockDragTargetView;

    .line 157
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockDragLayer;->mDragStartTouch:Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-void
.end method
