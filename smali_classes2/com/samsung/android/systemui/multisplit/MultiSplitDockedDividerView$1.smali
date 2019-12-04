.class Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiSplitDockedDividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->access$000(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->access$100(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;Landroid/graphics/Rect;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->access$200(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->access$000(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->requestShow(Landroid/graphics/Rect;)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    return-void
.end method
