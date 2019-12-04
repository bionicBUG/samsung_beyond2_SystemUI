.class public final enum Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;
.super Ljava/lang/Enum;
.source "TestProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/service/TestProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GlobalActionsApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum add_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum add_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum hide:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum none:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum remove_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum remove_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum reset:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

.field public static final enum show:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->none:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 20
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v2, 0x1

    const-string v3, "show"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->show:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 21
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v3, 0x2

    const-string v4, "hide"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->hide:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 22
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v4, 0x3

    const-string v5, "add_feature"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 23
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v5, 0x4

    const-string v6, "remove_feature"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 24
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v6, 0x5

    const-string v7, "add_condition"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 25
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v7, 0x6

    const-string v8, "remove_condition"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 26
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/4 v8, 0x7

    const-string v9, "reset"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    .line 18
    sget-object v9, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->none:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v9, v0, v1

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->show:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->hide:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_feature:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->add_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->remove_condition:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;
    .locals 1

    .line 18
    const-class v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/service/TestProtocol$GlobalActionsApi;

    return-object v0
.end method
