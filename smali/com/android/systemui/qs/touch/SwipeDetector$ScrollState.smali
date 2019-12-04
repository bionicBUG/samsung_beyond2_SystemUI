.class final enum Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;
.super Ljava/lang/Enum;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/touch/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

.field public static final enum DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

.field public static final enum IDLE:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

.field public static final enum SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    .line 68
    new-instance v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    const/4 v2, 0x1

    const-string v3, "DRAGGING"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    const/4 v3, 0x2

    const-string v4, "SETTLING"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    .line 66
    sget-object v4, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->$VALUES:[Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;
    .locals 1

    .line 66
    const-class v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->$VALUES:[Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    return-object v0
.end method
