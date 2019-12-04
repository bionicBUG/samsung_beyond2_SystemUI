.class Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;
.super Ljava/lang/Object;
.source "GyroDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/GyroDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;->this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;Lcom/android/systemui/wallpaper/tilt/GyroDetector$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;-><init>(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-eq v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    .line 60
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 61
    aget p1, p1, v2

    .line 63
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;->this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->access$100(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/GyroDetector$SensorListener;->this$0:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->access$100(Lcom/android/systemui/wallpaper/tilt/GyroDetector;)Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    move-result-object p0

    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;->onGyroChanged(FFF)V

    :cond_1
    return-void
.end method
