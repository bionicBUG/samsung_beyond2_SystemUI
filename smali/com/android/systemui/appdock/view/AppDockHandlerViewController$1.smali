.class Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;
.super Ljava/lang/Object;
.source "AppDockHandlerViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceProvisionedChanged() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-static {v1}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->access$000(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-static {v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->access$000(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;->this$0:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isAppDockSettingsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    return-void
.end method
