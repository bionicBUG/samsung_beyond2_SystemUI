.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 2422
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 2426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setVisibility(I)V

    .line 2427
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    if-eqz v0, :cond_0

    .line 2428
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V

    :cond_0
    return-void
.end method
