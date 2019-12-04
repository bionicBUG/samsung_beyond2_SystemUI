.class Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile$1;
.super Ljava/lang/Object;
.source "EnterpriseBillingProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .locals 1

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 212
    new-instance v0, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    invoke-direct {v0, p0}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;-><init>(Ljava/lang/String;)V

    .line 214
    const-class p0, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p0

    .line 215
    invoke-virtual {v0, p0}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->addApnsToProfile(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .locals 0

    .line 203
    new-array p0, p1, [Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile$1;->newArray(I)[Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object p0

    return-object p0
.end method
