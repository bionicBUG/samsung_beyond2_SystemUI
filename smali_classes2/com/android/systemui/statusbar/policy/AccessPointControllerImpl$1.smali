.class Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect failure reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessPointController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AccessPointController"

    const-string v0, "connect success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
