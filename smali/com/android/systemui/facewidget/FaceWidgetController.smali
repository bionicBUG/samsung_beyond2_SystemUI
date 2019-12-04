.class public interface abstract Lcom/android/systemui/facewidget/FaceWidgetController;
.super Ljava/lang/Object;
.source "FaceWidgetController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public abstract disableBlurFlag(Ljava/lang/String;)V
.end method

.method public abstract dismissFaceWidgetFullScreen(Ljava/lang/String;)V
.end method

.method public abstract getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
.end method

.method public abstract getCachePage(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.end method

.method public abstract getClockGravity()I
.end method

.method public abstract getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
.end method

.method public abstract getCurrentClockType()I
.end method

.method public abstract getCurrentPagePkgName()Ljava/lang/String;
.end method

.method public abstract getCurrentPageRectExceptHolder()Landroid/graphics/Rect;
.end method

.method public abstract getLastLockClockType()I
.end method

.method public abstract getLockscreenPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
.end method

.method public abstract getMinHeight()I
.end method

.method public abstract getMinTopMargin(Z)I
.end method

.method public abstract getNotificationCount()I
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;
.end method

.method public abstract getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetOwnerInfoManager;
.end method

.method public abstract getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;
.end method

.method public abstract isClockOnly()Z
.end method

.method public abstract isContainerExpanded()Z
.end method

.method public abstract isCovered()Z
.end method

.method public abstract isEnabledBioUnlock()Z
.end method

.method public abstract isFaceWidgetFullScreenShowing()Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract onDismissFaceWidgetFullScreenStarted(Ljava/lang/String;)V
.end method

.method public abstract onPageSelected(Ljava/lang/String;)V
.end method

.method public abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onSetupCompleted()V
.end method

.method public abstract playOwnerInfoAnimation(F)V
.end method

.method public abstract reissueAllPages()V
.end method

.method public abstract removeRemoteViews(Ljava/lang/String;)V
.end method

.method public abstract requestAODState(ZZ)V
.end method

.method public abstract sendRequestRemoteViewsBroadcast()V
.end method

.method public abstract sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
.end method

.method public abstract setContainer(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
.end method

.method public abstract setCurrentClockType(I)V
.end method

.method public abstract setCurrentPage(Ljava/lang/String;)V
.end method

.method public abstract setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract setPageTransformer(Z)V
.end method

.method public abstract showFaceWidgetFullScreen(Ljava/lang/String;)V
.end method

.method public abstract updateClockPageLocation(F)V
.end method
