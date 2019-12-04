.class public final enum Lcom/sec/enterprise/firewall/Firewall$Protocol;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/Firewall$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/Firewall$Protocol;

.field public static final enum ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

.field public static final enum TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

.field public static final enum UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;

    const/4 v1, 0x0

    const-string v2, "TCP"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    .line 78
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;

    const/4 v2, 0x1

    const-string v3, "UDP"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    .line 79
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/enterprise/firewall/Firewall$Protocol;

    .line 76
    sget-object v4, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;
    .locals 1

    .line 76
    const-class v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/Firewall$Protocol;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/Firewall$Protocol;
    .locals 1

    .line 76
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/Firewall$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/Firewall$Protocol;

    return-object v0
.end method
