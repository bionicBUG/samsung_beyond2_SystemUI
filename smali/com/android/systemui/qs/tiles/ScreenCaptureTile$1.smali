.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$100(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$200(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$102(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$100(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$200(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$102(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
