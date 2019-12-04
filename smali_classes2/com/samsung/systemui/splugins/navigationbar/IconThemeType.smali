.class public final enum Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
.super Ljava/lang/Enum;
.source "IconThemeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v1, 0x0

    const-string v2, "TYPE_DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 6
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v2, 0x1

    const-string v3, "TYPE_N_TINT"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 7
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v3, 0x2

    const-string v4, "TYPE_N_IMAGE"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 8
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v4, 0x3

    const-string v5, "TYPE_O"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 9
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v5, 0x4

    const-string v6, "TYPE_O_WITH_HINT"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 10
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v6, 0x5

    const-string v7, "TYPE_DEFAULT_WITH_HINT"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 4
    sget-object v7, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_TINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_N_IMAGE:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT_WITH_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v0
.end method
