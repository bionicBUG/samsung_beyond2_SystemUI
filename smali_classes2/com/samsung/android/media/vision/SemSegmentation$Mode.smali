.class public final enum Lcom/samsung/android/media/vision/SemSegmentation$Mode;
.super Ljava/lang/Enum;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vision/SemSegmentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/vision/SemSegmentation$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

.field public static final enum NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v1, 0x0

    const-string v2, "AUTO_WITH_FG_LOOP_MARKER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 31
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v2, 0x1

    const-string v3, "AUTO_WITH_BG_LOOP_MARKER"

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 35
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v3, 0x2

    const-string v4, "AUTO_WITH_FG_STROKE_MARKER"

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 39
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v4, 0x3

    const-string v5, "AUTO_WITH_BG_STROKE_MARKER"

    invoke-direct {v0, v5, v4}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 43
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v5, 0x4

    const-string v6, "MANUAL_WITH_FG_LOOP_MARKER"

    invoke-direct {v0, v6, v5}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 47
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v6, 0x5

    const-string v7, "MANUAL_WITH_BG_LOOP_MARKER"

    invoke-direct {v0, v7, v6}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 51
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v7, 0x6

    const-string v8, "MANUAL_WITH_FG_STROKE_MARKER"

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 55
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/4 v8, 0x7

    const-string v9, "MANUAL_WITH_BG_STROKE_MARKER"

    invoke-direct {v0, v9, v8}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 59
    new-instance v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/16 v9, 0x8

    const-string v10, "NONE"

    invoke-direct {v0, v10, v9}, Lcom/samsung/android/media/vision/SemSegmentation$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    .line 23
    sget-object v10, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v10, v0, v1

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->AUTO_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_LOOP_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_FG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->MANUAL_WITH_BG_STROKE_MARKER:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->NONE:Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Mode;->$VALUES:[Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    invoke-virtual {v0}, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/vision/SemSegmentation$Mode;

    return-object v0
.end method
