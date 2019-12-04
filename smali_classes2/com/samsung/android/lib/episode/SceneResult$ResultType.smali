.class public final enum Lcom/samsung/android/lib/episode/SceneResult$ResultType;
.super Ljava/lang/Enum;
.source "SceneResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/episode/SceneResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/lib/episode/SceneResult$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ResultType;

.field public static final enum RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

.field public static final enum RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

.field public static final enum RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

.field public static final enum RESULT_UNDEFINED:Lcom/samsung/android/lib/episode/SceneResult$ResultType;


# instance fields
.field private mResultType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 157
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v1, 0x0

    const-string v2, "RESULT_OK"

    invoke-direct {v0, v2, v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    .line 158
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v2, 0x1

    const-string v3, "RESULT_FAIL"

    invoke-direct {v0, v3, v2, v3}, Lcom/samsung/android/lib/episode/SceneResult$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    .line 159
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v3, 0x2

    const-string v4, "RESULT_SKIP"

    invoke-direct {v0, v4, v3, v4}, Lcom/samsung/android/lib/episode/SceneResult$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    .line 160
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v4, 0x3

    const-string v5, "RESULT_UNDEFINED"

    invoke-direct {v0, v5, v4, v5}, Lcom/samsung/android/lib/episode/SceneResult$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_UNDEFINED:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    .line 156
    sget-object v5, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_UNDEFINED:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput-object p3, p0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->mResultType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult$ResultType;
    .locals 1

    .line 156
    const-class v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/lib/episode/SceneResult$ResultType;
    .locals 1

    .line 156
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->$VALUES:[Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v0}, [Lcom/samsung/android/lib/episode/SceneResult$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->mResultType:Ljava/lang/String;

    return-object p0
.end method
