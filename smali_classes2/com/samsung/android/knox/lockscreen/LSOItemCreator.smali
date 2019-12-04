.class public final Lcom/samsung/android/knox/lockscreen/LSOItemCreator;
.super Ljava/lang/Object;
.source "LSOItemCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(BLandroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown ItemType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSO_LSOItemCreator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 202
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 194
    :cond_1
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 186
    :cond_2
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 178
    :cond_3
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 170
    :cond_4
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object p0
.end method
