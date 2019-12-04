.class public abstract Landroid/app/enterprise/EnterpriseVpnConnectionBase;
.super Ljava/lang/Object;
.source "EnterpriseVpnConnectionBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/EnterpriseVpnConnectionBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public host:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Landroid/app/enterprise/EnterpriseVpnConnectionBase$1;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnConnectionBase$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/EnterpriseVpnConnectionBase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method
