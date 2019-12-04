.class Lcom/android/keyguard/KeyguardRMMView$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "KeyguardRMMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "result"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMView$2;->this$0:Lcom/android/keyguard/KeyguardRMMView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRMMView;->access$100(Lcom/android/keyguard/KeyguardRMMView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
