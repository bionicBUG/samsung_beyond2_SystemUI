.class Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private final synthetic val$connStartTime:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iput-wide p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    sub-long/2addr v0, v2

    .line 63
    invoke-static {}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$0()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceConnected : Service connected. Elapsed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {p2}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-static {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected : Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V

    return-void
.end method
