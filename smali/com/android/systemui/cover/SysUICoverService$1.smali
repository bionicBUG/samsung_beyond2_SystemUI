.class Lcom/android/systemui/cover/SysUICoverService$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SysUICoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SysUICoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SysUICoverService;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SysUICoverService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {p1}, Lcom/android/systemui/cover/SysUICoverService;->access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {p1}, Lcom/android/systemui/cover/SysUICoverService;->access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/cover/SysUICoverService;->access$100(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService$1;->this$0:Lcom/android/systemui/cover/SysUICoverService;

    invoke-static {p0}, Lcom/android/systemui/cover/SysUICoverService;->access$200(Lcom/android/systemui/cover/SysUICoverService;)V

    :cond_0
    return-void
.end method
