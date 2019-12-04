.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "simple_status_bar"

    .line 58
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChanged:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSimpleStatusBarEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleStatusBarIconController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons()V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateAppearance()V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    :cond_0
    return-void
.end method
