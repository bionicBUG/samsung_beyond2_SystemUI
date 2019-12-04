.class public final enum Lcom/sec/enterprise/firewall/Firewall$Direction;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/Firewall$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/Firewall$Direction;

.field public static final enum ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

.field public static final enum INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

.field public static final enum OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Direction;

    const/4 v1, 0x0

    const-string v2, "INPUT"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    .line 51
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Direction;

    const/4 v2, 0x1

    const-string v3, "OUTPUT"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    .line 52
    new-instance v0, Lcom/sec/enterprise/firewall/Firewall$Direction;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/Firewall$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/enterprise/firewall/Firewall$Direction;

    .line 49
    sget-object v4, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;
    .locals 1

    .line 49
    const-class v0, Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/Firewall$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/Firewall$Direction;
    .locals 1

    .line 49
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->$VALUES:[Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/Firewall$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/Firewall$Direction;

    return-object v0
.end method
