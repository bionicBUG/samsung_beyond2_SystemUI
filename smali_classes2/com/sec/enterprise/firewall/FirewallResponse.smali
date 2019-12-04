.class public Lcom/sec/enterprise/firewall/FirewallResponse;
.super Ljava/lang/Object;
.source "FirewallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;,
        Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/firewall/FirewallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrorCode:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

.field private mMessage:Ljava/lang/String;

.field private mResult:Lcom/sec/enterprise/firewall/FirewallResponse$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$1;

    invoke-direct {v0}, Lcom/sec/enterprise/firewall/FirewallResponse$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    iput-object v0, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mResult:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    iput-object p1, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mErrorCode:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/firewall/FirewallResponse$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Landroid/os/Parcel;)V

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

    .line 103
    iget-object p2, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mResult:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 104
    iget-object p2, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/sec/enterprise/firewall/FirewallResponse;->mErrorCode:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
