.class public Lcom/sec/enterprise/firewall/Firewall;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/firewall/Firewall$Protocol;,
        Lcom/sec/enterprise/firewall/Firewall$PortLocation;,
        Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;,
        Lcom/sec/enterprise/firewall/Firewall$Direction;,
        Lcom/sec/enterprise/firewall/Firewall$AddressType;
    }
.end annotation


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/sec/enterprise/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/sec/enterprise/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method
