.class Lcom/android/systemui/sensor/SensorController$SensorInfo;
.super Ljava/lang/Object;
.source "SensorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sensor/SensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorInfo"
.end annotation


# instance fields
.field bRegistered:Z

.field sensor:Landroid/hardware/Sensor;

.field sensorType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/sensor/SensorController$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;-><init>()V

    return-void
.end method
