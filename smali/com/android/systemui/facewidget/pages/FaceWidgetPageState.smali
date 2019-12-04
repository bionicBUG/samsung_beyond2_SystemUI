.class public final enum Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
.super Ljava/lang/Enum;
.source "FaceWidgetPageState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field public static final enum AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field public static final enum BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field public static final enum EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field public static final enum NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field public static final enum SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 24
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v2, 0x1

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 25
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v3, 0x2

    const-string v4, "EXPAND"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 26
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v4, 0x3

    const-string v5, "BIG"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 27
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v5, 0x4

    const-string v6, "AOD"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 22
    sget-object v6, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->$VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
    .locals 1

    .line 22
    const-class v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->$VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {v0}, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-object v0
.end method
