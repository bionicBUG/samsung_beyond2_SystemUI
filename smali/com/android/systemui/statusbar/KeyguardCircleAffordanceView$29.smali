.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 1573
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 1585
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 1576
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method
