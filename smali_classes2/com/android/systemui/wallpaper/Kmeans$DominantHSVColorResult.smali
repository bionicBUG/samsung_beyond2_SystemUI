.class public Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/Kmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DominantHSVColorResult"
.end annotation


# instance fields
.field public hsv_color:[F

.field public percentage:F


# direct methods
.method public constructor <init>([FF)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    .line 60
    iput p2, p0, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->percentage:F

    return-void
.end method
