.class public final enum Lcom/sec/enterprise/firewall/Firewall$PortLocation;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/Firewall$PortLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/Firewall$PortLocation;

.field public static final enum ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

.field public static final enum LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

.field public static final enum REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    const/4 v1, 0x0

    const-string v2, "REMOTE"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    .line 69
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    const/4 v2, 0x1

    const-string v3, "LOCAL"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    .line 70
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    .line 67
    sget-object v4, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;
    .locals 1

    .line 67
    const-class v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/Firewall$PortLocation;
    .locals 1

    .line 67
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/Firewall$PortLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    return-object v0
.end method
