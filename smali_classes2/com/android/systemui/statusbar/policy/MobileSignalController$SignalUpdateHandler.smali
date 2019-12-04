.class Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 3398
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 3401
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x46

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3417
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 3414
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SignalStrength;

    invoke-virtual {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0

    .line 3407
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    .line 3408
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$3002(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    .line 3409
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 3410
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    .line 3404
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    :goto_0
    return-void
.end method
