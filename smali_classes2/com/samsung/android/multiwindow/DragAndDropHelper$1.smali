.class Lcom/samsung/android/multiwindow/DragAndDropHelper$1;
.super Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$400(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$2;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "onDragStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$400(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
