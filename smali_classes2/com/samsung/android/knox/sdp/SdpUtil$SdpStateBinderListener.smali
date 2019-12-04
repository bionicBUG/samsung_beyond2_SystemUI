.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Landroid/os/ISdpListener$Stub;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# virtual methods
.method public onEngineRemoved()V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    return-void
.end method

.method public onStateChange(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 298
    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->getMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    return-void
.end method
