.class Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->onDragStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object v0, v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$000(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "call listener\'s onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$100(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;->onDragStart()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object v0, v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$200(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object v0, v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$100(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;->onDragEnd(IZ)V

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$1;->this$1:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$300(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
