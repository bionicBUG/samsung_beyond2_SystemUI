.class Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;
.super Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;
.source "DragAndDropServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dnd/drag/DragAndDropServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1$1;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 42
    iget-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-static {p1}, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v6, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;Landroid/graphics/Bitmap;III)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hide()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-static {v0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$lkEkXmMw_5BIzj0ufIqFxqRW8D8;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$lkEkXmMw_5BIzj0ufIqFxqRW8D8;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$bind$0$DragAndDropServerService$1(Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->bind(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method public synthetic lambda$hide$2$DragAndDropServerService$1()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$show$1$DragAndDropServerService$1()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->this$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-static {v0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->access$000(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$hPq3UaPYIQjIY6CuzArVj14RgHY;

    invoke-direct {v1, p0}, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$hPq3UaPYIQjIY6CuzArVj14RgHY;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
