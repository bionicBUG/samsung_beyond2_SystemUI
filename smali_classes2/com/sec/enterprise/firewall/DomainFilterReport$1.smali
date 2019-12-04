.class Lcom/sec/enterprise/firewall/DomainFilterReport$1;
.super Ljava/lang/Object;
.source "DomainFilterReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/DomainFilterReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/firewall/DomainFilterReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/firewall/DomainFilterReport;
    .locals 1

    .line 32
    new-instance p0, Lcom/sec/enterprise/firewall/DomainFilterReport;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/firewall/DomainFilterReport;-><init>(Landroid/os/Parcel;Lcom/sec/enterprise/firewall/DomainFilterReport$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/firewall/DomainFilterReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/firewall/DomainFilterReport;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/firewall/DomainFilterReport;
    .locals 0

    .line 36
    new-array p0, p1, [Lcom/sec/enterprise/firewall/DomainFilterReport;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/firewall/DomainFilterReport$1;->newArray(I)[Lcom/sec/enterprise/firewall/DomainFilterReport;

    move-result-object p0

    return-object p0
.end method
