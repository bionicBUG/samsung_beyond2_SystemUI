.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

.field private final synthetic f$1:Landroid/hardware/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;Landroid/hardware/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    iput-object p2, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;->f$1:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$oXy7WDc2eJ5hwJ2IlTpSo0Sz-ms;->f$1:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$registerSensors$0$BrightLineFalsingManager(Landroid/hardware/Sensor;)V

    return-void
.end method
