.class public Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
.super Ljava/lang/Object;
.source "KnoxCustomStatusbarIconItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

.field private final mAttributeColour_KEY:Ljava/lang/String;

.field private mIcon:I

.field private final mIcon_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$1;

    invoke-direct {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxCustomStatusbarIconItem"

    .line 50
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->TAG:Ljava/lang/String;

    const-string v0, "ICON"

    .line 53
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "ATTRIBUTE_COLOUR"

    .line 56
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour_KEY:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mIcon:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    if-lez v0, :cond_0

    .line 231
    new-array v1, v0, [Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    iput-object v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    iget-object v4, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    new-instance v5, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    invoke-direct {v5, p0, v2, v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;-><init>(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attributeColour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 190
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mIcon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 195
    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 197
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    .line 200
    iget-object p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->mAttributeColour:[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    array-length p2, p0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    .line 201
    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getColour()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
