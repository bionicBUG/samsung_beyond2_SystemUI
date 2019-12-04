.class public Landroid/app/enterprise/EnterpriseVpnConnection;
.super Landroid/app/enterprise/EnterpriseVpnConnectionBase;
.source "EnterpriseVpnConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private certAuthMode:Ljava/lang/String;

.field public certCommonName:Ljava/lang/String;

.field public certHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    new-instance v0, Landroid/app/enterprise/EnterpriseVpnConnection$1;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnConnection$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/EnterpriseVpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Landroid/app/enterprise/EnterpriseVpnConnectionBase;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Landroid/app/enterprise/EnterpriseVpnConnectionBase;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->type:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->host:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->name:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 241
    iget-object p2, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object p0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
