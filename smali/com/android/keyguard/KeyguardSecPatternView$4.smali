.class Lcom/android/keyguard/KeyguardSecPatternView$4;
.super Ljava/lang/Object;
.source "KeyguardSecPatternView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


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

    .line 1228
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 4

    .line 1231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    if-eqz p1, :cond_1

    .line 1233
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 1235
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 1237
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$4;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void
.end method
