.class public Lcom/samsung/android/knox/custom/StatusbarIconItem;
.super Ljava/lang/Object;
.source "StatusbarIconItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/StatusbarIconItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

.field private final mAttributeColour_KEY:Ljava/lang/String;

.field private mIcon:I

.field private final mIcon_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StatusbarIconItem"

    .line 40
    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    .line 43
    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    if-lez v0, :cond_0

    .line 239
    new-array v1, v0, [Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    iput-object v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    iget-object v4, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    new-instance v5, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;-><init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/StatusbarIconItem$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attributeColour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    .line 187
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 196
    iget p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 201
    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 203
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    .line 206
    iget-object p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem;->mAttributeColour:[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    array-length p2, p0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    .line 207
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
