.class public Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;
.super Ljava/lang/Object;
.source "KnoxCustomWidgetItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCellX:I

.field private final mCellX_KEY:Ljava/lang/String;

.field private mCellY:I

.field private final mCellY_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mMoreItems:I

.field private final mMoreItems_KEY:Ljava/lang/String;

.field private mParent:Ljava/lang/String;

.field private final mParent_KEY:Ljava/lang/String;

.field private mSizeX:I

.field private final mSizeX_KEY:Ljava/lang/String;

.field private mSizeY:I

.field private final mSizeY_KEY:Ljava/lang/String;

.field private mWidgetId:I

.field private final mWidgetId_KEY:Ljava/lang/String;

.field private mWidgetType:I

.field private final mmWidgetType_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem$1;

    invoke-direct {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxCustomWidgetItem"

    .line 67
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    .line 70
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 73
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    .line 76
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 79
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 82
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 85
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    .line 88
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    .line 91
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 94
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mIntent:Landroid/content/Intent;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetType:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetId:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mParent:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellX:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellY:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeX:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeY:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mMoreItems:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;-><init>(Landroid/os/Parcel;)V

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

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgetType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 196
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 197
    iget-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mIntent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 198
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 201
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mWidgetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mParent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mCellY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mSizeY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomWidgetItem;->mMoreItems:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
