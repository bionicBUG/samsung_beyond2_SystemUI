.class Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$1;->this$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    invoke-static {v0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->access$000(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
