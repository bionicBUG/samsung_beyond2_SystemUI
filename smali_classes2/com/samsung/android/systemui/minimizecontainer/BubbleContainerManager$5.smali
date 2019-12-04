.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;
.super Landroid/content/BroadcastReceiver;
.source "BubbleContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 97
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    const-string p2, "BubbleContainerManager"

    if-eqz p1, :cond_0

    const-string p1, "[Manager] onReceive: ACTION_CONFIGURATION_CHANGED, Rebuild all"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$102(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    const p1, 0x13004

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 107
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Manager] onConfigurationChanged: diff=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Rebuild all"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    :cond_2
    return-void
.end method
