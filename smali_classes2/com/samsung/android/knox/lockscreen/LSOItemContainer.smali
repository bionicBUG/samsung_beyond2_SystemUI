.class public Lcom/samsung/android/knox/lockscreen/LSOItemContainer;
.super Lcom/samsung/android/knox/lockscreen/LSOItemData;
.source "LSOItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    }
.end annotation


# instance fields
.field private bgImagePath:Ljava/lang/String;

.field private childObj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    .line 114
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x4

    .line 124
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;-><init>(B)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    .line 128
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getBGImagePath()Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    return-object p0
.end method

.method public getNumItems()I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 238
    invoke-super {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    const/16 v0, 0x80

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readByteFromParcel(Landroid/os/Parcel;I)B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/16 v0, 0x100

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 250
    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    if-eqz v2, :cond_1

    .line 258
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "Parcel format exception"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContainerView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG_IMAGE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v2, v3, :cond_0

    const-string v2, "VERTICAL"

    goto :goto_0

    :cond_0
    const-string v2, "HORIZONTAL"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 276
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 215
    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->orientation:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    const/16 v1, 0x80

    .line 217
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IB)V

    const/16 v0, 0x100

    .line 221
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->bgImagePath:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->childObj:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 229
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
