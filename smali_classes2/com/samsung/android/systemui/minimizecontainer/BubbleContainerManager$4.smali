.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$4;
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

    .line 86
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 89
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "BubbleContainerManager"

    const-string p2, "[Manager] onReceive: ACTION_DATE_CHANGED, Rebuild all"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    return-void
.end method
