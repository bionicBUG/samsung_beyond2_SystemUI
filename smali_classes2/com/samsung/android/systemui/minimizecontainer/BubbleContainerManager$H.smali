.class final Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;
.super Landroid/os/Handler;
.source "BubbleContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H$Duration;
    }
.end annotation


# instance fields
.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsRunningMinimizeContainerService:Z

.field private mIsRunningSmartPopupViewService:Z

.field private final mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

.field private final mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

.field private final mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/os/Looper;)V
    .locals 2

    .line 182
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 185
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 186
    new-instance p2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    const-string p2, "window"

    .line 188
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 189
    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mWindowManager:Landroid/view/WindowManager;

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningMinimizeContainerService:Z

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningSmartPopupViewService:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/os/Looper;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/os/Looper;)V

    return-void
.end method

.method private hasRunningService()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningMinimizeContainerService:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningSmartPopupViewService:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x1f

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "BUBBLE_CONTAINER_CLOSE_FULLSCREEN_MODE"

    return-object p0

    :pswitch_1
    const-string p0, "BUBBLE_CONTAINER_ROTATION_CHANGED"

    return-object p0

    :pswitch_2
    const-string p0, "BUBBLE_CONTAINER_REBUILD_ALL"

    return-object p0

    :pswitch_3
    const-string p0, "SMART_POPUP_VIEW_REMOVE_ITEM"

    return-object p0

    :pswitch_4
    const-string p0, "SMART_POPUP_VIEW_ADD_ITEM"

    return-object p0

    :pswitch_5
    const-string p0, "SMART_POPUP_VIEW_SERVICE_DESTROYED"

    return-object p0

    :pswitch_6
    const-string p0, "SMART_POPUP_VIEW_SERVICE_CREATED"

    return-object p0

    :pswitch_7
    const-string p0, "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT"

    return-object p0

    :pswitch_8
    const-string p0, "MINIMIZE_CONTAINER_ANIM_COMPLETED"

    return-object p0

    :pswitch_9
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ITEM"

    return-object p0

    :pswitch_a
    const-string p0, "MINIMIZE_CONTAINER_ADD_ITEM"

    return-object p0

    :pswitch_b
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_DESTROYED"

    return-object p0

    :pswitch_c
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_CREATED"

    return-object p0

    :cond_0
    const-string p0, "BUBBLE_CONTAINER_LOAD_ICON_COMPLETED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateDisplayFrame(Z)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->destroy()V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->destroy()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/view/IRotationWatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method getDisplayRotation()I
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 267
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    const-string v3, "[Manager] handleMessage: "

    const-string v4, "BubbleContainerManager"

    if-eqz v2, :cond_1

    .line 268
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 269
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 271
    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_1
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_9

    const-string v2, " failed, due to no taskId: "

    const-string v3, "[Manager] "

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 392
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 393
    check-cast p1, Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 395
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->requestLayout()V

    goto/16 :goto_1

    .line 373
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 374
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)I

    move-result v0

    if-eq v0, p1, :cond_a

    .line 376
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v1, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    const/16 v0, 0x23

    .line 377
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 379
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->forceCompleteAnimationOfAllItems()V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0, v6}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateDisplayFrame(Z)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyRotationChanged(II)V

    .line 387
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$302(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;I)I

    goto/16 :goto_1

    .line 359
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1, v5}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateDisplayFrame(Z)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->removeAllIconViews()V

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->destroy()V

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->init()V

    .line 365
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->rebuildAllItems()V

    goto/16 :goto_1

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 347
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto/16 :goto_1

    .line 349
    :cond_4
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 351
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed, due to no packageName: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 350
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 341
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->addItem(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;)V

    goto/16 :goto_1

    .line 334
    :pswitch_5
    iput-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningSmartPopupViewService:Z

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->hasRunningService()Z

    move-result p1

    if-nez p1, :cond_a

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->destroy()V

    goto/16 :goto_1

    .line 327
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->hasRunningService()Z

    move-result p1

    if-nez p1, :cond_5

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->init()V

    .line 330
    :cond_5
    iput-boolean v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningSmartPopupViewService:Z

    goto/16 :goto_1

    .line 315
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 317
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->animationCompleted(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto/16 :goto_1

    .line 319
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 320
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 303
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_1

    .line 305
    :cond_7
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    .line 307
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x10

    .line 295
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    .line 294
    invoke-virtual {p0, p1, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    .line 296
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 297
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->addItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_1

    .line 287
    :pswitch_a
    iput-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningMinimizeContainerService:Z

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->hasRunningService()Z

    move-result p1

    if-nez p1, :cond_a

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->destroy()V

    goto :goto_1

    .line 280
    :pswitch_b
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->hasRunningService()Z

    move-result p1

    if-nez p1, :cond_8

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->init()V

    .line 283
    :cond_8
    iput-boolean v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIsRunningMinimizeContainerService:Z

    goto :goto_1

    .line 369
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->iconLoadCompleted(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->getDisplayRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$302(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;I)I

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/view/IRotationWatcher$Stub;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->mWindowManager:Landroid/view/WindowManager;

    .line 207
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 206
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->access$800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method sendMessage(I)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendMessage(II)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
