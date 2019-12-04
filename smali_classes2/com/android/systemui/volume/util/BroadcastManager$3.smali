.class Lcom/android/systemui/volume/util/BroadcastManager$3;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerDisplayManagerStateAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$isDLNAEnabled:Ljava/util/function/Consumer;

.field final synthetic val$supportTvVolumeControl:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$supportTvVolumeControl:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$isDLNAEnabled:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3f4ab253

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x706b3984

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "BroadcastManager"

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "status"

    .line 87
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_4

    move v2, v3

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$isDLNAEnabled:Ljava/util/function/Consumer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/volume/util/LogWrapper;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive : SEM_ACTION_DLNA_STATUS_CHANGED = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "state"

    .line 81
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "isSupportDisplayVolumeControl"

    .line 82
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 83
    iget-object v1, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$supportTvVolumeControl:Ljava/util/function/Consumer;

    if-ne p1, v3, :cond_6

    if-eqz p2, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BroadcastManager;->access$000(Lcom/android/systemui/volume/util/BroadcastManager;)Lcom/android/systemui/volume/util/LogWrapper;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : SEM_WIFI_DISPLAY_SOURCE_STATE = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
