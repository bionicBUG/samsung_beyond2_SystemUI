.class Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->onChangedVisibilityOnKeyguard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/noticenter/NotiCenterPlugin$1;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin$1;Z)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;->this$1:Lcom/android/systemui/noticenter/NotiCenterPlugin$1;

    iput-boolean p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;->this$1:Lcom/android/systemui/noticenter/NotiCenterPlugin$1;

    iget-object v0, v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    iget-boolean v1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;->val$show:Z

    invoke-static {v0, v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$002(Lcom/android/systemui/noticenter/NotiCenterPlugin;Z)Z

    .line 45
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1$1;->this$1:Lcom/android/systemui/noticenter/NotiCenterPlugin$1;

    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$1;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$100(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    return-void
.end method
