.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelCarrierLabelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 1965
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V
    .locals 0

    .line 1965
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1971
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1973
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1984
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForSlot2(Ljava/lang/String;)V

    goto :goto_0

    .line 1981
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForSlot1(Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelInterface;->setTextForCommon(Ljava/lang/String;)V

    .line 1977
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$PanelCarrierLabelHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    :goto_0
    return-void
.end method
