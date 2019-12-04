.class Lcom/android/systemui/dnd/drag/DragAndDropView$3;
.super Ljava/lang/Object;
.source "DragAndDropView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/drag/DragAndDropView;->animateBoundsMove(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

.field final synthetic val$anchorBounds:Landroid/graphics/Rect;

.field final synthetic val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$stackBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$stackBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$anchorBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 452
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 453
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$stackBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$anchorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 455
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 457
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 458
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView$3;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropView;->mDragTargetView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
