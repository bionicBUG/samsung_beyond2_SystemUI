.class Lcom/android/keyguard/KeyguardDirectionLockView$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/Looper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$2;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 170
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$2;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$300(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
