.class public Landroid/app/enterprise/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public roamingProtocol:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/app/enterprise/ApnSettings$1;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettings$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    const-string v0, ""

    .line 45
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 90
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 110
    iput v1, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    const-string v0, "IP"

    .line 116
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    const-string v0, ""

    .line 45
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    const/4 v1, -0x1

    .line 85
    iput v1, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 90
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 110
    iput v1, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    const-string v0, "IP"

    .line 116
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/ApnSettings$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/app/enterprise/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 143
    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget p2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget p2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Landroid/app/enterprise/ApnSettings;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Landroid/app/enterprise/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
