.class Lcom/android/systemui/qs/tiles/MobileDataTile$20;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string/jumbo v2, "volte"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "epdg"

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1502(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 664
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preciseCall state changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isVOLteCall : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_2
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service state changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$20;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
