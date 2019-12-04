.class public Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsImplementation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideRecentApps(ZZ)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string p2, "Failed to send overview hide event to launcher."

    .line 95
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public synthetic lambda$toggleRecentApps$0$OverviewProxyRecentsImpl()V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyRecentsImpl"

    const-string v1, "Cannot send toggle recents through proxy service."

    .line 113
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$toggleRecentApps$1$OverviewProxyRecentsImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(Landroid/content/Context;Lcom/android/systemui/SysUiServiceProvider;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    .line 64
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "trust"

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 66
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->registerPluginListener()V

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string v0, "Failed to send overview show event to launcher."

    .line 80
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .locals 6

    .line 137
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 140
    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 141
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v0, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    const/4 p3, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-interface {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_2

    .line 154
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    :cond_2
    if-eqz p3, :cond_3

    .line 159
    iget-object v2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v0

    .line 161
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v5

    :goto_2
    if-eqz p3, :cond_8

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    .line 165
    iget-boolean v2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v2, :cond_7

    .line 166
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->onRecentsDrawn()V

    :cond_6
    return v5

    .line 179
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_8
    return v0
.end method

.method public toggleRecentApps()V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
