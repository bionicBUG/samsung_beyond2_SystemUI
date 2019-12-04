.class Lcom/android/keyguard/KeyguardRMMView$1;
.super Landroid/os/Handler;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRMMView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;Landroid/os/Looper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$1;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$1;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardRMMView;->access$000(Lcom/android/keyguard/KeyguardRMMView;I)V

    :goto_0
    return-void
.end method
