.class Lcom/android/systemui/wallpaper/Kmeans$1;
.super Ljava/lang/Object;
.source "Kmeans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;)I
    .locals 0

    .line 182
    iget p0, p2, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->percentage:F

    iget p1, p1, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->percentage:F

    sub-float/2addr p0, p1

    const p1, 0x47c35000    # 100000.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 179
    check-cast p1, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    check-cast p2, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/Kmeans$1;->compare(Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;)I

    move-result p0

    return p0
.end method
