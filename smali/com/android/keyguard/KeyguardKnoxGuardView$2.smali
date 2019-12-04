.class Lcom/android/keyguard/KeyguardKnoxGuardView$2;
.super Landroid/os/Handler;
.source "KeyguardKnoxGuardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Landroid/os/Looper;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$300(Lcom/android/keyguard/KeyguardKnoxGuardView;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$200(Lcom/android/keyguard/KeyguardKnoxGuardView;I)V

    :goto_0
    return-void
.end method
