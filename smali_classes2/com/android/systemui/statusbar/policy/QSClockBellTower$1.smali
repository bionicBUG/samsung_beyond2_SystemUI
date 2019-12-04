.class Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
