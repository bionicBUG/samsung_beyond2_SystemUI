.class public final enum Lcom/android/systemui/volume/service/TestProtocol$Module;
.super Ljava/lang/Enum;
.source "TestProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/service/TestProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Module"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/service/TestProtocol$Module;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/service/TestProtocol$Module;

.field public static final enum global_actions:Lcom/android/systemui/volume/service/TestProtocol$Module;

.field public static final enum navigation_bar:Lcom/android/systemui/volume/service/TestProtocol$Module;

.field public static final enum none:Lcom/android/systemui/volume/service/TestProtocol$Module;

.field public static final enum volume_panel:Lcom/android/systemui/volume/service/TestProtocol$Module;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/volume/service/TestProtocol$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->none:Lcom/android/systemui/volume/service/TestProtocol$Module;

    .line 6
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    const/4 v2, 0x1

    const-string v3, "global_actions"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/volume/service/TestProtocol$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->global_actions:Lcom/android/systemui/volume/service/TestProtocol$Module;

    .line 7
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    const/4 v3, 0x2

    const-string v4, "volume_panel"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/volume/service/TestProtocol$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->volume_panel:Lcom/android/systemui/volume/service/TestProtocol$Module;

    .line 8
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    const/4 v4, 0x3

    const-string v5, "navigation_bar"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/volume/service/TestProtocol$Module;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->navigation_bar:Lcom/android/systemui/volume/service/TestProtocol$Module;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/volume/service/TestProtocol$Module;

    .line 4
    sget-object v5, Lcom/android/systemui/volume/service/TestProtocol$Module;->none:Lcom/android/systemui/volume/service/TestProtocol$Module;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$Module;->global_actions:Lcom/android/systemui/volume/service/TestProtocol$Module;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$Module;->volume_panel:Lcom/android/systemui/volume/service/TestProtocol$Module;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$Module;->navigation_bar:Lcom/android/systemui/volume/service/TestProtocol$Module;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$Module;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$Module;
    .locals 1

    .line 4
    const-class v0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/service/TestProtocol$Module;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/service/TestProtocol$Module;
    .locals 1

    .line 4
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocol$Module;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$Module;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/service/TestProtocol$Module;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/service/TestProtocol$Module;

    return-object v0
.end method
