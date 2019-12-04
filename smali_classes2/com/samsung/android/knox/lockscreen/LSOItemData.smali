.class public abstract Lcom/samsung/android/knox/lockscreen/LSOItemData;
.super Ljava/lang/Object;
.source "LSOItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/lockscreen/LSOItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field private bg_color:I

.field private gravity:I

.field private height:I

.field private itemId:Ljava/lang/String;

.field private modifiedFields:I

.field private pfd:Landroid/os/ParcelFileDescriptor;

.field private type:B

.field private weight:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 386
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 95
    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 96
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/16 p1, -0x63

    .line 97
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    .line 98
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    .line 101
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return-void
.end method

.method protected constructor <init>(BLandroid/os/Parcel;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    .line 107
    iput-byte p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 108
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 109
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 1

    .line 264
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    return-object v0
.end method

.method public getBgColor()I
    .locals 0

    .line 193
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 147
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    return p0
.end method

.method public getType()B
    .locals 0

    .line 114
    iget-byte p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    return p0
.end method

.method public getWeight()F
    .locals 0

    .line 152
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    return p0
.end method

.method public isFieldUpdated(I)Z
    .locals 0

    .line 291
    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected readByteFromParcel(Landroid/os/Parcel;I)B
    .locals 0

    .line 503
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected readFloatFromParcel(Landroid/os/Parcel;IF)F
    .locals 0

    .line 531
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/16 v0, -0x63

    const/4 v1, 0x2

    .line 472
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v1, 0x4

    .line 474
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readFloatFromParcel(Landroid/os/Parcel;IF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/4 v0, -0x1

    const/16 v1, 0x10

    .line 478
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v1, 0x20

    .line 480
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->readIntFromParcel(Landroid/os/Parcel;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v0, 0x40

    .line 482
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 485
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    :goto_0
    return-void
.end method

.method protected readIntFromParcel(Landroid/os/Parcel;II)I
    .locals 0

    .line 512
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method protected readStringFromParcel(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 0

    .line 540
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BG_Color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 558
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    .line 557
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 565
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 413
    iget-byte v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 414
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->modifiedFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->itemId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 416
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->width:I

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 417
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->height:I

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 418
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->weight:F

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;IF)V

    .line 419
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->bg_color:I

    const/16 v2, 0x10

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    .line 420
    iget v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->writeToParcel(Landroid/os/Parcel;II)V

    const/16 v0, 0x40

    .line 421
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->attrs:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 428
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IB)V
    .locals 0

    .line 441
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeByte(B)V

    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;IF)V
    .locals 0

    .line 455
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .locals 0

    .line 448
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    .line 462
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
