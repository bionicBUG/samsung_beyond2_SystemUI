.class public final synthetic Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/BatteryMeterView$2;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;->f$0:Lcom/android/systemui/BatteryMeterView$2;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;->f$0:Lcom/android/systemui/BatteryMeterView$2;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$2$qrEIaObIXjSnEsm61K4h_IfoiUM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/BatteryMeterView$2;->lambda$onUserSwitched$0$BatteryMeterView$2(I)V

    return-void
.end method
