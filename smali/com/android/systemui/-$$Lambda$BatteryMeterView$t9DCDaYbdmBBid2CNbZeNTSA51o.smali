.class public final synthetic Lcom/android/systemui/-$$Lambda$BatteryMeterView$t9DCDaYbdmBBid2CNbZeNTSA51o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$t9DCDaYbdmBBid2CNbZeNTSA51o;->f$0:Lcom/android/systemui/BatteryMeterView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$BatteryMeterView$t9DCDaYbdmBBid2CNbZeNTSA51o;->f$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->lambda$onLocaleListChanged$1$BatteryMeterView()V

    return-void
.end method
