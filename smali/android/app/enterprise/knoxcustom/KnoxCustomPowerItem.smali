.class public Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
.super Ljava/lang/Object;
.source "KnoxCustomPowerItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mIcon_KEY:Ljava/lang/String;

.field private mId:I

.field private final mId_KEY:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentAction:I

.field private final mIntentAction_KEY:Ljava/lang/String;

.field private final mIntent_KEY:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private final mText_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem$1;

    invoke-direct {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxCustomPowerItem"

    .line 67
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->TAG:Ljava/lang/String;

    const-string v0, "ID"

    .line 70
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mId_KEY:Ljava/lang/String;

    const-string v0, "NAME"

    .line 72
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIcon_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 75
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "INTENT_ACTION"

    .line 77
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntentAction_KEY:Ljava/lang/String;

    const-string v0, "TEXT"

    .line 80
    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mText_KEY:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntent:Landroid/content/Intent;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntentAction:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mId:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mText:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    new-array v0, v0, [B

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 222
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;-><init>(Landroid/os/Parcel;)V

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

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntent:Landroid/content/Intent;

    .line 154
    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intentAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntentAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 164
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 165
    iget-object v0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntent:Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 169
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIntentAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object p2, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 179
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 181
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 182
    array-length p2, p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
