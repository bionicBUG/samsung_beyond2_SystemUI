.class Lcom/android/systemui/dnd/drag/DragAndDropView$1;
.super Ljava/lang/Object;
.source "DragAndDropView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/drag/DragAndDropView;->initDragTarget(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropView;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    .line 254
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 255
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 257
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto/16 :goto_1

    .line 317
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-static {p2}, Lcom/android/systemui/dnd/drag/DragAndDropView;->access$200(Lcom/android/systemui/dnd/drag/DragAndDropView;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->performDragEnd(I)V

    .line 318
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-static {p2}, Lcom/android/systemui/dnd/drag/DragAndDropView;->access$300(Lcom/android/systemui/dnd/drag/DragAndDropView;)V

    goto/16 :goto_1

    .line 270
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-boolean v3, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstFrameDrawn:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstDragLocation:Z

    if-eqz v3, :cond_2

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    iget v3, p2, Landroid/graphics/Point;->x:I

    if-ne v3, v1, :cond_2

    .line 271
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    .line 275
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-boolean v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstDragLocation:Z

    if-nez v1, :cond_3

    .line 276
    iput-boolean v2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mFirstDragLocation:Z

    goto/16 :goto_1

    .line 280
    :cond_3
    iget-object v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int v3, p1, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p2, v0, p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/Point;->set(II)V

    .line 281
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDeltaPoint:Landroid/graphics/Point;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int v3, p1, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int p2, v0, p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/Point;->set(II)V

    .line 283
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 284
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 285
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 287
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-boolean v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mPassedInitialSlop:Z

    if-nez v1, :cond_5

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 288
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget v3, v1, Lcom/android/systemui/dnd/drag/DragAndDropView;->mTouchSlop:I

    if-gt p2, v3, :cond_4

    iget-object p2, v1, Lcom/android/systemui/dnd/drag/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget v1, v1, Lcom/android/systemui/dnd/drag/DragAndDropView;->mTouchSlop:I

    if-le p2, v1, :cond_5

    .line 289
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-boolean v2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mPassedInitialSlop:Z

    .line 292
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-boolean v1, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mPassedInitialSlop:Z

    if-eqz v1, :cond_b

    .line 294
    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDropTargetArr:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dnd/drop/DropTargetInfo;

    .line 295
    invoke-virtual {v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getTouchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 296
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-virtual {v1}, Lcom/android/systemui/dnd/drop/DropTargetInfo;->getDropTarget()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->access$100(Lcom/android/systemui/dnd/drag/DragAndDropView;I)V

    move p2, v2

    goto :goto_0

    :cond_7
    move p2, v3

    :goto_0
    if-nez p2, :cond_8

    .line 303
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-static {p2, v3}, Lcom/android/systemui/dnd/drag/DragAndDropView;->access$100(Lcom/android/systemui/dnd/drag/DragAndDropView;I)V

    .line 306
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {p2}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    goto :goto_1

    .line 259
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-static {p2, p1, v0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->access$000(Lcom/android/systemui/dnd/drag/DragAndDropView;II)V

    .line 261
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mRequesterInfo:Lcom/android/systemui/dnd/RequesterInfo;

    invoke-virtual {p2}, Lcom/android/systemui/dnd/RequesterInfo;->getType()I

    move-result p2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_a

    .line 262
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 264
    :cond_a
    iget-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p2, p2, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 323
    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Point;->set(II)V

    return v2
.end method
