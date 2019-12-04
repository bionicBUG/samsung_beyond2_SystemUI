.class Lcom/android/keyguard/KeyguardCarrierView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierView;
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

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$102(Lcom/android/keyguard/KeyguardCarrierView;I)I

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$200(Lcom/android/keyguard/KeyguardCarrierView;I)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged(subId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",state="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardCarrierView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object p1, Lcom/android/keyguard/KeyguardCarrierView$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$000(Lcom/android/keyguard/KeyguardCarrierView;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardCarrierView;->access$300(Lcom/android/keyguard/KeyguardCarrierView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Hide OwnerCallButton"

    .line 110
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0, p3}, Lcom/android/keyguard/KeyguardCarrierView;->access$400(Lcom/android/keyguard/KeyguardCarrierView;Z)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->access$000(Lcom/android/keyguard/KeyguardCarrierView;)V

    :goto_0
    return-void
.end method
