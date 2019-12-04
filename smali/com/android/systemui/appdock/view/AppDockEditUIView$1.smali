.class Lcom/android/systemui/appdock/view/AppDockEditUIView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AppDockEditUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockEditUIView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockEditUIView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView$1;->this$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView$1;->this$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return p1
.end method
