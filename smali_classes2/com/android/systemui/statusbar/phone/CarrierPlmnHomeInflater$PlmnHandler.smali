.class Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;
.super Landroid/os/Handler;
.source "CarrierPlmnHomeInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlmnHandler"
.end annotation


# instance fields
.field private empty:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->empty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setHideTimer$0$CarrierPlmnHomeInflater$PlmnHandler()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->hideStatusBarCarrierLabel()V

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->empty:Z

    return-void
.end method

.method public setHideTimer()V
    .locals 3

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->empty:Z

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierPlmnHomeInflater$PlmnHandler$loe2TLYWFC1DB2vf5L51CtnMCFw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierPlmnHomeInflater$PlmnHandler$loe2TLYWFC1DB2vf5L51CtnMCFw;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->empty:Z

    :cond_0
    return-void
.end method
