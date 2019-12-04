.class Lcom/android/systemui/facewidget/FaceWidgetContainer$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBootCompleted$0$FaceWidgetContainer$2()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$2$uYTTTvuZNK0PlGbHCABcQdG5IBM;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$2$uYTTTvuZNK0PlGbHCABcQdG5IBM;-><init>(Lcom/android/systemui/facewidget/FaceWidgetContainer$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->loadAllMetaData(Ljava/lang/Runnable;)V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->BOOT_COMPLETED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateFaceWidgetInSettingMenu()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1102(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$500(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    .line 273
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$600(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$700(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$800(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$900(Lcom/android/systemui/facewidget/FaceWidgetContainer;II)V

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 278
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1000(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1600(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1700(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 290
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1202(Z)Z

    .line 292
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->isKeyguardShowing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1200()Z

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    const-string p1, "servicebox_clock"

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateFaceWidgetRemoteViews(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateFaceWidgetRemoteViews() item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1400(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1500(Lcom/android/systemui/facewidget/FaceWidgetContainer;Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->reissueAllPages()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->setIsSystemUser(Z)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$300(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->resetPageKeyOrder()V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->reissueAllPages()V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateFaceWidgetInSettingMenu()V

    .line 254
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1300(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$1300(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoView;->updateTextView()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$500(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "FaceWidgetContainer"

    const-string v1, "refresh real clock style"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    :cond_1
    return-void
.end method
