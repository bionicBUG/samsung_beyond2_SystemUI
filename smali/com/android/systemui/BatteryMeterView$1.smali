.class Lcom/android/systemui/BatteryMeterView$1;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatusBarBatteryColour()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/BatteryMeterView;->access$000(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/SecBatteryMeterDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->updateStatusBarBatteryColour()V

    return-void
.end method
