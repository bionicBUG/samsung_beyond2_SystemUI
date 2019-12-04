.class Lcom/android/systemui/statusbar/phone/NavigationModeController$2;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 1

    .line 168
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$600(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$700(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 176
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$800(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSetupChanged()V
    .locals 1

    .line 185
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$600(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$700(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 193
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$800(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 2

    .line 202
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$900(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$300(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->access$1000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    return-void
.end method
