.class public abstract Lcom/android/systemui/sensor/SensorController;
.super Ljava/lang/Object;
.source "SensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensor/SensorController$SensorListener;,
        Lcom/android/systemui/sensor/SensorController$SensorInfo;
    }
.end annotation


# instance fields
.field private mSensorInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/sensor/SensorController$SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    const-string v0, "sensor"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    new-instance p1, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/sensor/SensorController$SensorInfo;-><init>(Lcom/android/systemui/sensor/SensorController$1;)V

    const/4 v0, 0x1

    .line 70
    iput v0, p1, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensorType:I

    .line 71
    iget-object v1, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10036

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected isRegistered(I)Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-eqz p0, :cond_0

    .line 125
    iget-boolean p0, p0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SensorController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/sensor/SensorController;->onTrigger(Landroid/hardware/TriggerEvent;)V

    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 1

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrigger="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(I)Z
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v1, 0x0

    const-string v2, "SensorController"

    if-eqz v0, :cond_3

    .line 81
    iget-object v3, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v4, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-eqz v4, :cond_1

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register - already registered sensortype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "register - requestTriggerSensor return false"

    .line 92
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "register"

    .line 96
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 98
    iput-boolean p0, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return p0

    .line 82
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register - not supported sensortype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unregister(I)Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v1, 0x0

    const-string v2, "SensorController"

    if-eqz v0, :cond_2

    .line 104
    iget-object v3, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-nez v3, :cond_1

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregister - already unregistered sensortype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string/jumbo p0, "unregister"

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    const/4 p0, 0x1

    return p0

    .line 105
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregister - not supported sensortype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
