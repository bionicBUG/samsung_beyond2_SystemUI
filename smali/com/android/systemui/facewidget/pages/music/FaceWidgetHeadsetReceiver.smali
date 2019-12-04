.class public Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceWidgetHeadsetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceWidgetHeadsetReceiver"


# instance fields
.field private mOnHeadsetListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;


# direct methods
.method private updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 103
    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBTHeadSetConnectionInfo() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;

    if-eqz p0, :cond_2

    .line 108
    invoke-interface {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;

    if-eqz p0, :cond_2

    .line 113
    invoke-interface {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-object p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->TAG:Ljava/lang/String;

    const-string p1, "onReceive() return : sticky broadcast"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->updateHeadSetConnectionInfo(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 83
    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHeadSetDeviceInfo() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;

    if-eqz p0, :cond_2

    .line 88
    invoke-interface {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;

    if-eqz p0, :cond_2

    .line 93
    invoke-interface {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetHeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    :cond_2
    :goto_0
    return-void
.end method
