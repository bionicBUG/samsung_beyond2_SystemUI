.class Lcom/android/systemui/statusbar/phone/StatusBar$5;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateHideCameraState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$isSmartViewConnected:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->val$isSmartViewConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "StatusBar"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mOverlayManager.setEnabled start"

    .line 821
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mFirstHideCameraStateChecked:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " result:"

    const/4 v4, 0x1

    const-string v5, "com.samsung.systemui.hidenotch.withoutcornerround"

    if-nez v2, :cond_1

    .line 823
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->val$isSmartViewConnected:Z

    if-nez v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    invoke-interface {v2, v5, v1, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v2

    .line 826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOverlayManager - mFirstHideCameraStateChecking - isSmartViewConnected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->val$isSmartViewConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mFirstHideCameraStateChecked:Z

    .line 832
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    if-eqz v2, :cond_3

    .line 833
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->val$isSmartViewConnected:Z

    if-eqz v2, :cond_2

    .line 834
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    goto :goto_0

    .line 836
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    .line 839
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "com.samsung.systemui.hidenotch"

    if-eqz v2, :cond_5

    .line 840
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    if-eqz v2, :cond_4

    .line 841
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v2, v5, v4, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_2

    .line 844
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v2, v4, v5, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_2

    .line 848
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    if-eqz v2, :cond_6

    .line 849
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v2, v5, v4, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v2

    goto :goto_1

    .line 852
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v2, v4, v6, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$500(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-interface {v2, v5, v4, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v2

    .line 857
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    .line 859
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOverlayManager.setEnabled mOverlayEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mOverlayEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " user id:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSmartViewConnected:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->val$isSmartViewConnected:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHiddenInSmartViewConnection:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "Can\'t com.samsung.systemui.hidenotch overlay"

    .line 862
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHiddenInSmartViewConnection:Z

    :goto_3
    return-void
.end method
