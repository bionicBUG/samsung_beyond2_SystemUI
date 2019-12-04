.class public Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;
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
    name = "ParabolaEvaluator"
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
.field private key:F

.field private pX:F

.field private pY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->key:F

    .line 284
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pX:F

    .line 285
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 290
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 291
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 292
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pX:F

    add-float/2addr p2, p1

    .line 293
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->key:F

    mul-float/2addr p1, p2

    mul-float/2addr p1, p2

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;->pY:F

    add-float/2addr p1, p0

    .line 294
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
