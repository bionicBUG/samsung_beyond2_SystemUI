.class public final synthetic Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/SecBatteryMeterDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SecBatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;->f$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$pLDUKm-C1axrzTEqzGuAkmbc05k;->f$0:Lcom/android/systemui/SecBatteryMeterDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
