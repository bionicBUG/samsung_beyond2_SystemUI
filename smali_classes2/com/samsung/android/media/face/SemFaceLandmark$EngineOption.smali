.class public final enum Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
.super Ljava/lang/Enum;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

.field public static final enum LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 663
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const/4 v1, 0x0

    const-string v2, "LANDMARK_13_KEYPOINTS"

    invoke-direct {v0, v2, v1, v1}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 668
    new-instance v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "LANDMARK_35_KEYPOINTS"

    invoke-direct {v0, v4, v3, v2}, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    new-array v0, v2, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    .line 658
    sget-object v2, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_13_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 673
    iput p3, p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    .line 658
    const-class v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    .line 658
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->$VALUES:[Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    invoke-virtual {v0}, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method
