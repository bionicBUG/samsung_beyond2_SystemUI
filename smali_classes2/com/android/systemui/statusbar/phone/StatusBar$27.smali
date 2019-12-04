.class Lcom/android/systemui/statusbar/phone/StatusBar$27;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateCoverWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 6490
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "StatusBar_COVER"

    const-string v1, "updateCoverWindow: START"

    .line 6493
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6494
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    move-result v1

    .line 6495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverWindow: keyguard dismissed by cover : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6498
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v6, 0xf

    if-ne v1, v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6500
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6503
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    .line 6506
    const-class v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 6507
    sget-boolean v6, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->isFaceWidgetFullScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v5, v2

    .line 6516
    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCoverWindow: settings NavigationBar visibility to "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6517
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6520
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    .line 6522
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 6529
    :cond_7
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 6530
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_a

    .line 6531
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p0

    invoke-virtual {v1, v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    goto :goto_2

    .line 6523
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 6524
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6525
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(IZ)V

    .line 6527
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed(Z)Z

    :cond_a
    :goto_2
    const-string p0, "updateCoverWindow: END"

    .line 6533
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
