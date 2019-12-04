.class public Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperData"
.end annotation


# instance fields
.field mId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field mPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "path"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field mUpdateStyle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_style"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->this$0:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    .line 594
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    const-string p1, ""

    .line 595
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mPath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 598
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 637
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 642
    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 643
    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;

    .line 644
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    .line 645
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mPath:Ljava/lang/String;

    .line 647
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mId:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mId:Ljava/lang/Integer;

    .line 649
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    .line 651
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 608
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getUpdateStyle()Ljava/lang/Integer;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData$WallpaperData;->mUpdateStyle:Ljava/lang/Integer;

    return-object p0
.end method
