.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;
.super Landroid/view/IRotationWatcher$Stub;
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

    .line 62
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2

    .line 65
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Manager] IRotationWatcher_onRotationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(II)V

    return-void
.end method
