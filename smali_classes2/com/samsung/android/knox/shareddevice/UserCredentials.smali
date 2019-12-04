.class public Lcom/samsung/android/knox/shareddevice/UserCredentials;
.super Ljava/lang/Object;
.source "UserCredentials.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/shareddevice/UserCredentials;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field domainName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/knox/shareddevice/UserCredentials$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/shareddevice/UserCredentials$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

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

    .line 47
    iget-object p2, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/samsung/android/knox/shareddevice/UserCredentials;->domainName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
