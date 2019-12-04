.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 10

    .line 345
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1600(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v4, p1

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 347
    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v6

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1400(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v8

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->access$1500(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v9

    .line 346
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->onLongPress(Lcom/android/systemui/stackdivider/DividerView;IIZILandroid/graphics/Rect;II)V

    return-void
.end method
