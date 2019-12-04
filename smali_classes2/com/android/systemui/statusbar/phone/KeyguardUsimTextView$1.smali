.class Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUsimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    const-string v0, "KeyguardUsimTextView"

    const-string v1, "onRefreshCarrierInfo"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    const-string p1, "KeyguardUsimTextView"

    const-string p2, "onSimStateChanged"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method
