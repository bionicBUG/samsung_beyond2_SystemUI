.class public Lcom/samsung/android/media/face/SemFaceLandmark$Settings;
.super Ljava/lang/Object;
.source "SemFaceLandmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableProfileDetection:Z

.field private mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    return-void
.end method
