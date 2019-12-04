.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;
.super Landroid/os/Handler;
.source "SdpUtil.java"


# instance fields
.field final synthetic this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 282
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    check-cast v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    .line 286
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    iget p1, v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->state:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 288
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    goto :goto_0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
