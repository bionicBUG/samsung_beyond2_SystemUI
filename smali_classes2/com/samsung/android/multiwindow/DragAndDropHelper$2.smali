.class Lcom/samsung/android/multiwindow/DragAndDropHelper$2;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 178
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 181
    sget-object p1, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    new-instance p1, Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$2$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$2;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p2}, Lcom/samsung/android/multiwindow/IDragAndDropServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$302(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropServer;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$300(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object v0

    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$500(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$600(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$700(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I

    move-result v3

    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$800(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$900(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->bind(Landroid/os/IBinder;Landroid/graphics/Bitmap;III)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$300(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/IDragAndDropServer;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 196
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$200(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;->this$0:Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->access$200(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 204
    sget-object p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string p1, "onServiceDisconnected()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
