.class Lcom/android/keyguard/KeyguardDirectionLockView$1;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 157
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$100(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$200(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    return-void
.end method
