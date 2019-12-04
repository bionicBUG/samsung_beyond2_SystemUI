.class public Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;
.super Ljava/lang/Object;
.source "MultiStarSystemProxyImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mIam:Landroid/app/IActivityManager;

.field private mIatm:Landroid/app/IActivityTaskManager;

.field private mIwm:Landroid/view/IWindowManager;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mAm:Landroid/app/ActivityManager;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDisplay:Landroid/view/Display;

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    .line 56
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    .line 57
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIatm:Landroid/app/IActivityTaskManager;

    .line 58
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method


# virtual methods
.method public closeFocusedTaskInSplitScreenMode()V
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    iget-object p0, p0, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 158
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    .line 163
    :goto_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz p0, :cond_2

    const-string p0, "1005"

    const-string v0, "Tap \u2018Close window\u201d button"

    .line 164
    invoke-static {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public createAppPairShortcut()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->createAppPairShortcut()V

    return-void
.end method

.method public getCornerGestureCustomValue()I
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getCornerGestureCustomValue()I

    move-result p0

    return p0
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-object v0

    .line 103
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 104
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getDockSide()I
    .locals 0

    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLongLiveApp()Ljava/lang/String;
    .locals 0

    .line 203
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->getLongLiveApp()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningTask(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0, p1, p3, p2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getStableInsets()Landroid/graphics/Rect;
    .locals 2

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 183
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasSoftNavigationBar()Z
    .locals 1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isScreenPinningActive()Z
    .locals 2

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIatm:Landroid/app/IActivityTaskManager;

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public maximizeDockedStack()V
    .locals 0

    .line 226
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    return-void
.end method

.method public setCornerGestureCustomValue(I)V
    .locals 0

    .line 236
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->setCornerGestureCustomValue(I)V

    .line 237
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCornerGestureCustomValue(I)V

    return-void
.end method

.method public setLongLiveApp(Ljava/lang/String;)V
    .locals 0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->setLongLiveApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreQMultiResumeInProcessEnabled(Z)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setPreQMultiResumeInProcessEnabled(Z)V

    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .locals 0

    return-void
.end method

.method public showRecentApps()V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    .line 138
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->showRecentApps(Z)V

    return-void
.end method

.method public supportsSplitScreenMultiWindow(Landroid/content/Context;)Z
    .locals 0

    .line 212
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public swapTasksInSplitScreenMode()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->swapTasksInSplitScreenMode()V

    return-void
.end method

.method public toggleFreeformWindowingMode()V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformWindowingMode()Z

    return-void
.end method

.method public toggleSplitScreen()V
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreen()V

    :cond_0
    return-void
.end method
