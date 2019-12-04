.class public Lcom/samsung/android/knox/lockscreen/LSOImageView;
.super Landroid/widget/ImageView;
.source "LSOImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V
    .locals 4

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v0

    .line 47
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x40

    .line 49
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v1

    const-string v2, "android:maxWidth"

    .line 51
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v2, "android:maxHeight"

    .line 55
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    const/16 v1, 0x80

    .line 60
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    const/16 p1, 0x200

    .line 69
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 72
    :cond_3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method
