.class Lcom/android/keyguard/KeyguardDirectionLockView$8;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1274
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    .line 1272
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1275
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$8;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2600(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    return-void
.end method
