.class public Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;
.super Ljava/lang/Object;
.source "FaceWidgetControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/facewidget/FaceWidgetController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final sInstance:Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;


# instance fields
.field private mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

.field private mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

.field private mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->sInstance:Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->sInstance:Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;

    return-object v0
.end method


# virtual methods
.method public disableBlurFlag(Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismissFaceWidgetFullScreen(Ljava/lang/String;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->dismissFaceWidgetFullScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "FaceWidget state:"

    .line 36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "  disabled\n"

    .line 40
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCachePage(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCachePage(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClockGravity()I
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getClockGravity()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x800003

    return p0
.end method

.method public getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentClockType()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentClockType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCurrentPagePkgName()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCurrentPageRectExceptHolder()Landroid/graphics/Rect;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentPageRectExceptHolder()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLastLockClockType()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getLastLockClockType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLockscreenPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getLockscreenPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    sget-object p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-object p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getMinHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMinTopMargin(Z)I
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getMinTopMargin(Z)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationCount()I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getNotificationCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    return-object p0
.end method

.method public declared-synchronized getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mOwnerInfoMgr:Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isClockOnly()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isClockOnly()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainerExpanded()Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isContainerExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCovered()Z
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isCovered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledBioUnlock()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isEnabledBioUnlock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceWidgetFullScreenShowing()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isFaceWidgetFullScreenShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDismissFaceWidgetFullScreenStarted(Ljava/lang/String;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->onDismissFaceWidgetFullScreenStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->onPageSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onSetupCompleted()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->onSetupCompleted()V

    :cond_0
    return-void
.end method

.method public playOwnerInfoAnimation(F)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->playOwnerInfoAnimation(F)V

    :cond_0
    return-void
.end method

.method public reissueAllPages()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->reissueAllPages()V

    :cond_0
    return-void
.end method

.method public removeRemoteViews(Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->removeRemoteViews(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public requestAODState(ZZ)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->requestAODState(ZZ)V

    :cond_0
    return-void
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast()V

    :cond_0
    return-void
.end method

.method public sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContainer(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    return-void
.end method

.method public setCurrentClockType(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentClockType(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPageTransformer(Z)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setPageTransformer(Z)V

    :cond_0
    return-void
.end method

.method public showFaceWidgetFullScreen(Ljava/lang/String;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->showFaceWidgetFullScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateClockPageLocation(F)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->mContainer:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->updateClockPageLocation(F)V

    :cond_0
    return-void
.end method
