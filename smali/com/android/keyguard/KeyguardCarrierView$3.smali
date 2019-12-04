.class Lcom/android/keyguard/KeyguardCarrierView$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardCarrierView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x749e82b0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x290a5660

    if-eq p2, v0, :cond_1

    const v0, -0x1423ea3e

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_1
    const-string p2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string p2, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$700(Lcom/android/keyguard/KeyguardCarrierView;)V

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$800(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_2

    .line 148
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$600(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_2

    .line 145
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$500(Lcom/android/keyguard/KeyguardCarrierView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-interface {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_2
    return-void
.end method
