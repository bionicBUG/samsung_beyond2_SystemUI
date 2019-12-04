.class Lcom/android/systemui/statusbar/policy/NetspeedView$2;
.super Landroid/content/BroadcastReceiver;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "networkInfo"

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_2

    .line 121
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 122
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_0

    .line 123
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 125
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$702(Z)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$702(Z)Z

    .line 130
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChange - mVpnConnected = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mActiveInterface = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkSpeedView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
