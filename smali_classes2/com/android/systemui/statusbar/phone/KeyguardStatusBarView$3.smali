.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishedWakingUp$0$KeyguardStatusBarView$3()V
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 2

    .line 929
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$3$j5Jc4vaBbwGj0tUBK2nEWGUjlC4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$3$j5Jc4vaBbwGj0tUBK2nEWGUjlC4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
