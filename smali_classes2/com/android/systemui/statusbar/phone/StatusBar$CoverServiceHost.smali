.class final Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/cover/CoverHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverServiceHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 6378
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V
    .locals 0

    .line 6378
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method


# virtual methods
.method public isCoverViewShowing()Z
    .locals 0

    .line 6461
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateCoverState$0$StatusBar$CoverServiceHost()V
    .locals 2

    .line 6436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 6437
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v1, :cond_0

    .line 6438
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6439
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 2

    .line 6451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverAppCovered: covered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar_COVER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6454
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 6385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3602(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    .line 6386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->setCoverState(Z)V

    .line 6388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    .line 6391
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 6393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 6394
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    .line 6403
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    .line 6404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverState: attach = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cover closed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", started="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StatusBar_COVER"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6406
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 6408
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3802(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6411
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_1

    .line 6415
    :cond_4
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 6417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-nez v1, :cond_6

    .line 6420
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6427
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverState: keyguard dismissed & notification panel collapsed by cover("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), dismissed state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6430
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eq v1, v0, :cond_8

    .line 6431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 6432
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 6433
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    if-nez v0, :cond_8

    .line 6435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CoverServiceHost$94Lgi7fcbwARpJjIAXJt2bKU6P4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CoverServiceHost$94Lgi7fcbwARpJjIAXJt2bKU6P4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6446
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$CoverServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/util/CoverUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/CoverUtil;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method
