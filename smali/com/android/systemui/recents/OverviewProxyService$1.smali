.class Lcom/android/systemui/recents/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$stopScreenPinning$1()V
    .locals 2

    .line 200
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to stop screen pinning"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 2

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 418
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher called sysui with invalid user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverviewProxyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addGestureInterceptWindow(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$zOqbj4kXskUwzvE4IAmLAJunDs4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$zOqbj4kXskUwzvE4IAmLAJunDs4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public broadcastHardKeyIntent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$YeUlb8Zzf05Zksh8bCfKn0erRzE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$YeUlb8Zzf05Zksh8bCfKn0erRzE;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    const-string v0, "getNonMinimizedSplitScreenSecondaryBounds"

    .line 297
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public hasTaskLockDB()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->hasTaskLockDB()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public injectKey(I)V
    .locals 5

    const-string v0, "injectKey"

    .line 451
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 457
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v4, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 458
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 457
    invoke-interface {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    .line 460
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;-><init>()V

    .line 461
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v2, p1, p0}, Lcom/android/systemui/statusbar/phone/util/KeyInjector;->inject(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public synthetic lambda$addGestureInterceptWindow$13$OverviewProxyService$1(III)V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_WIDTH:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_HEIGHT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 521
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_INTERCEPT_WINDOW_GRAVITY:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 522
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 518
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$broadcastHardKeyIntent$12$OverviewProxyService$1(I)V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BROADCAST_HARD_KEY_INTENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_HARD_KEY_INTENT_KEY_CODE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 507
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$moveHintVI$11$OverviewProxyService$1(IIJ)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_ID:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_MOVE_DISTANCE:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 496
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_MOVE_DURATION:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 497
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 493
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$onAssistantGestureCompletion$7$OverviewProxyService$1(F)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$600(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method public synthetic lambda$onAssistantProgress$6$OverviewProxyService$1(F)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method public synthetic lambda$onOverviewShown$4$OverviewProxyService$1(Z)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onStatusBarMotionEvent$2$OverviewProxyService$1(Landroid/view/MotionEvent;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1002(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1002(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 233
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$removeGestureInterceptWindow$14$OverviewProxyService$1()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 533
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 532
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$resetHintVI$9$OverviewProxyService$1()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 472
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 471
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$setNavBarButtonAlpha$5$OverviewProxyService$1(FZ)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;FZ)V

    return-void
.end method

.method public synthetic lambda$startAssistant$8$OverviewProxyService$1(Landroid/os/Bundle;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic lambda$startHintVI$10$OverviewProxyService$1(I)V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_GESTURE_HINT_ID:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 483
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 481
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    return-void
.end method

.method public synthetic lambda$startScreenPinning$0$OverviewProxyService$1(I)V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method

.method public loadLockedTasks()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 432
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/tasklockutil/TaskLockDbHelper;->getTaskLockAllAsTaskLockInfo()Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    const-string v0, "monitorGestureInput"

    .line 372
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 375
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 378
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0

    .line 379
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "extra_input_monitor"

    .line 380
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public moveHintVI(IIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$Toq2TMDsjbym7OVQKwPqh_VeKOo;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;IIJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 2

    const-string v0, "notifyAccessibilityButtonClicked"

    .line 389
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 4

    const-string v0, "notifyAccessibilityButtonLongClicked"

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 408
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10008000

    .line 409
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 4

    const-string v0, "onAssistantGestureCompletion"

    .line 346
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$HAkY0KGHUHzLhPvJ8yVUB3VnkYU;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$HAkY0KGHUHzLhPvJ8yVUB3VnkYU;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onAssistantProgress(F)V
    .locals 4

    const-string v0, "onAssistantProgress"

    .line 333
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ThcRnqU7jG-XhWGA-EMyxMRPnp8;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ThcRnqU7jG-XhWGA-EMyxMRPnp8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onOverviewShown(Z)V
    .locals 4

    const-string v0, "onOverviewShown"

    .line 280
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$PpV0iFvtUAK31A05l-QYxG4QBxM;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$PpV0iFvtUAK31A05l-QYxG4QBxM;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onSplitScreenInvoked()V
    .locals 3

    const-string v0, "onSplitScreenInvoked"

    .line 264
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p0, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onDockedFirstAnimationFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "onStatusBarMotionEvent"

    .line 212
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/4 v2, 0x1

    .line 236
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public removeGestureInterceptWindow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$8I3e49WRsrTTLCpnl7BY5fOZSr4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$8I3e49WRsrTTLCpnl7BY5fOZSr4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public resetHintVI()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$RjoZhC4gQ--zEWnMU0Iyfawforc;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$RjoZhC4gQ--zEWnMU0Iyfawforc;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public restoreTouchEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;->KEYS_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;

    .line 542
    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 541
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 4

    const-string v0, "setNavBarButtonAlpha"

    .line 314
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$202(Lcom/android/systemui/recents/OverviewProxyService;F)F

    .line 320
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ponbkRY3xkHBd5y3BY2Qppv8kjo;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ponbkRY3xkHBd5y3BY2Qppv8kjo;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "startAssistant"

    .line 359
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public startHintVI(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$AC-jeh4sikdwsOLfKHJ-V8ZB-uA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$AC-jeh4sikdwsOLfKHJ-V8ZB-uA;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public startScreenPinning(I)V
    .locals 4

    const-string/jumbo v0, "startScreenPinning"

    .line 174
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$gf7wUE1qIRz6uZ2klN6hqV9xFfM;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$gf7wUE1qIRz6uZ2klN6hqV9xFfM;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public stopScreenPinning()V
    .locals 3

    const-string/jumbo v0, "stopScreenPinning"

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 198
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    sget-object v2, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$WjFAUijOf0iWbjyxz5nDkhLz-xA;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$WjFAUijOf0iWbjyxz5nDkhLz-xA;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
