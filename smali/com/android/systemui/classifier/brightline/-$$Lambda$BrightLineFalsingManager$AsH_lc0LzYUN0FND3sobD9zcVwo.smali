.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AsH_lc0LzYUN0FND3sobD9zcVwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AsH_lc0LzYUN0FND3sobD9zcVwo;->f$0:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AsH_lc0LzYUN0FND3sobD9zcVwo;->f$0:Landroid/hardware/SensorEvent;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$onSensorEvent$5(Landroid/hardware/SensorEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V

    return-void
.end method
