.class Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;
.super Ljava/lang/Object;
.source "FaceWidgetClockPage.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$300(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$300(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$300(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$300(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$400(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v3}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$500(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    .line 846
    :cond_2
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->canBeSkipOnWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    .line 853
    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onScreenTurnedOn() Do considerChangeClockView() because we lost the clock view"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0, v1}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$700(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;Z)V

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 860
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage$1;->this$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->access$600(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method
