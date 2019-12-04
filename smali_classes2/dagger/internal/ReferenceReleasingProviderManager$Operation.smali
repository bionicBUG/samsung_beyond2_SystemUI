.class abstract enum Ldagger/internal/ReferenceReleasingProviderManager$Operation;
.super Ljava/lang/Enum;
.source "ReferenceReleasingProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/ReferenceReleasingProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldagger/internal/ReferenceReleasingProviderManager$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldagger/internal/ReferenceReleasingProviderManager$Operation;

.field public static final enum RELEASE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

.field public static final enum RESTORE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation$1;

    const/4 v1, 0x0

    const-string v2, "RELEASE"

    invoke-direct {v0, v2, v1}, Ldagger/internal/ReferenceReleasingProviderManager$Operation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    .line 96
    new-instance v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation$2;

    const/4 v2, 0x1

    const-string v3, "RESTORE"

    invoke-direct {v0, v3, v2}, Ldagger/internal/ReferenceReleasingProviderManager$Operation$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    const/4 v0, 0x2

    new-array v0, v0, [Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    .line 89
    sget-object v3, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RELEASE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    aput-object v3, v0, v1

    sget-object v1, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->RESTORE:Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    aput-object v1, v0, v2

    sput-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->$VALUES:[Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILdagger/internal/ReferenceReleasingProviderManager$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Ldagger/internal/ReferenceReleasingProviderManager$Operation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/internal/ReferenceReleasingProviderManager$Operation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 89
    const-class v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    return-object p0
.end method

.method public static values()[Ldagger/internal/ReferenceReleasingProviderManager$Operation;
    .locals 1

    .line 89
    sget-object v0, Ldagger/internal/ReferenceReleasingProviderManager$Operation;->$VALUES:[Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    invoke-virtual {v0}, [Ldagger/internal/ReferenceReleasingProviderManager$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/internal/ReferenceReleasingProviderManager$Operation;

    return-object v0
.end method
