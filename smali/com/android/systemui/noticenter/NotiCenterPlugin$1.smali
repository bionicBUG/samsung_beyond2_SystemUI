.class Lcom/android/systemui/noticenter/NotiCenterPlugin$1;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;


# direct methods
.method constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedVisibilityOnKeyguard(Z)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$200(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
    .locals 0

    return-void
.end method

.method public onNotiStarPanelShowOnKeyguard(Z)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$100(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dispatchNotiStarPanelState(Z)V

    return-void
.end method
