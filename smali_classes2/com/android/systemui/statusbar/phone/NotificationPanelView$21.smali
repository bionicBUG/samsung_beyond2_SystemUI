.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 4477
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFragmentViewCreated$0$NotificationPanelView$21(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_0

    .line 4495
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->initLasExpansionHeight()V

    .line 4497
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    :cond_0
    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1

    .line 4480
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    .line 4481
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V

    .line 4482
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 4483
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    .line 4484
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    .line 4485
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 4488
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$21$hOXbDTt1UaN8QGIw9O_GJMfTvTU;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelView$21$hOXbDTt1UaN8QGIw9O_GJMfTvTU;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4500
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsContainer(Landroid/view/ViewGroup;)V

    .line 4501
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    instance-of p1, p1, Lcom/android/systemui/qs/QSFragment;

    if-eqz p1, :cond_0

    .line 4502
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 4504
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanel;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel;

    .line 4505
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    .line 4508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getQsTransitionAnimator()Lcom/android/systemui/qs/SecQsTransitionAnimator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/SecQsTransitionAnimator;)Lcom/android/systemui/qs/SecQsTransitionAnimator;

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .line 4517
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-ne p2, p1, :cond_0

    .line 4518
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;

    :cond_0
    return-void
.end method
