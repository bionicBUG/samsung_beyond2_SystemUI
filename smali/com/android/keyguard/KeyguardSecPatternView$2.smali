.class Lcom/android/keyguard/KeyguardSecPatternView$2;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableDeviceWhenReachMaxFailed()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 278
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x2

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 279
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method
