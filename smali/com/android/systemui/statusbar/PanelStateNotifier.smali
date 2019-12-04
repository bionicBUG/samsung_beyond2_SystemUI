.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I = 0x0

.field private static mPanelExpandState:Z = false

.field private static mState:I = -0x1

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private static mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-void
.end method

.method private static isKeyguardState(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isShadeLockedState(I)Z
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isShadeState(I)Z
    .locals 1

    const/4 v0, 0x0

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$notify$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 115
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$notify$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 128
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 8

    .line 79
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 81
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 89
    :cond_1
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    const-string v0, "PanelStateNotifier"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const-string v4, "com.samsung.systemui.statusbar.ANIMATING"

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    const-string v4, "com.samsung.systemui.statusbar.EXPANDED"

    move v5, v3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_b

    const-string v4, "com.samsung.systemui.statusbar.COLLAPSED"

    goto :goto_0

    .line 105
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;

    invoke-direct {v4, p2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    if-eq p1, v3, :cond_8

    .line 123
    sget-boolean p2, Lcom/android/systemui/Rune;->NOTI_SUPPORT_PANEL_STATE_NOTIFIER_FOR_KDDI:Z

    if-eqz p2, :cond_5

    sget p2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeState(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 124
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.kddi.agent.action.STATUS_BAR_CONDITION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    .line 125
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    sget-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 135
    :cond_5
    sget-object p2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez p2, :cond_6

    const-string p2, "sem_statusbar"

    .line 137
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SemStatusBarManager;

    sput-object p2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 140
    :cond_6
    sget-object p2, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz p2, :cond_7

    .line 142
    invoke-virtual {p2, v5}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    .line 144
    :cond_7
    sput-boolean v5, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    .line 148
    :cond_8
    sget-boolean p2, Lcom/android/systemui/Rune;->APPDOCK_ENABLED:Z

    if-eqz p2, :cond_a

    .line 149
    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    move-result-object p0

    if-eq p1, v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    :cond_a
    return-void

    :cond_b
    const-string p0, "Invalid panel open state"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .locals 1

    .line 159
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 161
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .locals 1

    .line 166
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 170
    :cond_0
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    .line 175
    sget p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 176
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 178
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_2
    :goto_0
    return-void
.end method
