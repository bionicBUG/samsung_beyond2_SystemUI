.class Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;
.super Ljava/lang/Object;
.source "AppDockItemInfoViewHolder.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->executeLongClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string/jumbo p2, "toWindowingMode=%d, forceFullPrimary=%b"

    invoke-static {p2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 347
    invoke-static {}, Lcom/android/systemui/appdock/AppDockDI;->getActivityStarter()Lcom/android/systemui/appdock/ActivityStarterInterface;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    invoke-static {v1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->access$000(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, v1, v2, p1, v0}, Lcom/android/systemui/appdock/ActivityStarterInterface;->startApp(Lcom/android/systemui/appdock/model/AppDockItemInfo;Landroid/view/View;II)V

    .line 348
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/appdock/event/LaunchAppEvent;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->access$000(Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/systemui/appdock/event/LaunchAppEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;

    invoke-direct {p1, v3}, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :goto_0
    return-void
.end method

.method public onDragStart()V
    .locals 2

    .line 339
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 340
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method
