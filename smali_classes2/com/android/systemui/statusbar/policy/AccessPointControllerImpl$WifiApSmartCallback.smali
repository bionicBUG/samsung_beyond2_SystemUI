.class Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApSmartCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiApSmartCallback`s onStateChanged() : mhsMac -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;ILjava/lang/String;)V

    return-void
.end method
