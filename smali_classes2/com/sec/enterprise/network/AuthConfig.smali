.class public Lcom/sec/enterprise/network/AuthConfig;
.super Ljava/lang/Object;
.source "AuthConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/network/AuthConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/sec/enterprise/network/AuthConfig$1;

    invoke-direct {v0}, Lcom/sec/enterprise/network/AuthConfig$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/network/AuthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/network/AuthConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/network/AuthConfig$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/enterprise/network/AuthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 127
    :cond_1
    const-class v2, Lcom/sec/enterprise/network/AuthConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 129
    :cond_2
    check-cast p1, Lcom/sec/enterprise/network/AuthConfig;

    .line 130
    iget-object v2, p0, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 131
    iget-object v2, p1, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 133
    :cond_3
    iget-object v3, p1, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 136
    iget-object v2, p1, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 138
    :cond_5
    iget-object v3, p1, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 140
    :cond_6
    iget v2, p0, Lcom/sec/enterprise/network/AuthConfig;->mPort:I

    iget v3, p1, Lcom/sec/enterprise/network/AuthConfig;->mPort:I

    if-eq v2, v3, :cond_7

    return v1

    .line 142
    :cond_7
    iget-object p0, p0, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    if-nez p0, :cond_8

    .line 143
    iget-object p0, p1, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    if-eqz p0, :cond_9

    return v1

    .line 145
    :cond_8
    iget-object p1, p1, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 114
    iget-object v3, p0, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 115
    iget v3, p0, Lcom/sec/enterprise/network/AuthConfig;->mPort:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 116
    iget-object p0, p0, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/enterprise/network/AuthConfig;->mPort:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/sec/enterprise/network/AuthConfig;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/sec/enterprise/network/AuthConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/sec/enterprise/network/AuthConfig;->mHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget p0, p0, Lcom/sec/enterprise/network/AuthConfig;->mPort:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
