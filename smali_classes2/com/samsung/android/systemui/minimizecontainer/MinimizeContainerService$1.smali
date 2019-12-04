.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;
.super Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;
.source "MinimizeContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(IIILandroid/graphics/Rect;)V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MinimizeContainerService] IMultiWindowCallback_onAnimationEnd: taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", taskBounds="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    .line 97
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "[MinimizeContainerService] IMultiWindowCallback_onStateChanged: non-default"

    .line 98
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 p2, 0xf

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(II)V

    return-void
.end method

.method public onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V
    .locals 6

    .line 50
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MinimizeContainerService] IMultiWindowCallback_onStateChanged: mTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p5, :cond_2

    .line 55
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "[MinimizeContainerService] IMultiWindowCallback_onStateChanged: non-default"

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    if-eq p6, p1, :cond_4

    const/4 p1, 0x2

    if-eq p6, p1, :cond_3

    const/4 p1, 0x3

    if-eq p6, p1, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 p1, 0xe

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(II)V

    goto :goto_0

    .line 66
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-virtual {p1}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p5, 0x80

    invoke-virtual {p1, p3, p5, p4}, Landroid/content/pm/PackageManager;->getActivityInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;IZ)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 p2, 0xd

    .line 76
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method
