.class Lcom/android/systemui/qs/bar/BrightnessBar$3;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/BrightnessBar;->initBrightnessDetail(Lcom/android/systemui/qs/QSPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAutoBrightness(Z)V
    .locals 3

    .line 198
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoBrightness() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->access$100(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->access$200(Lcom/android/systemui/qs/bar/BrightnessBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isLightSensorSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$3;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->access$100(Lcom/android/systemui/qs/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->setMode(Z)V

    :cond_1
    return-void
.end method
