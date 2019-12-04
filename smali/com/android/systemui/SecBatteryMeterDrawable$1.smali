.class Lcom/android/systemui/SecBatteryMeterDrawable$1;
.super Landroid/os/Handler;
.source "SecBatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SecBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SecBatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-static {p1}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$000(Lcom/android/systemui/SecBatteryMeterDrawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-static {p1}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$100(Lcom/android/systemui/SecBatteryMeterDrawable;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/systemui/SecBatteryMeterDrawable;->access$102(Lcom/android/systemui/SecBatteryMeterDrawable;Z)Z

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SecBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/SecBatteryMeterDrawable;->postInvalidate()V

    :goto_0
    return-void
.end method
