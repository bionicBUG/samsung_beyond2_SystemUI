.class Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;
.super Ljava/lang/Object;
.source "DragAndDropServerService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/drag/DragAndDropServerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDraw$0$DragAndDropServerService$2(Landroid/view/View;)V
    .locals 0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iget-boolean v0, v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mFirstFrameDrawn:Z

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "onDraw : call onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iget-object v0, v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDragStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mFirstFrameDrawn:Z

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;->val$decorView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$2$JxBqQaGTOILO3WKt9KUiB8idYGA;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$2$JxBqQaGTOILO3WKt9KUiB8idYGA;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
