.class public Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinXEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private adjust:F

.field private key:F

.field private pX:F

.field private pY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->key:F

    .line 360
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->adjust:F

    .line 361
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pX:F

    .line 362
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 367
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 368
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 369
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pX:F

    add-float/2addr p2, p1

    .line 370
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->key:F

    iget p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->adjust:F

    float-to-double v0, p3

    float-to-double p2, p2

    mul-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;->pY:F

    add-float/2addr p1, p0

    .line 371
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
